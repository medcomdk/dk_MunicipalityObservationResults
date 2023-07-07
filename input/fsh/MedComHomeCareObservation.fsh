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