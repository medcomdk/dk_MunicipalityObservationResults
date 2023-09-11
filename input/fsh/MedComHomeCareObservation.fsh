Profile: MedComHomeCareObservation
Parent: MedComCoreObservation
Id: medcom-homeCare-observation
Title: "MedComHomeCareObservation"
Description: "This is a profile intended to be use in HomeCareObservations standard, to hold information about the observation. "
* effectiveDateTime MS 
* valueQuantity 1..1 MS
* valueQuantity
  * ^maxLength = 12
* code.coding[NPU].system from $NPUObservationCodesValueSet 
* code.coding[MedCom].system = $Medcom (exactly)
* interpretation MS
* interpretation from $obsInterpretation
* interpretation.coding.code = 'NI'
// * obeys medcom-homecareObservation-1
 


// Invariant: medcom-homecareObservation-1
// Description: "There shall exist a Interpretation code 'Not Interpreted' when valueQuantity is sent. "
// Expression: "if(valueQuantity.value.exists(),interpretation.coding.code = 'NI',true)"
// Severity: #error




// Instancer for observationer
//Spotprøver
Instance: 7fcb76a7-839b-4392-a2ff-f30035faca34
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "C-reaktive protein [CRP];P"
Description: "C-reaktive protein [CRP] test performed by acute care team on the subject."
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU19748 "C-reaktivt protein [CRP];P"
* valueQuantity.value = 26
* valueQuantity.unit = "mg/L"
* effectiveDateTime = 2023-07-12T10:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI


Instance: f70ae8b7-c1af-44a2-a21a-570c552dd7cc
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Observation of the haemoglobin"
Description: "Observation of the haemoglobin"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU02319 "Hæmoglobin;B"
* valueQuantity.value = 7.8
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2023-07-12T10:25:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI




Instance: 1b089a05-0a5f-479d-9cbd-921a13470221
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Leukocyt Observation"
Description: "Test of leucocyte on the subject by acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU02593 "Leukocytter;B"
* valueQuantity.value = 9.1
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-07-12T10:27:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI

Instance: 4a94a70e-6957-47a8-bec7-3e27b3145668
InstanceOf:  MedComHomeCareObservation
Usage: #example
Title: "Lymphocyte observation"
Description: "Lymphocyte observation on the subject by acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU02636 "Lymfocytter;B"
* valueQuantity.value = 2.6
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-07-12T10:30:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI



Instance: d2b89faa-979a-430d-8887-21ccdf6f238b
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Monocytes observation"
Description: "Monocytes observation performed on o subject by the acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU02840 "Monocytter;B"
* valueQuantity.value = 0.7
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-07-12T10:32:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI

Instance: f84143f7-f586-477f-af56-e50c7d152605
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Neutrophilocytes observation"
Description: "Neutrophilocytes observation performed on o subject by the acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU02902 "Neutrofilocytter;B"
* valueQuantity.value = 10.1
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-07-12T10:34:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI


Instance: b22fcbe0-4977-433e-ad1c-d6545bc8c1cb
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Eosinofilocyt observation"
Description: "Eosinofilocyt observation performed on a subject by the auce care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU01933 "Eosinofilocytter;B"
* valueQuantity.value = 0.10
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-07-12T10:36:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI



Instance: 1e2351e2-77df-4135-a77b-6a4c39e4a4ca
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Basofilocyt observation "
Description: "Basofilocyt observation performed on a subject by the auce care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU01349 "Basofilocytter;B"
* valueQuantity.value = 0.05
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-07-12T10:38:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI

Instance: 0e4a5452-1804-42d3-82ed-484df20a09f0
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Glucose measurement"
Description: "Glucose measurement on the subject. "
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU22089 "Glukose;P(kB)"
* valueQuantity.value = 6.8
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2023-07-12T10:40:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI


Instance: 470d39e4-d3f9-4301-82eb-b957ba33475e
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Coagulation factor test"
Description: "Coagulation factor on the subject"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU01685 "Koagulationsfaktor II+VII+X [INR];P"
* valueQuantity.value = 0.9
* effectiveDateTime = 2023-07-12T10:42:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI







//Urinstix
Instance: 4b8f899a-df12-4301-8287-9a77d46ded3d
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Urine dipstick tests"
Description: "Urine dipstick tests on Bruno "
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU04206 "Protein(semikvant);U"
* valueQuantity.value = 1
* valueQuantity.unit = "+"
* effectiveDateTime = 2023-07-13T12:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI

Instance: f58819ff-d727-4740-a4ef-44eefc77022e
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Nitrite observation"
Description: "Nitrit observation on Bruno"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU21578 "Nitrit(semikvant);U"
* valueString = "Negative" 
* effectiveDateTime = 2023-07-13T12:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI

Instance: 2fc2c078-825b-491d-9f8e-34926eb4f06f
InstanceOf: MedComHomeCareObservation 
Usage: #example
Title: "Leukocyt urine test"
Description: "Test of leucocyt using urine dipstick"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = #NPU03987
* valueQuantity.value = 2
* valueQuantity.unit = "+"
* effectiveDateTime = 2023-07-13T12:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* interpretation.coding.code = $obsInterpretation#NI
