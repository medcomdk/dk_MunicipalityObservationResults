Profile: MedComHomeCareObservation
Parent: MedComCoreObservation
Id: medcom-homeCare-observation
Title: "MedComHomeCareObservation"
Description: "This is a profile intendet to be use in MedCom HomeCareObservations standards , to structure results from HomeCare. "
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
* performer only Reference(MedComCoreOrganization or MedComCorePractitioner or MedComCoreCareTeam or MedComCorePractitionerRole)
* value[x] 0..1 MS
* valueQuantity or valueBoolean
* interpretation MS
* note MS
* referenceRange MS
    * referenceRange.type MS
* specimen 0..1 MS
* specimen only Reference(MedComCoreSpecimen)
