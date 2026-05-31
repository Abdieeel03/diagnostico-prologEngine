:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).

:- http_handler(
    root(health),
    health_handler,
    []
).

health_handler(_Request) :-
    reply_json_dict(_{
        status: "ok",
        service: "prolog-engine"
    }).
