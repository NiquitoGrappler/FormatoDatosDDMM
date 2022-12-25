Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl
Alias: $PerfilDispositivo = http://DisenodatosDDMM.uv.cl/StructureDefinition/PerfilDispositivo
Alias: $CorePrestadorCl = http://DisenodatosDDMM.uv.cl/StructureDefinition/CorePrestadorCl

Profile: Biomedica_S_BP
Parent: Observation
Id: BiomedicaSBP
Title: "Perfil de presión arterial de multiples valores de medición"
Description: "Para promover la interoperabilidad y la adopción a través de una implementación común, este perfil establece las expectativas mínimas para que el recurso Observación registre, busque y obtenga observaciones de presión arterial diastólica y sistólica con códigos LOINC estándar. Se basa en el Perfil de Signos Vitales Básicos de EE.UU. e identifica los elementos básicos *adicionales* obligatorios, las extensiones, los vocabularios y los conjuntos de valores que **deberán** estar presentes en el recurso Observación cuando se utilice este perfil. Proporciona la base para el desarrollo de normas para casos de uso específicos."
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/BiomedicaSBP"
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
* component[systolic].valueSampledData 0..1 MS
* component[systolic].valueSampledData ^short = "Datos de Presión arterial sistólica"
* component[systolic].valueSampledData ^definition = "Una serie de mediciones realizadas por un dispositivo"
* component[systolic].valueSampledData.origin 1..1
* component[systolic].valueSampledData.origin ^short = "Valor inicial de la medición"
* component[systolic].valueSampledData.origin ^definition = "La cantidad base que representa un valor de medida cero. Además, proporciona las unidades de toda la serie de medidas"
* component[systolic].valueSampledData.period 1..1
* component[systolic].valueSampledData.period ^short = "Número de milisegundos entre muestras"
* component[systolic].valueSampledData.period ^definition = "La longuitud de tiempo entre tiempos de muestreo, medido en milisegundos"
* component[systolic].valueSampledData.dimensions 1..1
* component[systolic].valueSampledData.dimensions ^short = "Número de puntos de muestreo en cada punto temporal"
* component[systolic].valueSampledData.dimensions ^definition = "El número de puntos de muestra en cada punto de tiempo. Si el valor es mayor a uno, entonces las dimenciones seran entrelazadas - todos los puntos muestreados para un punto en el tiempo se registrarán a la vez"
* component[systolic].valueSampledData.data 0..1
* component[systolic].valueSampledData.data ^short = "Valores decimales con espacios o 'E' | 'U' | 'L'"
* component[systolic].valueSampledData.data ^definition = "Una serie de datos que son valores decimales serparados por un espacio (character u20). Los valores especiales 'E'(Error), 'L'(Bajo limite de detección) y 'U' (Sobre limite de detección) tambien pueden ser usadasa en lugara de un valor decimal"

* component[diastolic] ^short = "Presión arterial diastolica"
* component[diastolic] ^definition = "Corresponde a un valor de estado final de una observación de presión arterial diastolica"
* component[diastolic].code = http://loinc.org#8462-4
* component[diastolic].code MS
* component[diastolic].code ^short = "Codigo presión arterial diastolica"
* component[diastolic].valueSampledData 0..1 MS
* component[diastolic].valueSampledData ^short = "Datos de Presión arterial diastolica"
* component[diastolic].valueSampledData ^definition = "Una serie de mediciones realizadas por un dispositivo"
* component[diastolic].valueSampledData.origin 1..1
* component[diastolic].valueSampledData.origin ^short = "Valor inicial de la medición"
* component[diastolic].valueSampledData.origin ^definition = "La cantidad base que representa un valor de medida cero. Además, proporciona las unidades de toda la serie de medidas"
* component[diastolic].valueSampledData.period 1..1
* component[diastolic].valueSampledData.period ^short = "Número de milisegundos entre muestras"
* component[diastolic].valueSampledData.period ^definition = "La longuitud de tiempo entre tiempos de muestreo, medido en milisegundos"
* component[diastolic].valueSampledData.dimensions 1..1
* component[diastolic].valueSampledData.dimensions ^short = "Número de puntos de muestreo en cada punto temporal"
* component[diastolic].valueSampledData.dimensions ^definition = "El número de puntos de muestra en cada punto de tiempo. Si el valor es mayor a uno, entonces las dimenciones seran entrelazadas - todos los puntos muestreados para un punto en el tiempo se registrarán a la vez"
* component[diastolic].valueSampledData.data 0..1
* component[diastolic].valueSampledData.data ^short = "Valores decimales con espacios o 'E' | 'U' | 'L'"
* component[diastolic].valueSampledData.data ^definition = "Una serie de datos que son valores decimales serparados por un espacio (character u20). Los valores especiales 'E'(Error), 'L'(Bajo limite de detección) y 'U' (Sobre limite de detección) tambien pueden ser usadasa en lugara de un valor decimal"