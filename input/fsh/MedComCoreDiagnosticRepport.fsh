Profile: MedComCoreDiagnosticRepport
Parent: DiagnosticReport
Id: MedComCoreDiagnosticRepport
Title: "MedComCoreDiagnosticRepport"
Description: ""
* basedOn 0..1 MS
* basedOn only Reference(MedComCoreServiceRequest)
* status MS
* category 0..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreOrganization)
* encounter 
* encounter only Reference(MedComCoreEncounter)
* conclusion MS 
* result MS
* specimen MS
* specimen only Reference(MedComCoreSpecimen)