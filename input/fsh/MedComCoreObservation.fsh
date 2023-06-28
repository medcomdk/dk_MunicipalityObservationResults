Profile: MedComCoreObservation
Parent: Observation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation resource to use in MedCom Laboratory and HomeCare profiles. "
* status 1..1 MS
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* basedOn 0..1 MS
* basedOn only Reference(MedComCoreServiceRequest)
* code MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreObservationProducerOrg)
* value[x] MS
* note MS
