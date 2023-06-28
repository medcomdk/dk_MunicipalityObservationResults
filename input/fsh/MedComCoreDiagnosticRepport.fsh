Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report onating all results form observations. "
* basedOn 0..1 MS
* basedOn only Reference(ServiceRequest)
* status 1..1 MS
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* category 0..1 MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient) 
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreObservationProducerOrg)
* result MS
* result only Reference(MedComCoreObservation)
* presentedForm 0..1 
* presentedForm.contentType = #application/pdf 
* conclusion 0..1 MS