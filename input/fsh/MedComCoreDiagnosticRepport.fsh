Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report onating all results form observations. "
* basedOn 0..1 MS
* basedOn only Reference(ServiceRequest)
* status MS
* category 0..1 MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient) 
* effectiveDateTime 0..1 MS
* issued 1..1 MS
* note 0..* MS
* performer 1..1 MS
* performer only Reference(MedComCoreOrganization or MedComCorePractitioner or MedComCoreCareTeam or MedComCorePractitionerRole)
* result MS
* result only Reference(MedComCoreObservation)
* specimen MS
* specimen only Reference(MedComCoreSpecimen)
* presentedForm 0..1 
* presentedForm.contentType = #application/pdf 
* conclusion 0..1 MS