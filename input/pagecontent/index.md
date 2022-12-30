### Contexto

Esta guia de implementación es diseñada para el uso de datos obtenidos por dispositivos medicos que obtienen mediciones de Pulso Cardiaco (HR), Temperatura(T), Frecuencia Respiratoria (RR), Saturación de oxigeno (SpO2) y Presión Arterial (BP). Esta inspirada por [US Core IG](http://hl7.org/fhir/us/core/STU5/index.html) y estructuralmente basada en [CL Core IG](https://hl7chile.cl/fhir/ig/corecl/1.7.0/index.html).
<br>

### Introducción

Los signos vitales son observaciones físicas que indican las funciones vitales del organismo. Se toman para evaluar la salud física general, dar pistas sobre posibles estados de enfermedad o mostrar el progreso hacia la recuperación. Se necesita una estructura única y un vocabulario estándar para cada signo vital que permita el acceso ubicuo y la reutilización de las observaciones de los signos vitales. En particular, con el uso de dispositivos en clinicas, hospitales y otros prestadores de salud a cualquier nivel de complejidad compartan la información de esos dispositivos. Para satisfacer esta necesidad debe haber un vocabulario coherente y una sintaxis común para lograr la interoperabilidad semántica. El propósito de los perfiles de Signos Vitales de FHIR en esta guía de implementación es proporcionar un mecanismo para registrar, buscar y recuperar los signos vitales asociados a un paciente que incluyen los signos vitales (frecuencia cardíaca, frecuencia respiratoria, temperatura corporal y presión arterial), y mediciones adicionales como la saturación de oxígeno.
<br>

A Través de los perfiles de observación podremos asociar las mediciones a un paciente, un profesional encargado y a la misma vez asociar las observaciones al dispositivo en cuestión que se utilizó. Finalmente el dispositivo se asocia a la organización responsable del mismo. Como se observa en la siguiente imagen.
<br>

<div align="center">
  <img src="Int.prof.PNG" width="600"> 
  <p>Ecosistema de datos DDMM </p>
</div>

<br>

### Contenido de la Guía
<br>

Esta Guía se estructura en base al menú de la parte superior de la siguiente manera:
<br>

* [Inicio](index.html): Página de Bienvenida a la Guía.
* [Objetivos](objetives.html): Información sobre los objetivos de esta Guía.
* [Generalidades](generalities.html): Información General acerca de como leer la guía.
* [Actores y Casos de Uso](usecase.html): Información detallada de los casos de uso, sus actores, y la secuencia de transacciones.
* [Operaciones y Terminologías](operations.html): Información general de las operaciones básicas que se ejecutan para el manejo de datos entre un servicio FHIR y los clientes.
* [Perfiles y Extenciones](profiles.html): Describe todos los artefactos que son parte de esta GI, separados en Estructura de Perfiles, Extensiones, Value Sets y Ejemplos. Dado que esta Guía hereda su base Canónica desde el Core-CL, algunos de los artefactos descritos son parte de esa Guía
* [Ejemplos](all-examples.html): Listado de ejemplos desarrollados para cada Perfil generado para esta GI.
* [Aspectos de Seguridad en FHIR](http://hl7.org/fhir/us/core/STU5/security.html): Aspectos de seguridad en FHIR de lo que los implementadores deberian estar concientes.
<br>

### Recursos a Disposición

<br>

[FHIR R4](http://hl7.org/fhir/)

[FHIR Shorthand Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand) 

[FHIR Shorthand documentation code repository](https://github.com/HL7/fhir-shorthand)

[SUSHI code repository](https://github.com/FHIR/sushi)

[Zulip](https://chat.fhir.org) channel: #shorthand


<br>

**Esta Guía de Implementación ha sido posible gracias a las atentas contribuciones de las siguientes personas:**
<br>

* *Nicolas Mendoza, Tesista*
* *Cesar Galindo, Profesor Guia*
* *Julio Sotelo, Profesor Co-Guia*