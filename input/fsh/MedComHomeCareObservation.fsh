Profile: MedComHomeCareObservation
Parent: MedComCoreObservation
Id: medcom-homeCare-observation
Title: "MedComHomeCareObservation"
Description: "This is a profile intendet to be use in MedCom HomeCareObservations standards , to structure results from HomeCare. "
* effectiveDateTime MS 
* effectivePeriod MS
* note ^short = "The Note (Danish: analyse kommentar) shall contain a comment about the actual observation."
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding ^slicing.description = "Slice of observation codes"
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





// Instancer for observationer
Instance: 7fcb76a7-839b-4392-a2ff-f30035faca34
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Spot test of the patient"
Description: "Spot test performed by acute care team on the subject."
* status = #final
* code.coding[NPU] = $NPU#NPU19748 "C-reaktivt protein [CRP];P"
* valueQuantity.value = 26
* valueQuantity.unit = "mg/l"
* code.coding[NPU] = $NPU#02319 "Hæmoglobin;B"
* valueQuantity.value = 7.8
* valueQuantity.unit = "mmol/l"
* effectiveDateTime = 2023-07-12
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)