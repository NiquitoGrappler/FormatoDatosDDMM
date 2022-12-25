---
title: Profiles and Extensions
layout: default
active: profiles
---
### Perfiles de Actores:

Estos corresponde a los perfiles asociados a los actores involucrados en las mediciones de los dispositivos medicos dentro de la escuela de Ingenieria Civil Biomédica. Estos perfiles contienen recursos basicos para la identificación de estos y su usabilidad en este caso de uso dentro de la escuela.
<br>

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="25%">Perfil</th>
			  <th width="75%">Definición</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td><a href="StructureDefinition-CoreOrganizacionCl.html">Panel de organización</a></td>
			  <td>Corresponde a la organización responsable del dispositivo y la medición</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-CorePacienteCl.html">Panel de paciente</a></td>
			  <td>Corresponde al perfil del paciente al cual se le efectuan la mediciónes</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-PerfilDispositivo.html">Panel de dispositivo</a></td>
			  <td>Corresponde al dispositivo utilizado en la obtención de las mediciónes</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-CorePrestadorCl.html">Panel de prestador</a></td>
			  <td>Corresponde al usuario encargado de la obtención de las mediciónes</td>
			</tr>
		</tbody>
	</table>
</div>

### Perfiles de medición unica:

Estos perfiles corresponden al recurso de observación del estandar FHIR. La estructura general de los perfiles es la misma y estan pensados para darle una medición representativa en las observaciones realizadas al paciente. Cuentan con las expectativas mínimas para que estos perfiles de observación puedan registrar, buscar y acceder a los datos de las mediciónes de frecuencia cardiaca, frecuencia respiratoria, temperatura, saturación de oxigeno o presión arterial. Gracias a los distintos codigos de sistemas utilizados fue posible diferenciar las mediciónes.
<br>

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="25%">Perfil</th>
			  <th width="75%">Definición</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td><a href="StructureDefinition-BiomedicaBP.html">Panel de presión arterial</a></td>
			  <td>Corresponde a la presión arterial con sus compenentes diastolicas y sistolicas</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-BiomedicaHR.html">Panel de pulso cardiaco</a></td>
			  <td>Corresponde a la medición unica de frecuencia cardiaca</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-BiomedicaRR.html">Panel de frecuencia respiratoria</a></td>
			  <td>Corresponde a la medición unica de frecuencia respiratoria</td>
			</tr>
            <tr>
			  <td><a href="StructureDefinition-BiomedicaSpO2.html">Panel de saturación de oxigeno</a></td>
			  <td>Corresponde a la medición unica de saturación de oxigeno</td>
			</tr>
            <tr>
			  <td><a href="StructureDefinition-BiomedicaT.html">Panel de temperatura</a></td>
			  <td>Corresponde a la medición unica de temperatura</td>
			</tr>
		</tbody>
	</table>
</div>

### Perfiles para almacenar multiples mediciones:

Estos perfiles corresponden al recurso de observación del estandar FHIR. La estructura general de los perfiles es la misma y estan pensados para darle una medición representativa en las observaciones realizadas al paciente. Cuentan con las expectativas mínimas para que estos perfiles de observación puedan registrar, buscar y acceder a los datos de las mediciónes de frecuencia cardiaca, frecuencia respiratoria, temperatura, saturación de oxigeno o presión arterial. Gracias a los distintos codigos de sistemas utilizados fue posible diferenciar las mediciónes.
<br>

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="25%">Perfil</th>
			  <th width="75%">Definición</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td><a href="StructureDefinition-BiomedicaSBP.html">Panel de presión arterial</a></td>
			  <td>Corresponde a la presión arterial con sus compenentes diastolicas y sistolicas</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-BiomedicaSHR.html">Panel de pulso cardiaco</a></td>
			  <td>Corresponde a la medición unica de frecuencia cardiaca</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-BiomedicaSRR.html">Panel de frecuencia respiratoria</a></td>
			  <td>Corresponde a la medición unica de frecuencia respiratoria</td>
			</tr>
            <tr>
			  <td><a href="StructureDefinition-BiomedicaSSpO2.html">Panel de saturación de oxigeno</a></td>
			  <td>Corresponde a la medición unica de saturación de oxigeno</td>
			</tr>
            <tr>
			  <td><a href="StructureDefinition-BiomedicaST.html">Panel de temperatura</a></td>
			  <td>Corresponde a la medición unica de temperatura</td>
			</tr>
		</tbody>
	</table>
</div>

### Extenciones:
<br>

<div>
<p>Esta guía hace referencia a las siguientes extensiones.</p>
<p>
<a href="StructureDefinition-humanname-mothers-family.html">Apellido materno</a><br/>
</p>
</div>