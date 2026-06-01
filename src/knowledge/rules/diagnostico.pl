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

  TotalSintomas > 0,
  Coincidencias > 0,

  Score is Coincidencias / TotalSintomas.