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
// * performer 1..* MS
// * performer only Reference(MedComCoreObservationProducerOrg or MedComCorePractitionerRole) 
* result MS
* result only Reference(MedComCoreObservation)
* media MS
* conclusion 0..1 MS
* meta.security 0..1 MS
* meta.security = $v3-Confidentiality#R "Restricted" 