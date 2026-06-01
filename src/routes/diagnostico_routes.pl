:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).

:- use_module('../utils/response').
:- use_module('../knowledge/rules/diagnostico').

:- http_handler(
  root(diagnostico),
  diagnostico_handler,
  [method(post)]
).

diagnostico_handler(Request) :-
  catch(
    diagnostico_handler_(Request),
    _Error,
    error_response('Error interno al procesar el diagnóstico', 500)
  ).

diagnostico_handler_(Request) :-
  http_read_json_dict(Request, Body),

  ( get_dict(sintomas, Body, SintomasText)
  ->
    maplist(atom_string, Sintomas, SintomasText),

    findall(
      _{
        enfermedad: Enfermedad,
        coincidencias: Coincidencias,
        score: Score
      },
      diagnostico(Sintomas, Enfermedad, Coincidencias, Score),
      Diagnosticos
    ),

    success_response(
      "Diagnóstico calculado correctamente",
      _{
        diagnosticos: Diagnosticos
      }
    )
  ; error_response('El campo sintomas es requerido', 400)
  ).