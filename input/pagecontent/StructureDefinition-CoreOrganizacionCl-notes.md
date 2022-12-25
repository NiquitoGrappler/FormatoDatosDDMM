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
			  <td>name</td>
			  <td>Se debe poder buscar la organización por su nombre</td>
              <td>GET [base]/organization?name= [string]</td>
              <td>GET [base]/organization?name= "Escuela Ing. Biomedica UV"</td>
			</tr>
		</tbody>
	</table>
</div>