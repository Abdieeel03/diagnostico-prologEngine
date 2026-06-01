:- use_module(utils/response).
:- use_module(knowledge/facts/enfermedades).
:- use_module(knowledge/facts/sintomas).
:- use_module(knowledge/rules/diagnostico).

:- consult('routes/health_routes.pl').
