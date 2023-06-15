Profile: MedComHomeCareRepport
Parent: MedComCoreDiagnosticReport
Id: MedComHomeCareRepport
Title: "MedComHomeCareRepport"
Description: "This resource is intenden to be used in relation with the procet called HomeCareObservations"
* basedOn 0..1 MS
* basedOn only Reference(ServiceRequest)
* status MS
* category 0..1 MS
* subject only Reference(MedComCorePatient or Group or Device)
* effectiveDateTime 0..1 MS
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreCareTeam or MedComCorePractitionerRole)
* conclusion MS 
* result MS
* result only Reference(MedComHomeCareObservation)
* specimen MS
* specimen only Reference(MedComCoreSpecimen)
* presentedForm 0..1 
* presentedForm.contentType= #application/pdf 
