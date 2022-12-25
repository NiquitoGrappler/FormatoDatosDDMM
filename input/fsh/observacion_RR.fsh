Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $Dispositivo = http://DisenodatosDDMM.uv.cl/StructureDefinition/PerfilDispositivo
Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl
Alias: $CorePrestadorCl = http://DisenodatosDDMM.uv.cl/StructureDefinition/CorePrestadorCl

Profile: BiomedicaRR
Parent: Observation
Id: BiomedicaRR
Title: "Perfil de frecuencia respiratoria"
Description: "Para promover la interoperabilidad y la adopción a través de una implementación común, este perfil establece las expectativas mínimas para que el recurso Observación registre, busque y obtenga observaciones de frecuencia respiratoria con un código LOINC estándar y unidades de medida UCUM. Se basa en el Perfil de Signos Vitales Básicos de EE.UU. e identifica los elementos básicos *adicionales* obligatorios, las extensiones, los vocabularios y los conjuntos de valores que **deben** estar presentes en el recurso Observación cuando se utiliza este perfil. Proporciona la base para el desarrollo de normas para casos de uso específicos."
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/BiomedicaRR"
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "Nicolas Mendoza"
* ^contact.name = "Nicolas Mendoza"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://DisenodatosDDMM.uv.cl/infosalud.uv"
* . ^short = "Perfil frecuencia respiratoria de la escuela de ingenieria biomedica uv"
* . ^definition = "\\-"
* . ^comment = "\\-"
* identifier 0.. MS
* identifier ^short = "Identificación de observación"
* identifier ^definition = "Corresponde a la identificación asignada a la observación"
* identifier.value 0.. MS
* identifier.value ^short = "El valor que es único dentro del sistema."
* identifier.value ^definition = "Corresponde al valor de la identificación de la observación"
* status 1..1 MS
* status only code
* status from ObservationStatus (required)
* status = #final (exactly)
* status ^short = "Estado en el cual se encuentra la observación"
* status ^definition = "Estado en el cual se encuentra la observación por medio del valueSet de ObservationStatus (	registered | preliminary | final | amended +)"
* effective[x] only dateTime or Period
* effective[x] MS
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* code only CodeableConcept
* code = http://loinc.org#9279-1
* code MS
* code ^short = "Frecuencia respiratoria"
* code ^definition = "Corresponde al perfil de frecuencia respiratoria, el cual se encuentra asociado a un sistema terminologico con la sintaxis definida por el sistema y el su codigo especifico"
* valueQuantity 0..1 MS
* valueQuantity ^short = "El valor de los signos vitales se registra utilizando el tipo de datos Cantidad."
* valueQuantity ^definition = "Corresponde a un valor de estado final de una observación de frecuencia respiratoria"
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.value ^short = "Valor numérico"
* valueQuantity.value ^definition = "Corresponde al valor asignado a la medición de frecuencia respiratoria"
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.unit ^short = "La representación de la unidad"
* valueQuantity.unit ^definition = "Representación de la unidad de medición que le corresponde a la frecuencia respiratoria"
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.system ^short = "Sistema que define la forma de la unidad codificada Valor fijo:"
* valueQuantity.system ^definition = "Sistema que define la forma de la unidad codificada Valor fijo, en el cual se utiliza unitsofmeasure porque es el codigo de sistema idoneo ya que incluyec todas las unidades de medida para este caso de uso"
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #/min (exactly)
* valueQuantity.code ^short = "Respuestas codificadas de las unidades comunes de UCUM para el conjunto de valores de los signos vitales."
* valueQuantity.code ^definition = "Respuestas codificadas de las unidades comunes de UCUM para el conjunto de valores de los signos vitales. Siendo el codigo que contiene la unidad de medida de la variable medida por el dispositivo"
* device 1.. MS
* device only Reference($Dispositivo)
* device ^short = "Dispositivo de medición"
* device ^definition = "Corresponde al dispositivo que se utilizo para la observación del paciente"
* subject 1.. MS
* subject only Reference($CorePacienteCl)
* subject ^short = "De quien se trata la observación"
* subject ^definition = "Corresponde al paciente al que referencia esta observación"
* performer 1..* MS
* performer only Reference($CorePrestadorCl)
* performer ^short = "Prestador encargado de realizar la observación"
* performer ^definition = "Profesional encargado de utilizar el dispositivo medico para tomar las mediciónes del paciente"