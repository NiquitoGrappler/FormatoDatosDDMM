### Aspectos a considerar

Esta sección describe definiciones, interpretaciones y requisitos importantes comunes a todos los actores del Core-CL, utilizados en esta guía. Los verbos de conformidad - **SHALL** (Debe), **SHOULD** (Debería Si Condición), **MAY** (Podría) - utilizados en esta guía se definen en las reglas de conformidad de FHIR.
<br>

### Definiciones para comprender la Guía

Los perfiles contienen ciertos elementos que son importantes de comprender a la hora de usarlos para implementación
<br>

#### Vista de los perfiles

Al revisar un perfil nos encontramos con la posibilidad de ver múltiples vistas de este.
<br>

##### Vista diferencial

Esta vista permite observar todos aquellos elmentos de un recurso que han sido modificadas o adecuadas para la realidad local. Esto incluye cambios como cardinalidad, explicaciones, MS o cualquier otro. Los elementos que se han mantenido tal cual en el recurso madre no figuran en esta vista.

Por razon de lenguaje, toda traducción de la descripción de un elemento se considera un cambio y figura en esta vista.
<br>

<div align="center">
  <img src="VistaDiferencial.PNG" width="900"> 
  <p>Vista Diferencial de un perfil</p>
</div>
<br>

##### Vista Snapshot 

En la vista de la **Snapshot Table**, todos los elementos obligatorios definidos para el perfil, y cualquier elemento obligatorio o que deba ser apoyado heredado de un perfil base, están marcados con una **S**.

<div align="center">
  <img src="VistaSnapshot.PNG" width="900"> 
  <p>Vista Snapshot de un perfil </p>
</div>
<br>

### Definición del Conjunto Mínimo de Datos (CMD)
<br>

El CMD definido para cada recurso se deja caracterizado por la bandera **MS** que significa Must Support. Este indicador determina que el sistema que recibe ese elemento de un recurso **DEBE** soportar el poder procesarlo y almacenarlo.

La existencia de un elemento o ruta con **MS** no determina la obligatoriedad de que un recurso generado contenga el dato. Esto se define mediante la obligatoriedad del dato lo cual **DEBE** estar especificado en la cardinalidad

<div align="center">
  <img src="CMD.PNG" width="900"> 
  <p>Definición de elementos Must Support </p>
</div>
<br>

### Cardinalidad

La cardinalidad define dos aspectos de un elemento dentro de un perfil

* Cantidad de veces que un elemento se **Puede** repetir.
* La minima cantidad de veces que un elemento **Debe** ser decrito al generar un recurso

De esta forma nos encontramos con varias situaciones:
<br>

{0..1} : El elemento se Puede no ser descrito en el recurso (valor 0 inicial), pero de usarse Debe ser desarrollado solo una vez (1 final)
{1..1} : El elemento es obligatorio pero solo se puede desplegar 1 sola vez
{0..3} : Elemento no obligatorio que se puede repetir hasta 3 veces
{1..3} : Elemento obligatorio que puede repetirse hasta 3 veces
{1..*} : Elemento obligatorio que se puede repetir infintas veces
<br>

### Bindings

La vinculación obligatoria a una definición de conjunto de valores significa que **SE DEBE** utilizar uno de los códigos del conjunto de valores especificado. En el caso de +CodeableConcept+, no es válido utilizar sólo texto, pero se permiten múltiples codificaciones (traducciones).

La vinculación extensible a una definición de conjunto de valores significa que uno de los códigos del conjunto de valores especificado **SE DEBE USAR** si existe un concepto aplicable, pero si no existe un código adecuado en el conjunto de valores, se **PUEDE** proporcionar un código o códigos alternativos en su lugar. Para CodeableConcept se permiten múltiples codificaciones y esta regla se aplica a una de ellas. También en el caso de CodeableConcept, si sólo se dispone de texto, se puede utilizar sólo el texto.

<div align="center">
  <img src="Binding.PNG" width="900"> 
  <p>Definición de Vinculaciones en Códigos </p>
</div>
<br>

### Ejemplos 

La guía desarrolla una serie de ejemplos por perfil desarrollado. Este ejemplo muestra en código como un sistema hace uso de un perfil para generar un recurso. Estos ejemplos se acceden desde la página ejemplos o desde la lengüeta ejemplo de cada perfil

<div align="center">
  <img src="Ejemplos.PNG" width="900"> 
  <p>Acceso a Ejemplo desde perfil </p>
</div>
<br>

Además cada ejemplo viene descrito en 4 formatos:

* Narrativa del ejemplo: Texto Legible
* Código en JSON
* Código en XML
* Código en Representación TTL