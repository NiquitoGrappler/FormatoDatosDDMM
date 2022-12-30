### Ejemplos de uso en diferentes Escenarios
<br>

* Busqueda de Id de recurso por medio de algún parámetro de búsqueda, para busqueda de documentos o datos clínicos asociados al paciente.
<br>

### Elementos Mandatorios y Must Support
<br>

El perfil presenta una serie de elementos de datos que siempre deben estar presentes en cada recurso que se genere desde este perfil. Estos elementos denominados como **Mandatorios** se pueden observar en el perfil con cardinalidad de valor inicial 1. Los elementos que deben ser Soportados, si la data esta presente en el recuso generado, se denominan (Must Support), y estos se expresan mediante la letra **S** en cada elemento que tiene esta categoría. Un elemento Must Support implica:

* El sistema que recibe un recurso con un elemento Must Support debe almacenarlo.
* El sistema que recibe un recurso con un elemento Must Support debe poder hacer procesamiento de este elemento.
* Un elemento Must Support no implica que sus rutas derivadas lo sea por herencia.
La definición formal del Perfil en la legueta Text Summary indica cuantos de estos elementos hay distribuidos como elementos o rutas de estos.
<br>

### Notas Adicionales
<br>

Consideraciones para la implementación:

* Para el elemento name se agrega la extensión externa de 2o apellido 