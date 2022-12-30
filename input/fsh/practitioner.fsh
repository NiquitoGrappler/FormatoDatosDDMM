Alias: $humanname-mothers-family = http://hl7.org/fhir/StructureDefinition/humanname-mothers-family


Profile: PrestadorCL
Parent: Practitioner
Id: CorePrestadorCl
Title: "Prestador Core-CL"
Description: "Este Perfil fue creado para cubrir la descripción de un Prestador a nivel Nacional"
* . ^short = "Prestador a nivel nacional"
* . ^definition = "\\-"
* . ^comment = "\\-"
* ^status = #active
* ^date = "2022-06-14T00:52:46-04:00"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/CorePrestadorCl"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
* identifier ..2 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.description = "Este slice permite agregar una identificacion basada RUN y/o basada en el RNPI"
* identifier ^slicing.rules = #open
* identifier ^short = "Id de los prestadores"
* identifier ^definition = "Identificador para cada prestador. El identificador principal en Chile es el Registro Único Nacional (RUN), identificador que es obligatorio. Además, se puede ingresar un ID extra para cada prestador, disponibilizado por Registro Nacional de Prestadores Institucionales (NRPI), este identificador es opcional"
* identifier ^comment = "Este elemento permite ingresar dos identificadores, uno de tipo RUN y uno de tipo RNPI"
* identifier contains
    RUN 1..1 MS and
    RNPI 0..1 MS
* identifier[RUN] ^short = "Identificador destinado a almacenar el número de RUN"
* identifier[RUN] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"
* identifier[RUN].use 1..
* identifier[RUN].use = #official
* identifier[RUN].use ^short = "Se define el uso de este identificador"
* identifier[RUN].use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier[RUN].system ^short = "endPoint que valida el RUN"
* identifier[RUN].system ^definition = "Define la url del endPoint a la cual apunta la API, para validar el RUN"
* identifier[RUN].system ^comment = "Se define el el endPoint al cual debe apuntar a la API, con el fin de validar que el numero de RUN ingresado exista y que sea correcto. Por momento se usará la url = \"http://api_run/run\""
* identifier[RUN].value ^short = "Número de RUN"
* identifier[RUN].value ^definition = "Valor del RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"
* identifier[RNPI] ^short = "Identificador destinado a almacenar el identificador del RNPI"
* identifier[RNPI] ^definition = "Corresponde al identificador otorgado por la Super Intendecia de  Salud a los prestadores válidos en chile"
* identifier[RNPI].use 1..
* identifier[RNPI].use = #secondary
* identifier[RNPI].use ^short = "Se define el uso de este identificador"
* identifier[RNPI].use ^definition = "Se definirá este uso siempre como \"secondary\" debido a que cualquier RNPI sera un identificador secundario y alternativo, ya que el oficial es el RUN"
* identifier[RNPI].system ^short = "endPoint que valida el RNPI"
* identifier[RNPI].system ^definition = "Define la url del endPoint a la cual apunta la API, para validar el RNPI"
* identifier[RNPI].system ^comment = "Se define el endPoint al cual debe apuntar a la API, con el fin de validar que el RNPI ingresado exista y que sea correcto. Por momento se usará la url = \"https://apis.superdesalud.gob.cl/api/prestadores/registro/\""
* identifier[RNPI].value ^short = "Valor identificador NRPI"
* identifier[RNPI].value ^definition = "Valor del RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"
* active MS
* name MS
* name.use = #official
* name.use ^short = "Uso del nombre del prestador"
* name.use ^definition = "Este es el uso que se le da al nombre del Prestador considerando que puede ser nombre oficial, temporal, seudonimo, entre otros, Pero por motivos legales este uso es Oficial "
* name.family 1..
* name.family ^short = "Primer Apellido"
* name.family ^definition = "Se debe ingresar el primer apellido, segun indica su identificacion personal"
* name.family.extension ^short = "Extensión para segundo apellido"
* name.family.extension contains $humanname-mothers-family named mothers-family 0..1
* name.given 1..
* telecom MS
* telecom ^definition = "Numero de contacto telefonico"
* telecom.use ^short = "Uso del contacto descrito, de debe utilizar \"phone\" y \"email\", en caso que agreguemos los dos datos."

* gender 1.. MS
* gender ^short = "Sexo de nacimiento Registrado, male | female | other | unknown (requerido)"
* gender ^definition = "Sexo de nacimiento Registrado"
* birthDate 1.. MS
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"
* qualification MS
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.text"
* qualification ^slicing.description = "Debido a que los profeisonales de la salud pueden tener titulo y ademas poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos."
* qualification ^slicing.rules = #open
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador"
* qualification ^definition = "Certificados, titulos y/o especialidades que el Prestador pueda validar"
* qualification contains
    Cert 0..* MS and
    Esp 0..* MS
* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o certificados de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "La url sobre la cual se encuentra el endPoint para el acceso a  los códigos de titulos y/o certificados de prestadores. El perfil especifica que se debe usar la siguiente url:  \"https://api.minsal.cl/v1/catalogos/profesiones/\""
* qualification[Cert].code.coding.display 1.. MS
* qualification[Cert].code.coding.display ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.display ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Cert].code.text 1..
* qualification[Cert].code.text = "Certificado(s)"
* qualification[Cert].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Cert].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Cert].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador"
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Esp].identifier ^short = "Identificador de especialidades"
* qualification[Esp].identifier ^definition = "Identificación especialidades profesionales indicando procedencia y casa de estudios"
* qualification[Esp].identifier.value ^short = "Codigo de la especialidad"
* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Esp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica  \"https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/\""
* qualification[Esp].code.coding.display 1.. MS
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad"
* qualification[Esp].code.coding.display ^definition = "Nombre la especialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Esp].code.text 1..
* qualification[Esp].code.text = "Especialidad(es)"