#### Ejemplos de uso en Diferentes Escenarios

* Búsqueda de Profesional de la Salud por RUN o por RNPI
* Determinación de Certificados que acredita el Prestador
* Determinación de especialidades que posee el prestador

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

Consideraciones para la implementación

* La Idetificación del Prestador individual puede ser:
    * Basada en RUN, identificación que es obligatoria. Para este slice se requiere un identifier.use = official
    * Basada en RNPI, identificación que no es obligatoria. Para este slice se requiere un identifier.use = secondary.
* Para el elemento name se agega la extensión externa de 2o apellido en donde la url de esta es http://hl7.org/fhir/StructureDefinition/humanname-mothers-family.
* Se entiende por qualification como los certificados/títulos y especialidades registradas por el prestador. Para diferenciar certificados de especialidades se ha optado por desarrollar dos slice para este elemento.
    * El slice Cert se usa para la especificación de los Títulos o Certificados Profesionales que tiene el Prestador. Para desarrollar este slice se requiere que:
        * *qualification[Cert].coding.text = “Certificado(s)”.
    * El slice Esp se usa para la especificación de la o las especialidades que posee el Prestador. Para desarrollar este slice se requiere que:
        * *qualification[Esp].coding.text = “Especialidad(es)”.