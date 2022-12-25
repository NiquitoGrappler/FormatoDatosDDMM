### Casos de uso

<br>
Esta guía de implementación esta diseñada para la obtención de datos de dispositivos ioT de mediciónes como temperatura, pulso cardiaco, pulso respiratorio, presión arterial y saturación de oxigeno. Estas mediciones son almacenadas directamente a un servidor. Por lo que la información de las mediciones deberan ser almacenadas en una base de datos que a su vez debe contener una plantilla prefabricada que contenga la información contenida en el perfil de observación y que referencie al paciente, dispositivo y organización en cuestión. Para asi permitir la conversión y normalización de los los grupos de datos contenidos al estandar FHIR.
<br>

<br>
<div align="center">
  <img src="Diagramasec.png" width="600"> 
  <p>Diagrama de Secuencia de servidor a Ecosistema FHIR </p>
</div>
<br>

