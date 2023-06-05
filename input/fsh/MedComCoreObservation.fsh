Profile: MedComCoreObservation
Parent: Observation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation resource to use in MedCom Laboratory and HomeCare profiles. "
* identifier 1..1 MS
* status MS
* basedOn 0..1 MS
* basedOn only Reference(MedComCoreServiceRequest)
* category 0..1 MS
* code MS
* subject MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 0..1 MS
* performer only Reference(MedComCoreOrganization or MedComCorePractitioner or MedComCoreCareTeam)
* value[x] 0..1 MS
* interpretation MS
* note MS
* referenceRange MS
    * referenceRange.type MS
* specimen 0..1 MS
* specimen only Reference(MedComCoreSpecimen)
