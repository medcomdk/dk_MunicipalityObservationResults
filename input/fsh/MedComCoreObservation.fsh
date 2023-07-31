Profile: MedComCoreObservation
Parent: Observation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation profile intended to be used in MedCom's Laboratory and HomeCare standards. "
* status 1..1 MS
* status from $ObsStatusCodes
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
// * basedOn 0..1 MS
// * basedOn only Reference(MedComCoreServiceRequest)
* effectiveDateTime MS 
* effectiveDateTime ^short = "Tha date and time the sample was taken (Danish: prøvetegningstidspunkt)."
* code MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
// * issued  MS
// * issued ^short = "The date and time this version of the observation result was made.  "
* value[x] MS
* valueQuantity.system = $ucum
* note MS
* note ^short = "A comment on the individual result (Danish: Analysekommentar)"
* referenceRange 0..* MS
