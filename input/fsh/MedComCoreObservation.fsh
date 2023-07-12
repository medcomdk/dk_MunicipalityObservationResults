Profile: MedComCoreObservation
Parent: Observation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation resource to use in MedCom Laboratory and HomeCare profiles. "
* status 1..1 MS
* status from $ObsStatusCodes
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
// * basedOn 0..1 MS
// * basedOn only Reference(MedComCoreServiceRequest)
* effectiveDateTime MS 
* effectiveDateTime ^short = "Thea date and time the observation was performed (Danish: prøvetegningstidspunkt)."
* code MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* issued ^short = "The date and time this version of the observation result was made.  "
* value[x] MS
* valueQuantity.system = $ucum
* note MS
* referenceRange 0..* MS
