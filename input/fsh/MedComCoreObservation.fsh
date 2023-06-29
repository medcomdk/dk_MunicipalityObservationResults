Profile: MedComCoreObservation
Parent: Observation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation resource to use in MedCom Laboratory and HomeCare profiles. "
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding ^slicing.description = " Slice of observation codes"
* code.coding contains 
    NPU 0..1 and
    MedCom 0..1
* code.coding[NPU]
  * ^short = "NPU code for the observation. NPU codes are administred by the Danish Health Data Authority." 
  * system 1..
  * system = $NPU (exactly)
  * code 1..
* code.coding[MedCom] 
  * ^short = "MedCom code for the observation. MedCom codes are administred by the MedCom."
  * system 1..
  * system = $Medcom (exactly)
  * code 1..
* status 1..1 MS
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* basedOn 0..1 MS
* basedOn only Reference(MedComCoreServiceRequest)
* effectiveDateTime MS
* code MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(MedComCoreObservationProducerOrg)
* value[x] MS
* valueQuantity.system = $ucum
* note MS
