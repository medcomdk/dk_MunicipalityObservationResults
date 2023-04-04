Profile: MedComCoreObservation
Parent: Observation
Id: MedComCoreObservation
Title: "MedComCoreObservation"
Description: "this profile is a genereal description of an observation"
* status  MS
* basedOn 0..1 MS
* basedOn only Reference(ServiceReqest)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreOrganization)
* value[x] 0..1 MS
* interpretation 0..* MS
