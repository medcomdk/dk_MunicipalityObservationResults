Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report onating all results form observations. "
* basedOn 0..1 MS
* basedOn only Reference(ServiceRequest)
* status MS
* category 0..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreOrganization)
* encounter MS
* encounter only Reference(MedComCoreEncounter)
* conclusion MS 
* result MS
* result only Reference(MedComCoreObservation)
* specimen MS
* specimen only Reference(MedComCoreSpecimen)