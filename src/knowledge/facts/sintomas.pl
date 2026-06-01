:- module(sintomas, [
  sintoma/2
]).

sintoma(gripe, fiebre).
sintoma(gripe, tos).
sintoma(gripe, dolor_cabeza).
sintoma(gripe, dolor_garganta).

sintoma(covid, fiebre).
sintoma(covid, tos).
sintoma(covid, perdida_olfato).
sintoma(covid, fatiga).