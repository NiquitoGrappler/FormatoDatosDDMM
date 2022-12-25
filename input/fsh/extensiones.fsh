// Apellido Materno

Extension: MothersFamily
Id: humanname-mothers-family
Description: "La parte del apellido que se deriva de la madre de la persona."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/humanname-mothers-family"
* ^status = #draft
* ^date = "2015-11-22"
* ^publisher = "Health Level Seven, Inc. - FHIR Core WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/FHIR"
* ^context.type = #element
* ^context.expression = "HumanName.family"
* . 0..*
* . ^short = "Apellido correspondiente a la madre"
* . ^definition = "La parte del apellido que se deriva de la madre de la persona."
* url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/humanname-mothers-family" (exactly)
* value[x] 1..
* value[x] only string
