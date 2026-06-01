# 📚️ 🧑‍⚕️ Motor del Sistema de Diagnostico Médico

Motor de diagnostico medico basado en Prolog. Expone una API HTTP para calcular diagnosticos a partir de sintomas y devolver resultados con puntaje de coincidencia.

## Requisitos

- SWI-Prolog 8.x o superior

## Ejecucion

Desde la raiz del proyecto:

```bash
swipl -s server.pl
```

El servidor inicia en `http://localhost:5000`.

## Endpoints

### GET /health

Verifica que el servicio este activo.

Respuesta esperada:

```json
{
  "success": true,
  "message": "Servidor Prolog funcionando correctamente",
  "data": {
    "service": "prolog-engine",
    "status": "ok"
  }
}
```

### POST /diagnostico

Calcula posibles diagnosticos segun sintomas.

Request body:

```json
{
  "sintomas": ["fiebre", "tos"]
}
```

Respuesta esperada:

```json
{
  "success": true,
  "message": "Diagnostico calculado correctamente",
  "data": {
    "diagnosticos": [
      {
        "enfermedad": "gripe",
        "coincidencias": 2,
        "score": 0.5
      }
    ]
  }
}
```

Errores comunes:

- `400`: falta el campo `sintomas` en el body.
- `500`: error interno al procesar el diagnostico.

## Logica de diagnostico

El motor compara los sintomas del usuario contra los sintomas conocidos de cada enfermedad. El puntaje se calcula como:

$$
score = \frac{coincidencias}{total\_sintomas\_enfermedad}
$$

Solo se devuelven enfermedades con al menos una coincidencia.

## Estructura del proyecto

```
server.pl
src/
  app.pl
  knowledge/
    facts/
      enfermedades.pl
      sintomas.pl
    rules/
      diagnostico.pl
  routes/
    diagnostico_routes.pl
    health_routes.pl
  utils/
    response.pl
```

## Notas

- Aún falta agregar lógica al motor de inteligencia.
