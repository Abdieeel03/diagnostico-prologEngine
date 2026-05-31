:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

:- consult('src/app.pl').

server(Port) :- 
  http_server(http_dispatch, [port(Port)]).

:- initialization(main).

main :- 
  server(5000),
  writeln('Servidor iniciado en http://localhost:5000').


