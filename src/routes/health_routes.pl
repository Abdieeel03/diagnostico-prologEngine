:- use_module(library(http/http_dispatch)).
:- use_module('../utils/response').


:- http_handler(
    root(health),
    health_handler,
    []
).

health_handler(_Request) :-
  success_response(
    "Servidor Prolog funcionando correctamente",
    _{
      service: "prolog-engine",
      status: "ok"
    }
  ).
