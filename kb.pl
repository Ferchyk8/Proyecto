% --- Definición de cursos ---
curso(matematicas1).
curso(matematicas2).
curso(fisica1).
curso(fisica2).
curso(programacion1).
curso(programacion2).
curso(ia).

% --- Seriación de cursos (prerrequisitos) ---
prerrequisito(matematicas2, matematicas1).
prerrequisito(fisica2, fisica1).
prerrequisito(programacion2, programacion1).
prerrequisito(ia, programacion2).
prerrequisito(ia, matematicas2).

% --- Registro dinámico de cursos aprobados ---
:- dynamic aprobado/2.
% aprobado(Alumno, Curso).

% --- Regla: un alumno puede inscribirse en un curso si cumple los prerrequisitos ---
puede_inscribirse(Alumno, Curso) :-
    curso(Curso),
    \+ aprobado(Alumno, Curso),
    forall(prerrequisito(Curso, Req), aprobado(Alumno, Req)).

% --- Marcar un curso como aprobado ---
aprobar(Alumno, Curso) :-
    curso(Curso),
    assertz(aprobado(Alumno, Curso)).