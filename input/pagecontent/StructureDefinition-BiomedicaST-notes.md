#### Notas de Implementación
<br>

Se describe abajo un resumen de las interacciones de un Server RESTful FHIR con este perfil, como lo son los parámetors de búsqueda y el soporte para este perfil.

#### Parametros de busqueda mandatorios
<br>

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="10%">Elemento</th>
			  <th width="20%">Nota</th>
              <th width="35">Seach Param</th>
              <th width="35">Ejemplo</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td>Paciente & codigo</td>
			  <td>SOPORTARÁ la búsqueda mediante la combinación de los parámetros de búsqueda de pacientes y códigos</td>
              <td>GET [base]/Observation?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}</td>
              <td>GET [base]/Observation?patient=18462851-2&code=http://loinc.org|8867-4, http://loinc.org|9279-1, http://loinc.org|85354-9</td>
			</tr>
            <tr>
			  <td>Paciente&fecha</td>
			  <td>SOPORTARÁ la búsqueda mediante la combinación de los parámetros de búsqueda de paciente y fecha.</td>
              <td>GET [base]/Observation?patient={Type/}[id]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...} </td>
              <td>GET [base]/Observation?patient=1134281&date=ge2020-01-01T00:00:00Z</td>
			</tr>
		</tbody>
	</table>
</div>