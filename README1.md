# Proyecto: Sistema de Selección de Cursos con Seriación (Prolog)

## Requisitos

- [SWI-Prolog](https://www.swi-prolog.org/)
- [Java 11+](https://adoptium.net/) + JPL (si usas la opción Java)
- O simplemente un navegador web (si usas la opción Tau-Prolog)

## Estructura

- `kb.pl`: Base de conocimiento con cursos, prerrequisitos y reglas.
- `Main.java`: Interfaz en Java que consulta la KB usando JPL.
- `index.html`: Interfaz web en JS usando Tau-Prolog.
- `README.md`: Este archivo.

## Cómo ejecutar

### Opción 1: Java + SWI-Prolog

1. Instalar SWI-Prolog y asegurarse de que JPL esté disponible.
2. Compilar:

   ```bash
   javac -cp ".:/usr/lib/swi-prolog/lib/jpl.jar" Main.java
