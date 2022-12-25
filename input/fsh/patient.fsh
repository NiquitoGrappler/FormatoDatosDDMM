Alias: $humanname-mothers-family = http://hl7.org/fhir/StructureDefinition/humanname-mothers-family

Profile: Paciente
Parent: Patient
Id: CorePacienteCl
Title: "PacienteICB"
Description: "Este perfil se ha modelado con el fin de cubrir las necesidades de la escuela de Ingenieria Civil Biomedica de un Recurso Paciente para el formato de los datos de los DDMM"
* ^version = "0.1.0"
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/CorePacienteCl"
* ^date = "2022-06-14T00:52:46-04:00"
* ^publisher = "Nicolas Mendoza"
* ^contact.name = "Nicolas Mendoza"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://DisenodatosDDMM.uv.cl/infosalud.uv"
* identifier 1.. MS
* identifier ^short = "Listados de Id de Paciente. De poseer una CI con RUN vigente, este DEBE ser ingresado"
* identifier ^definition = "Este es el listado de Identificaciones de un paciente. Se procura como R2 el RUN, pero en caso de no existir ese identificador se debe ocupar otro nacional u otro otorgado por país extranjero"
* identifier ^comment = "En caso de que el paciente posea una CI con número RUN válido, este debe ser ingresado como identificador, independiente de que tenga otros identificadores, los cuales también pueden ser ingresados."
* identifier.extension MS
* identifier.use MS
* identifier.use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier.use ^comment = "Se definirá como official pues en una primera etapa solo se considerarán los identidicadores en esa categoría. Para una segunda etapa se abrirá este elemento para cualquier clase de identificador"
* name 1..1 MS
* name ^short = "Determinación del nombre registrado oficialmente del Paciente"
* name ^definition = "Determinación del nombre registrado oficialmente del Paciente"
* name.use 1..
* name.use = #official
* name.use ^short = "uso del nombre del paciente"
* name.use ^definition = "este slice corresponde al nombre registrado al momento de nacer, por lo que se fuerza el valor \"official\""
* name.use ^comment = "Para ser considerado como el slice determinado para el uso de nombre completo, el use DEBE ser de valor de código \"official\""
* name.family 1.. MS
* name.family ^short = "Primer Apellido"
* name.family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil"
* name.family.extension ^short = "Extensión para segundo apellido"
* name.family.extension ^definition = "Extensión para la declaracion de un segundo apellido"
* name.family.extension contains $humanname-mothers-family named Mothers-family 0..1
* name.given 1.. MS
* name.given ^short = "Primer nombre y nombres del Paciente"
* name.given ^definition = "Todos los nombres de los pacientes no necesariamente solo el Primer Nombre"