Alias: $CorePacienteCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl
Alias: $CoreOrganizacionCl = http://DisenodatosDDMM.uv.cl/StructureDefinition/CoreOrganizacionCl

Profile: Dispositivo
Parent: Device
Id: PerfilDispositivo
Title: "Perfil de Dispositivo"
Description: "Este perfil se ha modelado con el fin de cubrir las necesidades de la escuela de Ingenieria Civil Biomedica de un Recurso Dispositivo para el formato de los datos de los DDMM"
* ^url = "http://DisenodatosDDMM.uv.cl/StructureDefinition/PerfilDispositivo"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "Nicolas Mendoza"
* ^contact.name = "Nicolas Mendoza"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://DisenodatosDDMM.uv.cl/infosalud.uv"
* identifier 1.. MS
* identifier ^short = "Identificación dispositivo médico"
* identifier ^definition = "Identificación asignada para la diferenciación de los dispositivos utilizados en la escuela de ingeniería biomédica"
* identifier.value 1.. MS
* identifier.value ^short = "El valor que es único dentro del sistema."
* identifier.value ^definition = "Valor asignado del formato de identificación escogido"
* status 1.. MS
* status = #active
* status ^short = "Estado del equipo médico" 
* status ^definition = "Determina el estado del dispositivo con el valueSet FHIRDeviceStatus (Activo | Inactivo | Ingresado por error | Desconocido), para este caso de uso se fija en 'active' el estado de los dispositivos médicos"
* deviceName 1..* MS
* deviceName ^short = "Nombre y tipo de nombre del dispositivo médico"
* deviceName ^definition = "Nombre de dispositivo médico asignado por la terminología escogida en su tipo de nombre"
* deviceName.name 1.. MS
* deviceName.name ^short = "Nombre del dispositivo medico"
* deviceName.name ^definition = "Nombre del dispositivo medico"
* deviceName.type 1.. MS
* deviceName.type = #user-friendly-name
* deviceName.type ^short = "Tipo de nombre asignado al dispositivo médico"
* deviceName.type ^definition = "Tipo de nombre asignado al dispositivo médico (Se fijo 'user-friendly-name' para dar mayor libertad al nombre asignado)"
* patient 1.. MS
* patient only Reference($CorePacienteCl)
* patient ^short = "Usuario paciente del dispositivo"
* patient ^definition = "Corresponde al paciente en el cual se utiliza el dispositivo médico"
* owner 1.. MS
* owner only Reference($CoreOrganizacionCl)
* owner ^short = "Organización responsable del dispositivo"
* owner ^definition = "Corresponde a la organización que es responsable del dispositivo médico"
