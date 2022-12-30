// Ejemplo de organización

Instance: OrganizacionCL
Title: "Ejemplo de organización"
Description: "Organización encargada de la observación"
InstanceOf: OrganizacionCL
Usage: #example

* name = "Escuela de Ingenieria Civil Biomedica de la universidad de Valparaiso"

// Ejemplo de paciente

Instance: PacienteCl1
Title: "Ejemplo de Paciente"
Description: "Paciente al cual se le realiza la observación"
InstanceOf: Paciente
Usage: #example

* identifier.value = "19.461.844-1"
* identifier.use = #official
* name[0].use = #official
* name[=].family = "Mendoza"
* name[=].family.extension.url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/humanname-mothers-family"
* name[=].family.extension.valueString = "Parra"
* name[=].given[0] = "Nicolas"
* name[=].given[+] = "Andres"


// Ejemplo de Dispositivo

Instance: Dispositivo
Title: "Ejemplo de dispositivo"
Description: "Dispositivo utilizado para la medición"
InstanceOf: Dispositivo
Usage: #example

* identifier.value = "123"
* status = #active
* deviceName.name = "Sensor MAX30602"
* deviceName.type = #user-friendly-name
* patient = Reference(PacienteCl1)
* owner = Reference(OrganizacionCL)

// Ejemplo de Prestador

Instance: CorePrestadorCl
Title: "Ejemplo de prestador"
Description: "Profesional encargado de la observación"
InstanceOf: Practitioner
Usage: #example

* identifier[0].use = #official
* identifier[=].system = "http://api_run/run"
* identifier[=].value = "8336277-3"
* identifier[+].use = #secondary
* identifier[=].value = "999999"
* active = true
* name.use = #official
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name.family.extension.valueString = "Reyes"
* name.given[0] = "Johanna"
* name.given[+] = "Rosa"
* telecom[0].system = #phone
* telecom[=].value = "9345666"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "DraSilva@mimail.com"
* telecom[=].use = #work
* gender = #female
* birthDate = "1974-08-12"
* qualification[0].code = https://api.minsal.cl/v1/catalogos/profesiones/#2112 "Certificado Profesional Médico Cirujano"
* qualification[=].code.text = "Certificado(s)"
* qualification[+].code = https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/#122 "Cardiólogia"
* qualification[=].code.text = "Especialidad(es)"
* qualification[+].code = https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/#1234 "Medicina interna"
* qualification[=].code.text = "Especialidad(es)"

// Ejemplo de Observación de Pulso Cardiaco

Instance: BiomedicaHR
Title: "Ejemplo de Observación de Pulso Cardiaco"
Description: "Observación de el pulso cardiaco de un paciente"
InstanceOf: BiomedicaHR
Usage: #example

* identifier.value = "01234"
* code = http://loinc.org#8867-4 "Heart Rate"
* code.text = "heart_rate"
* subject = Reference(PacienteCl1)
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* device = Reference(Dispositivo)
* valueQuantity = 44 '/min' "beats/min"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Obsevación de Pulso Cardiaco con multiples datos

Instance: BiomedicaSHR
Title: "Ejemplo de Observación de multiples valores de Pulso Cardiaco"
Description: "Observación de un conjunto de datos del pulso cardiaco de un paciente"
InstanceOf: BiomedicaSHR
Usage: #example

* identifier.value = "10254"
* code = http://loinc.org#8867-4 "Heart Rate"
* code.text = "heart_rate"
* subject = Reference(PacienteCl1)
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* device = Reference(Dispositivo)
* valueSampledData.origin.value = 58
* valueSampledData.period = 1000 // Intervalo de tiempo entre una muestra y otra en mS (milisegundos)
* valueSampledData.dimensions = 1
* valueSampledData.data = "58 58 58 59 59 58 58 58 59 58 59 59 61 61 62 63 63 63 63 64 64 65 66 66 66 66 67 68 70 70 71 70 69 69 69 67 66 67 67 67 67 66 65 65 63 63 62 62 61 61 61 62 62 62 63 63 63 63 64 64 65 65 65 64 65 66 67 68 68 68 69 70 70 71 72 71 71 72 0 0 0 0 65 65 64 62 59 59 55 56 56 57 60 61 61 62 62 62 62 63 64 64 64 63 62 62 61 62 62 62 63 63 63 63 63 63 64 64 64 63 63 63 62 63 62 62 62 61 61 61 60 60 60 61 62 62 63 64 64 65 65 65 65 65 65 64 64 64 65 65 64 64 64 63 63 64 64 64 64 64 64 64 64 64 65 65 66 66 67 67 67 67 66 66 67 67 68 68 68 68 68 68 66 65 65 65 65 65 64 64 63 63 62 62 62 63 63 64 64 63 63 63 63 63 64 65 66 66 66 66 66 65 65 65 65 66 66 67 67 66 66 65 64 64 64 64 66 66 67 67 69 70 69 69 69 69 69 69 69 69 67 66 66 65 64 64 65 65 65 65 64 63 63 62 62 63 62 62 61 60 59 59 59 60 61 61 62 62 63 63 63 62 62 63 64 64 63 63 62 61 62 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 62 63 63 63 63 63 63 65 65 65 64 63 63 64 64 67 67 67 67 68 66 66 65 63 63 63 64 64 64 64 64 64 64 64 64 65 65 65 64 64 64 64 63 63 63 63 63 62 62 62 62 62 62 62 62 61 61 61 61 60 61 61 61 60 60 60 60 61 61 62 62 62 62 61 61 61 61 61 61 62 61 62 62 64 64 65 65 67 67 67 66 65 65 65 66 66 67 67 66 66 65 64 63 63 62 62 61 61 60 59 59 60 60 60 61 61 60 61 61 60 60 60 60 62 63 64 64 64 63 62 62 61 62 62 63 64 64 64 65 64 64 65 66 66 66 65 67 68 68 69 69 68 67 67 67 68 69 69 68 67 66 65 64 64 64 64 64 64 64 64 63 63 62 62 61 61 61 61 61 60 60 61 62 62 62 63 64 64 65 64 64 64 64 64 63 63 63 64 64 64 62 61 61 60 60 60 60 61 61 61 60 61 61 61 62 62 62 62 62 62 62 62 61 61 62 63 64 65 65 64 64 65 65 65 66 65 64 64 63 62 62 62 62 62 62 62 63 63 62 61 61 62 62 62 64 64 65 65 64 64 64 64 64 64 65 65 64 63 63 63 64 64 64 64 64 64 65 65 66 66 66 66 65 65 65 65 65 66 66 67 67 67 67 68 69 69 69 69 70 70 72 73 74 76 75 75 76 76 77 0 0 58 67 69 67 68 68 68 60 59 63 65 64 65 65 65 64 64 64 64 64 64 62 62 62 61 60 58 58"
* performer = Reference(CorePrestadorCl)

// Ejemplo de Observación de Ritmo respiratorio

Instance: BiomedicaRR
Title: "Ejemplo de Observación de multiples valores de Ritmo respiratorio"
Description: "Observación de un conjunto de datos del ritmo respiratorio de un paciente"
InstanceOf: BiomedicaRR
Usage: #example

* identifier.value = "01235"
* code = http://loinc.org#9279-1 "Respiratory Rate"
* code.text = "heart_rate"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1)
* device = Reference(Dispositivo)
* valueQuantity = 26 #/min "breaths per minute"
* performer = Reference(CorePrestadorCl)

// Ejemplo de Observación de Ritmo respiratorio de multiples datos

Instance: BiomedicaSRR
Title: "Ejemplo de Observación de Ritmo respiratorio"
Description: "Observación del ritmo respiratorio de un paciente"
InstanceOf: BiomedicaSRR
Usage: #example

* identifier.value = "23542"
* code = http://loinc.org#9279-1 "Respiratory Rate"
* code.text = "heart_rate"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1)
* device = Reference(Dispositivo)
* valueSampledData.origin.value = 26
* valueSampledData.period = 60000 // Intervalo de tiempo entre una muestra y otra en mS (milisegundos)
* valueSampledData.dimensions = 1
* valueSampledData.data = "26 25 26 24 26 23 22 22 22 22 21 20 20 20 20 20 20 20 19 19 19 18 18 19 19 19 19 19 19"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Observación de Temperatura

Instance: BiomedicaT
Title: "Ejemplo de Observación de la temperatura de un paciente"
Description: "Observación de temperatura de un paciente"
InstanceOf: BiomedicaT
Usage: #example

* identifier.value = "12035"
* code = http://loinc.org#8310-5 "Body temperature"
* code.text = "temperature"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1) 
* device = Reference(Dispositivo)
* valueQuantity = 36.5 'Cel' "Cel"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Observación de Temperatura de multiples datos

Instance: BiomedicaST
Title: "Ejemplo de Observación de la temperatura de un paciente"
Description: "Observación de temperatura de un paciente"
InstanceOf: BiomedicaST
Usage: #example

* identifier.value = "12035"
* code = http://loinc.org#8310-5 "Body temperature"
* code.text = "temperature"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1) 
* device = Reference(Dispositivo)
* valueSampledData.origin.value = 36.3
* valueSampledData.period = 1000 // Intervalo de tiempo entre una muestra y otra en mS (milisegundos)
* valueSampledData.dimensions = 1
* valueSampledData.data = "36.3 36.3 36.4 36.4 36.5 36.6 36.7 36.5 36.7 36.8 36.8 36.9 37 37.1 37.2"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Observación de SpO2

Instance: BiomedicaSpO2
Title: "Ejemplo de Observación de Saturación de oxigeno"
Description: "Paciente al cual se le realiza la observación"
InstanceOf: BiomedicaSpO2
Usage: #example

* identifier.value = "08425"
* code = http://loinc.org#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.text = "Saturación de oxigeno"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1)
* device = Reference(Dispositivo)
* valueQuantity = 99 '%' "%O2"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Observación de SpO2 de multiples valores

Instance: BiomedicaSSpO2
Title: "Ejemplo de Observación de Saturación de oxigeno"
Description: "Paciente al cual se le realiza la observación"
InstanceOf: BiomedicaSSpO2
Usage: #example

* identifier.value = "08425"
* code = http://loinc.org#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.text = "Saturación de oxigeno"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1)
* device = Reference(Dispositivo)
* valueSampledData.origin.value = 97.8
* valueSampledData.period = 1000 // Intervalo de tiempo entre una muestra y otra en mS (milisegundos)
* valueSampledData.dimensions = 1
* valueSampledData.data = "97.8 97.8 97.8 97.8 97.9 97.9 97.9 97.9 97.9 97.9 97.9 97.9 97.9 97.9 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.8 97.9 97.9 98 98 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.2 98.2 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.1 98.2 98.2 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.4 98.4 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.3 98.4 98.3 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.2 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.3 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98.4 98 97.1 97.1 97.1 97.1 97.1 97.1 97.1 97.1 97.1 97.2 97.2 97.2 97.2 97.2 97.2 97.2 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3 97.3"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Observación de Presión Arterial

Instance: BiomedicaBP
Title: "Ejemplo de Observación de Presión Arterial"
Description: "Paciente al cual se le realiza la observación"
InstanceOf: BiomedicaBP
Usage: #example

* identifier.value = "18425"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* code.text = "Presión arterial sistolica y diastolica"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* subject = Reference(PacienteCl1) 
* device = Reference(Dispositivo)
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].code.text = "Presión arterial sistolica"
* component[=].valueQuantity = 109 'mm[Hg]' "mmHg"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].code.text = "Presión arterial diastolica"
* component[=].valueQuantity = 44 'mm[Hg]' "mmHg"
* performer = Reference(CorePrestadorCl)


// Ejemplo de Observación de Presión Arterial de multiples valores


Instance: BiomedicaSBP
Title: "Ejemplo de Observación de Presión Arterial"
Description: "Paciente al cual se le realiza la observación"
InstanceOf: BiomedicaSBP
Usage: #example

* identifier.value = "28425"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* code.text = "Presión arterial sistolica y diastolica"
* effectiveDateTime = "2022-09-02T14:22:00+03:00"
* performer = Reference(CorePrestadorCl)
* subject = Reference(PacienteCl1) 
* device = Reference(Dispositivo)
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].code.text = "Presión arterial sistolica"
* component[=].valueSampledData.origin.value = 120
* component[=].valueSampledData.period = 1000 // Intervalo de tiempo entre una muestra y otra en mS (milisegundos)
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "120 119 119 119 119 118 119 119 118 118 118 118 117 117 114 114 114 114 113 113 113 114 114 114 114 114 114 114 114 114 114 116 117 117 118 119 119 119 119 119 118 118 117 117 117 117 126 125 123 123 122 121 115 115 115 114 114 114 113 112 112 112 112 113 113 113 113 116 116 116 116 116 116 116 116 115 115 115 116 117 117 118 119 119 118 118 118 118 119 120 120 120 117 117 117 116 116 116 116 115 115 115 114 114 114 114 114 114 114 113 113 113 113 113 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 113 113 113 113 112 112 112 112 112 112 113 113 113 113 113 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 112 113 113 114 114 114 115 115 115 115 115 117 117 118 119 120 120 117 117 117 117 117 117 117 117 117 117 117 116 116 115 115 114 114 114 114 114 114 114 114 114 114 115 115 115 116 115 115 115 115 115 115 115 123 123 121 121 121 120 118 118 117 116 116 116 115 115 115 115 115 115 115 115 115 115 116 116 115 115 115 115 115 115 116 116 116 115 115 115 114 114 120 119 119 118 117 117 113 113 113 113 113 113 113 113 113 113 113 114 114 115 115 115 115 113 113 113 113 113 113 113 113 113 113 113 112 112 112 112 112 112 112 112 112 113 113 113 113 113 115 115 115 115 115 116 116 116 120 120 122 122 122 124 124 119 119 118 118 117 116 116 121 121 120 119 119 118 115 115 115 115 115 115 116 116 116 116 117 117 117 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 116 119 119 119 119 118 118 118 118 119 119 117 117 116 116 115 115 115 115 115 115 115 115 115 114 114 114 115 115 115 116 116 116 119 119 119 119 119 120 120 119 119 118 118 118 117 117 117 119 118 118 117 117 116 114 114 114 115 115 116 116 115 115 115 115 115 114 114 114 114 114 114 114 114 114 114 114 115 114 114 114 114 114 114 114 114 115 115 115 115 115 115 115 115 114 114 114 114 114 113 113 113 113 115 115 115 115 115 115 115 114 114 114 114 114 113 113 113 113 113 113 113 114 114 114 114 114 114 114 116 117 118 118 119 119 118 118 118 117 117 117 116 116 115 115 115 115 116 116 116 116 116 115 115 115 117 117 117 116 116 115 115 115 115 115 115 116 116 116 116 117 117 117 116 116 115 115 114 115 115 115 114 114 114 114 114 114 114 114 115 115 115 115 113 114 115 115 115 116 115 115 115 115 115 114 114 114 114 114 114 114 114 114 114 114 114 113 113 113 113 113 113 113 113 114 114 114 115 115 116 116 116 116 116 118 118 118 119 129 129 128 128 128 127 127 128 128 126 126 125 125 117 117 117 116 116 116 115 114 114 114 114 114 115 115 116 116"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].code.text = "Presión arterial diastolica"
* component[=].valueSampledData.origin.value = 75
* component[=].valueSampledData.period = 1000 // Intervalo de tiempo entre una muestra y otra en mS (milisegundos)
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "75 75 74 74 74 74 74 74 74 74 74 74 74 74 73 73 73 73 73 73 73 71 71 71 71 71 71 71 71 71 71 74 74 74 74 74 75 73 73 73 73 72 72 72 72 72 75 75 75 75 74 74 72 72 72 72 71 71 71 70 70 70 70 70 70 70 70 74 74 74 73 73 72 72 72 72 72 72 72 72 72 72 72 72 75 75 75 75 75 75 75 75 75 75 75 74 74 74 74 73 73 73 73 73 73 73 72 73 73 73 72 72 72 71 72 72 71 71 71 71 71 71 75 75 75 76 77 77 78 78 83 83 83 82 80 80 79 71 71 71 71 71 71 71 71 71 71 71 70 70 70 70 70 70 71 71 71 71 70 70 70 70 70 70 70 69 69 69 69 69 69 69 71 71 71 71 71 71 71 71 72 72 72 72 72 72 71 71 71 71 72 72 72 72 72 72 72 72 72 71 71 71 71 71 71 71 71 71 71 71 71 72 72 72 72 72 71 71 71 71 71 71 73 73 72 72 72 72 74 74 74 73 73 73 72 72 72 72 72 72 71 71 71 71 71 71 71 71 71 71 71 71 72 72 72 72 72 71 71 71 74 74 73 73 73 73 71 71 71 71 71 71 71 71 71 71 71 71 71 72 72 72 72 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 72 72 72 72 72 72 73 73 73 77 78 78 78 78 79 79 74 74 74 74 73 73 73 73 73 73 73 73 72 71 71 71 71 71 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 73 73 73 73 73 73 73 73 72 72 72 72 72 73 73 73 73 73 73 73 73 73 73 73 73 73 72 73 73 73 72 72 72 72 72 72 71 70 70 70 71 71 71 71 71 74 74 74 74 74 74 74 75 75 75 75 75 75 75 74 76 75 75 75 74 74 72 72 72 72 73 73 73 72 72 72 72 72 72 72 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 71 72 72 72 72 74 74 74 74 74 74 74 72 72 72 72 72 72 71 71 71 71 71 71 71 72 72 72 71 71 71 72 72 72 72 73 73 73 72 73 73 73 73 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 71 71 71 72 72 72 72 72 74 74 74 74 74 74 74 74 74 74 73 73 72 72 71 71 71 71 71 72 72 72 72 70 71 71 71 71 71 71 71 71 71 71 71 71 70 71 71 71 71 71 71 71 71 71 70 70 70 70 69 70 70 70 70 71 71 71 72 72 72 72 73 73 74 74 75 75 82 82 81 81 81 80 80 80 79 78 78 78 77 74 74 74 73 73 73 72 71 71 72 72 72 72 72 73 73"
