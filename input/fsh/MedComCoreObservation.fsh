Profile: MedComCoreObservation
Parent: DkCoreObservation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation resource to use in MedCom Laboratory and HomeCare profiles. "
* status MS
* basedOn 0..1 MS
* basedOn only Reference(MedComCoreServiceRequest)
* code MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreOrganization or MedComCoreCareTeam or MedComCorePractitionerRole)
* value[x] MS
* note MS
* specimen 0..1 MS
* specimen only Reference(MedComCoreSpecimen)
