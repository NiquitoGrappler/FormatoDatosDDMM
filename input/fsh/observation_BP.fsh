Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl
Alias: $PerfilDispositivo = http://DisenodatosDDMM.uv.cl/StructureDefinition/PerfilDispositivo
Alias: $CorePrestadorCl = http://DisenodatosDDMM.uv.cl/StructureDefinition/CorePrestadorCl

Profile: BiomedicaBP
Parent: Observation
Id: BiomedicaBP
Title: "Perfil de presión arterial"
Description: "Para promover la interoperabilidad y la adopción a través de una implementación común, este perfil establece las expectativas mínimas para que el recurso Observación registre, busque y obtenga observaciones de presión arterial diastólica y sistólica con códigos LOINC estándar y unidades de medida UCUM. Se basa en el Perfil de Signos Vitales Básicos de EE.UU. e identifica los elementos básicos *adicionales* obligatorios, las extensiones, los vocabularios y los conjuntos de valores que **deberán** estar presentes en el recurso Observación cuando se utilice este perfil. Proporciona la base para el desarrollo de normas para casos de uso específicos."
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/BiomedicaBP"
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "Nicolas Mendoza"
* ^contact.name = "Nicolas Mendoza"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://DisenodatosDDMM.uv.cl/infosalud.uv"
 
* identifier MS
* identifier ^short = "Identificación de observación"
* identifier ^definition = "Corresponde a la identificación asignada a la observación"
* identifier.value MS
* identifier.value ^short = "El valor que es único dentro del sistema."
* identifier.value ^definition = "Corresponde al valor de la identificación de la observación"
* status = #final (exactly)
* status MS
* status from ObservationStatus (required)
* status ^short = "Estado en el cual se encuentra la observación"
* status ^definition = "Estado en el cual se encuentra la observación por medio del valueSet de ObservationStatus (	registered | preliminary | final | amended +)"
* effective[x] only dateTime or Period
* effective[x] MS
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* code = http://loinc.org#85354-9
* code MS
* code ^short = "Panel de presión arterial con todos los niños opcional"
* code ^definition = "Corresponde al perfil de presión arterial, el cual se encuentra asociado a un sistema terminologico con la sintaxis definida por el sistema y el su codigo especifico"
* subject 1.. MS
* subject only Reference($CorePacienteCl)
* subject ^short = "De quien se trata la observación"
* subject ^definition = "Corresponde al paciente al que referencia esta observación"
* device 1.. MS
* device only Reference($PerfilDispositivo)
* device ^short = "Dispositivo de medición"
* device ^definition = "Corresponde al dispositivo que se utilizo para la observación del paciente"
* performer 1..* MS
* performer only Reference($CorePrestadorCl)
* performer ^short = "Prestador encargado de realizar la observación"
* performer ^definition = "Profesional encargado de utilizar el dispositivo medico para tomar las mediciónes del paciente"
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    systolic 1..1 MS and
    diastolic 1..1 MS
* component[systolic] ^short = "Presión arterial sistólica"
* component[systolic] ^definition = "Corresponde a un valor de estado final de una observación de presión arterial sistolica"
* component[systolic].code = http://loinc.org#8480-6
* component[systolic].code MS
* component[systolic].code ^short = "Codigo presión arterial sistólica"
* component[systolic].valueQuantity 0..1 MS
* component[systolic].valueQuantity only Quantity
* component[systolic].valueQuantity ^short = "El valor de los signos vitales se registra utilizando el tipo de datos Cantidad."
* component[systolic].valueQuantity ^definition = "Corresponde a un valor de estado final de una observación de presión arterial sistolica"
* component[systolic].valueQuantity.value 1.. MS
* component[systolic].valueQuantity.value ^short = "Valor numérico"
* component[systolic].valueQuantity.value ^definition = "Corresponde al valor asignado a la medición de presión arterial sistolica"
* component[systolic].valueQuantity.unit 1.. MS
* component[systolic].valueQuantity.unit ^short = "La representación de la unidad"
* component[systolic].valueQuantity.unit ^definition = "Representación de la unidad de medición que le corresponde a la presión arterial sistolica"
* component[systolic].valueQuantity.system 1.. MS
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[systolic].valueQuantity.system ^short = "Sistema que define la forma de la unidad codificada Valor fijo:"
* component[systolic].valueQuantity.system ^definition = "Sistema que define la forma de la unidad codificada Valor fijo, en el cual se utiliza unitsofmeasure porque es el codigo de sistema idoneo ya que incluyec todas las unidades de medida para este caso de uso"
* component[systolic].valueQuantity.code 1.. MS
* component[systolic].valueQuantity.code = #mm[Hg] (exactly)
* component[systolic].valueQuantity.code ^short = "Respuestas codificadas de las unidades comunes de UCUM para el conjunto de valores de los signos vitales."
* component[systolic].valueQuantity.code ^definition = "Respuestas codificadas de las unidades comunes de UCUM para el conjunto de valores de los signos vitales. Siendo el codigo que contiene la unidad de medida de la variable medida por el dispositivo"
* component[diastolic] ^short = "Presión arterial diastolica"
* component[diastolic] ^definition = "Corresponde a un valor de estado final de una observación de presión arterial diastolica"
* component[diastolic].code = http://loinc.org#8462-4
* component[diastolic].code MS
* component[diastolic].code ^short = "Codigo presión arterial diastolica"
* component[diastolic].valueQuantity 0..1 MS
* component[diastolic].valueQuantity only Quantity
* component[diastolic].valueQuantity ^short = "El valor de los signos vitales se registra utilizando el tipo de datos Cantidad."
* component[diastolic].valueQuantity ^definition = "Corresponde a un valor de estado final de una observación de presión arterial diastolica"
* component[diastolic].valueQuantity.value 1.. MS
* component[diastolic].valueQuantity.value ^short = "Valor numérico"
* component[diastolic].valueQuantity.value ^definition = "Corresponde al valor asignado a la medición de presión arterial diastolica"
* component[diastolic].valueQuantity.unit 1.. MS
* component[diastolic].valueQuantity.unit ^short = "La representación de la unidad"
* component[diastolic].valueQuantity.unit ^definition = "Representación de la unidad de medición que le corresponde a la presión arterial diastolica"
* component[diastolic].valueQuantity.system 1.. MS
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[diastolic].valueQuantity.system ^short = "Sistema que define la forma de la unidad codificada Valor fijo:"
* component[diastolic].valueQuantity.system ^definition = "Sistema que define la forma de la unidad codificada Valor fijo, en el cual se utiliza unitsofmeasure porque es el codigo de sistema idoneo ya que incluyec todas las unidades de medida para este caso de uso"
* component[diastolic].valueQuantity.code 1.. MS
* component[diastolic].valueQuantity.code = #mm[Hg] (exactly)
* component[diastolic].valueQuantity.code ^short = "Respuestas codificadas de las unidades comunes de UCUM para el conjunto de valores de los signos vitales."
* component[diastolic].valueQuantity.code ^definition = "Respuestas codificadas de las unidades comunes de UCUM para el conjunto de valores de los signos vitales. Siendo el codigo que contiene la unidad de medida de la variable medida por el dispositivo"