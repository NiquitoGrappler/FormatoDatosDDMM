Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $Dispositivo = http://DisenodatosDDMM.uv.cl/StructureDefinition/PerfilDispositivo
Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl
Alias: $CorePrestadorCl = http://DisenodatosDDMM.uv.cl/StructureDefinition/CorePrestadorCl

Profile: Biomedica_S_RR
Parent: Observation
Id: BiomedicaSRR
Title: "Perfil de frecuencia respiratoria de multiples valores de medición"
Description: "Para promover la interoperabilidad y la adopción a través de una implementación común, este perfil establece las expectativas mínimas para que el recurso Observación registre, busque y obtenga observaciones de frecuencia respiratoria con un código LOINC estándar. Se basa en el Perfil de Signos Vitales Básicos de EE.UU. e identifica los elementos básicos *adicionales* obligatorios, las extensiones, los vocabularios y los conjuntos de valores que **deben** estar presentes en el recurso Observación cuando se utiliza este perfil. Proporciona la base para el desarrollo de normas para casos de uso específicos."
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/BiomedicaSRR"
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

* valueSampledData 0..1 MS
* valueSampledData ^short = "Datos de frecuencia respiratoria"
* valueSampledData ^definition = "Una serie de mediciones realizadas por un dispositivo"
* valueSampledData.origin 1..1
* valueSampledData.origin ^short = "Valor inicial de la medición"
* valueSampledData.origin ^definition = "La cantidad base que representa un valor de medida cero. Además, proporciona las unidades de toda la serie de medidas"
* valueSampledData.period 1..1
* valueSampledData.period ^short = "Número de milisegundos entre muestras"
* valueSampledData.period ^definition = "La longuitud de tiempo entre tiempos de muestreo, medido en milisegundos"
* valueSampledData.dimensions 1..1
* valueSampledData.dimensions ^short = "Número de puntos de muestreo en cada punto temporal"
* valueSampledData.dimensions ^definition = "El número de puntos de muestra en cada punto de tiempo. Si el valor es mayor a uno, entonces las dimenciones seran entrelazadas - todos los puntos muestreados para un punto en el tiempo se registrarán a la vez"
* valueSampledData.data 0..1
* valueSampledData.data ^short = "Valores decimales con espacios o 'E' | 'U' | 'L'"
* valueSampledData.data ^definition = "Una serie de datos que son valores decimales serparados por un espacio (character u20). Los valores especiales 'E'(Error), 'L'(Bajo limite de detección) y 'U' (Sobre limite de detección) tambien pueden ser usadasa en lugara de un valor decimal"