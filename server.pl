:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

:- consult('src/app.pl').

server(Port) :-
  http_server(http_dispatch, [port(Port)]).

:- initialization(main).

port_from_env(Port) :-
  catch(getenv('PORT', PortAtom), _, fail),
  catch(atom_number(PortAtom, Port), _, fail),
  !.

port_from_env(5000).

main :-
  port_from_env(Port),
  server(Port),
  format('Servidor iniciado en http://localhost:~w~n', [Port]),
  thread_get_message(_).


