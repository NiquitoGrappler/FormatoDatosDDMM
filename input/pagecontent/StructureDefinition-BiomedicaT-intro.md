### Elementos Mandatorios y Must Support
<br>

El perfil presenta una serie de elementos de datos que siempre deben estar presentes en cada recurso que se genere desde este perfil. Estos elementos denominados como **Mandatorios** se pueden observar en el perfil con cardinalidad de valor inicial 1. Los elementos que deben ser Soportados, si la data esta presente en el recuso generado, se denominan (Must Support), y estos se expresan mediante la letra **S** en cada elemento que tiene esta categoría. Un elemento Must Support implica:

* El sistema que recibe un recurso con un elemento Must Support debe almacenarlo.
* El sistema que recibe un recurso con un elemento Must Support debe poder hacer procesamiento de este elemento.
* Un elemento Must Support no implica que sus rutas derivadas lo sea por herencia.
La definición formal del Perfil en la legueta Text Summary indica cuantos de estos elementos hay distribuidos como elementos o rutas de estos.
<br>

##### Cada Observación cuenta con:

1. Un Identificador
2. El estado de la observación (Status)
3. un código de observación (Observation.code) que defina lo que se está midiendo.
    * LOINC fue el sistema elegido para el código de observación porque se ajusta a la mayoría de los países, pero puede tratarse simplemente como un conjunto básico fijo de códigos comunes para comunicar los signos vitales básicos. Los implementadores que necesiten utilizar un sistema de códigos diferente deberán mapear a LOINC en consecuencia.
4. Un tiempo clinico relevante de la observación
5. Un paciente asociado (Observation.subject)
6. Un Dispositico asociado (Observation.device)
7. Cada medición de signos vitales tendrá un valor de resultado numérico y un código estándar de Unidades de Medida Unificadas (UCUM).