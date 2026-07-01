# AGENTS.md — diagnostico-prologEngine

Motor de inferencia basado en SWI-Prolog. Expone HTTP en :5000. Lee primero el `AGENTS.md` del repo padre para contexto global (arquitectura, contrato JSON, disclaimer médico).

## 1. Stack

- **SWI-Prolog 8.x+** (`swipl:9.2.2` en Docker).
- Sin gestor de dependencias: se usan sólo librerías estándar de SWI (`library(http/*)`, `library(lists)`).
- Sin framework web externo: servidor HTTP nativo con `library(http/thread_httpd)` + `library(http/http_dispatch)`.

## 2. Estructura

```
server.pl                → entrypoint (http_server en :5000)
src/
  app.pl                  → carga módulos (knowledge + routes)
  knowledge/
    facts/enfermedades.pl → hechos enfermedad/1 (catálogo)
    facts/sintomas.pl     → hechos sintoma/2 (enfermedad, sintoma)
    rules/diagnostico.pl  → regla diagnostico/4 (inferencia)
  routes/
    health_routes.pl      → GET /health
    diagnostico_routes.pl → POST /diagnostico
  utils/response.pl       → helpers JSON (success_response / error_response)
  tests/                  → carpeta para plunit (vacía por ahora)
Dockerfile                → swipl:9.2.2, HEALTHCHECK, CMD swipl -s server.pl
```

## 3. Convenciones Prolog

- Un módulo por archivo con `:- module(name, [exports]).`.
- Nombres de hechos en **español snake_case**: `enfermedad(gripe)`, `sintoma(gripe, fiebre)`. No traducir la KB.
- Identificadores nuevos (predicados, helpers) en **inglés** o **snake_case descriptivo**.
- Indentación: **2 espacios**.
- Handlers HTTP: usar `http_read_json_dict`/`reply_json_dict` y los helpers de `src/utils/response.pl` — nunca llamar a `reply_json_dict` directo desde un route.
- Facts en `knowledge/facts/`, reglas en `knowledge/rules/`, handlers en `routes/`, helpers en `utils/`. Respectar la separación.
- Toda predicada nueva que se exporte debe listarse en `[exports]` del `:- module`.

## 4. Endpoints

| Método | Ruta | Body | Respuesta |
|---|---|---|---|
| GET | `/health` | — | `{success:true, message, data:{service:"prolog-engine", status:"ok"}}` |
| POST | `/diagnostico` | `{"sintomas": ["fiebre","tos"]}` | `{success:true, message, data:{diagnosticos:[{enfermedad, coincidencias, score}]}}` |

Errores:
- `400` → falta `sintomas` en body (aplicado correctamente vía `error_response/2`).
- `500` → error interno.

## 5. Lógica de diagnóstico

`diagnostico(SintomasUsuario, Enfermedad, Coincidencias, Score)` en `src/knowledge/rules/diagnostico.pl`:

1. Itera todas las `enfermedad/1`.
2. `intersection/3` entre síntomas del usuario y los de la enfermedad.
3. `Score = (Coincidencias/TotalSíntomasEnfermedad + Coincidencias/TotalSíntomasUsuario) / 2`.
4. Sólo se devuelven enfermedades con `Coincidencias > 0`.
5. El orden llega por `findall` en `diagnostico_routes.pl`; el ordenamiento por score lo hace Python.

## 6. Gotchas (no reintroducir)

### Resueltos (no reintroducir)

1. ~~**`error_response/2` sin código HTTP**~~ — `src/utils/response.pl` ya define `error_response(Message, StatusCode)` que aplica `status(StatusCode)` en `reply_json_dict`. Los errores 400/500 se devuelven correctamente.
2. ~~**Dockerfile sin pinnear ni HEALTHCHECK**~~ — ya usa `swipl:9.2.2` y tiene `HEALTHCHECK` con `http_get('/health')`.

### Vigentes

1. **Documentación vs código del score**: el README del padre documenta `score = coincidencias/total_sintomas_enfermedad`, pero el código usa media tipo F1: `(coincidencias/total_enf + coincidencias/total_usuario) / 2`. Sincronizar documentación.
2. **Sin tests**: `src/tests/` está vacío. Plunit (`use_module(library(plunit))`) sería lo estándar.
3. **`server.pl`** mantiene el proceso con `thread_get_message(_)` — funciona pero no es la forma más robusta; captura limitada de señales.
4. **Match exacto**: no hay ponderación por severidad ni control de negaciones ("no tengo fiebre" lo cuenta como fiebre). El README lo admite: *"Aún falta agregar lógica al motor de inteligencia"*.

## 7. Cómo extender

- **Añadir enfermedad**: declarar `enfermedad(nueva_enf).` en `facts/enfermedades.pl` y al menos un `sintoma(nueva_enf, sintomo).` en `facts/sintomas.pl`. El átomlo del síntoma debe existir en el diccionario NLP de Python (`src/data/symptoms/*.py`).
- **Añadir síntoma known**: agregar `sintoma(enfermedad_existente, nuevo_sintomo).` y registrar keyword en Python.
- **Añadir endpoint**: crear handler en `routes/`, registrar con `:- http_handler(root(path), handler, [method(...)]).`, importar el módulo desde `src/app.pl`.
- **Añadir regla**: en `knowledge/rules/<area>.pl` con su propio `:- module(...)` y exportar.

## 8. Verificación

| Comando | Uso |
|---|---|
| `swipl -s server.pl` | arranque local (mantener corriendo; prueba con curl) |
| `curl -X POST http://localhost:5000/diagnostico -H "Content-Type: application/json" -d '{"sintomas":["tos","dolor_cabeza"]}' \| jq` | smoke test manual |
| `swipl -g "load_test_files([]),run_tests" -t halt` | correr plunit (cuando existan tests) |

No hay typecheck ni lint para Prolog.

## 9. Docker

`Dockerfile` actual:
```dockerfile
FROM swipl:9.2.2
WORKDIR /app
COPY . .
EXPOSE 5000
HEALTHCHECK --interval=15s --timeout=5s --start-period=10s --retries=3 \
  CMD swipl -g "use_module(library(http/http_client)), http_get('http://localhost:5000/health', _, [])" -t halt || exit 1
CMD ["swipl", "-s", "server.pl"]
```

Mejora pendiente: pinnear imagen por digest SHA para builds 100% reproducibles.

## 10. Reglas para agentes (específicas)

- No agregar comentarios en Prolog salvo que la lógica lo justifique.
- Mantener el contrato `{success, message, data}` en cada handler.
- No instanciar `enfermedad/1` o `sintoma/2` en archivos que no sean `facts/`; las reglas van en `rules/`.
- Toda respuesta visible debe reforzar que es orientación, no diagnóstico definitivo (lo hace Python vía LLM, aquí sólo se devuelven scores).
- Si modificas la fórmula del score, actualiza también el README y el `AGENTS.md` del padre §2.