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
			  <td>identification</td>
			  <td>Se debe poder buscar al dispositivo por medio del identificador</td>
              <td>GET [base]/device?identifier= [value]</td>
              <td>GET [base]/device?identifier= DEV0102</td>
			</tr>
            <tr>
			  <td>name</td>
			  <td>Se debe poder buscar al paciente por su nombre o apellido</td>
              <td>GET [base]/device?deviceName= [string] </td>
              <td>GET [base]/device?deviceName= Max30602</td>
			</tr>
		</tbody>
	</table>
</div>