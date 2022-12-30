
Esta guía de implementación esta diseñada para la obtención de datos de dispositivos ioT de mediciónes como temperatura, pulso cardiaco, pulso respiratorio, presión arterial y saturación de oxigeno. Estas mediciones son almacenadas directamente a un servidor. Por lo que la información de las mediciones deberan ser almacenadas en una base de datos que a su vez debe contener una plantilla prefabricada que contenga la información contenida en el perfil de observación y que referencie al paciente, dispositivo y organización en cuestión. Para asi permitir la conversión y normalización de los los grupos de datos contenidos al estandar FHIR.
<br>

<br>
<div align="center">
  <img src="Diagramasec.png" width="600"> 
  <p>Diagrama de Secuencia de usuario a repositorio FHIR </p>
</div>
<br>

###	Procesos
<br>

El proyecto se separa en básicamente tres procesos, los cuales son enumerados continuación:
<br>

#####	Proceso de almacenamiento

Este proceso se desarrolla en el momento en que un usuario quiere convertir sus datos al estandar FHIR. Dentro de
los pasos fundamentales de este caso se encuentran:

* Publicación plantilla de datos
* Validación de recurso
<br>

#####	Proceso de actualización

Este proceso se desarrolla en el momento en que el usuario quiere actualizar la información de algun perfil anteriormente publicado en el repositorio.

#####	Proceso de lectura

Este proceso se desarrolla en el momento en que el usuario quiere obtener información de una observación de un paciente del ecosistema de salud digital. Los pasos fundamentales son los siguientes:
* Consulta al repositorio por observación de paciente
* Revisión de estado de observación
* Notificación de disponibilidad de recurso
<br>

