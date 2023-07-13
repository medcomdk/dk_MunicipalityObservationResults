Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report conating all observations results. "
// * basedOn 0..1 MS
// * basedOn only Reference(ServiceRequest)
* status 1..1 MS
* status from $StatusCodeDiagnosticRepport
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* category 0..1 MS
* code MS
* code from $DiagnosticReportCode
* subject 1..1 MS
* subject only Reference(MedComCorePatient) 
* issued 1..1 MS
// * performer 1..* MS
// * performer only Reference(MedComCoreObservationProducerOrg or MedComCorePractitionerRole) 
* result MS
* result only Reference(MedComCoreObservation)
* performer MS
* media MS
* conclusion 0..1 MS
* conclusion ^short = "The conclusion may be added to the diagnostic report. The conclusion contains generela information about the clicnical observations/requisition."
* meta.security 0..1 MS
* meta.security = $v3-Confidentiality#R "Restricted" 