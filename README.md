# App para idenficar victimas y tipos de violencia y guiarlas.
* Todo lo postulado en este documento puede ser modificado *
## proyecto para la asignatura INF318
    Se implementara una app para identificar victimas de violencia de diferentes tipos para proveerles una guia en cuanto a lo legal y contactarlas con organizaciones que puedan brindarles ayuda

## Integrantes:
    - Marthel Pedro Pozo Soliz
    - Miguel Aruquipa 

## Pasos en la implemantacion

### Base de conocimientos

    - Recibir asesoria ya que es un tema delicado
    - Obtener una base de conocimientos sobre los distintos tipos de violencia
    - Obtener una lista de organizaciones
    - Crear una lista de Leyes que respalden a las victimas
### Tecnico
    - Crear un motor que permita la rapida integracion de la app con la base de conocimientos
    - Pruebas de funciones del motor 
    - Crear la interfaz de la app
    - Prueba de la interfaz

## Respecto al motor
Se tendra la base de conocimientos en un archivo de texto plano con el formato CSV (comma separated values).:
> IdPregunta, IdTipo, Pregunta
Ejemplo: 
> DOM01, DOM, ¿Sintio temor de su pareja?

Se espera que el motor lea un archivo con la base de conocimientos y pueda retornar una lista de preguntas para que se renderizen en la interfaz


