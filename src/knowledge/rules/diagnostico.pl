:- module(diagnostico, [
  diagnostico/4
]).

:- use_module('../facts/enfermedades').
:- use_module('../facts/sintomas').

diagnostico(SintomasUsuario, Enfermedad, Coincidencias, Score) :-
  enfermedad(Enfermedad),

  findall(
    Sintoma,
    sintoma(Enfermedad, Sintoma),
    SintomasEnfermedad
  ),

  intersection(
    SintomasUsuario,
    SintomasEnfermedad,
    SintomasCoincidentes
  ),

  length(SintomasCoincidentes, Coincidencias),
  length(SintomasEnfermedad, TotalSintomas),
  length(SintomasUsuario, TotalUsuario),

  TotalSintomas > 0,
  TotalUsuario > 0,
  Coincidencias > 0,

  ScoreEnfermedad is Coincidencias / TotalSintomas,
  ScoreUsuario is Coincidencias / TotalUsuario,
  Score is (ScoreEnfermedad + ScoreUsuario) / 2.