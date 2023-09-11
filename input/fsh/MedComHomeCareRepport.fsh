Profile: MedComHomeCareDiagnosticReport
Parent: MedComCoreDiagnosticReport
Id: medcom-homecare-diagnosticreport
Title: "MedComHomeCareDiagnosticReport"
Description: "This resource is intenden to be used in relation when a HomeCareObservation message"
* conclusion ^short = "A comment relevant for all observations in the report and necessary to interpret and understand the results (Danish:Klinisk kommentar)."
* result only Reference(MedComHomeCareObservation)
* result ^type.aggregation = #bundled
* performer 2..2 MS
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer ^slicing.ordered = false
* performer ^slicing.description = " Slice of observation codes"
* performer contains 
    ProducerOrganization 1..1 and
    PractitionerRole 1..1
* performer[ProducerOrganization] only Reference(MedComCoreProducerOrganization)
* performer[ProducerOrganization] ^type.aggregation = #bundled
* performer[ProducerOrganization] ^short = "Producer organization of the observations. Shall include a producer-ID (Danish: Producent-ID) of the producer"
* performer[PractitionerRole] only Reference(MedComCorePractitionerRole)
* performer[PractitionerRole] ^type.aggregation = #bundled
* performer[PractitionerRole] obeys medcom-homecareReport-1
* performer[PractitionerRole] obeys medcom-homecareReport-2
* performer[PractitionerRole] obeys medcom-homecareReport-3
* performer ^short = "Performer of the observations. Shall include a name, practitioner role, relevant telephone of the producer."

Invariant: medcom-homecareReport-1
Description: "There shall exist a practitioner role when using a PractitionerRole as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().code.coding.code.exists()"

Invariant: medcom-homecareReport-2
Description: "There shall exist a name of the healtcare worker that performed the observations, as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().name.exists()"

Invariant: medcom-homecareReport-3
Description: "There shall exist a telecom to the organization form the healthcare worker is part of, as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().telecom.exists()"



Instance: 870333ac-3134-4ae6-8257-86e0b0537c5f
InstanceOf: MedComHomeCareDiagnosticReport
Usage: #example
Title: "HomeCareObservation repport: spot test and EKG"
Description: "Spot test performed by the acute care team on a subject."
* status = $StatusCodeDiagnosticReportSystem#final
* issued = 2023-07-13T12:24:08+02:00
* code = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer[ProducerOrganization] = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* performer[PractitionerRole] = Reference(6ff69f1c-690d-11ed-9022-0242ac120002)
* result[+] = Reference(7fcb76a7-839b-4392-a2ff-f30035faca34)
* result[+] = Reference(f70ae8b7-c1af-44a2-a21a-570c552dd7cc)
* result[+] = Reference(1b089a05-0a5f-479d-9cbd-921a13470221)
* result[+] = Reference(4a94a70e-6957-47a8-bec7-3e27b3145668)
* result[+] = Reference(d2b89faa-979a-430d-8887-21ccdf6f238b)
* result[+] = Reference(f84143f7-f586-477f-af56-e50c7d152605)
* result[+] = Reference(b22fcbe0-4977-433e-ad1c-d6545bc8c1cb)
* result[+] = Reference(1e2351e2-77df-4135-a77b-6a4c39e4a4ca)
* result[+] = Reference(0e4a5452-1804-42d3-82ed-484df20a09f0)
* result[+] = Reference(470d39e4-d3f9-4301-82eb-b957ba33475e)
* media.link = Reference(cb277ee2-5d96-4762-829d-d36449b2b17f)




Instance: 6d08f000-33cc-41f3-a7c2-c086d53d31a7
InstanceOf: MedComHomeCareDiagnosticReport
Usage: #example
Title: "HomeCareObservation repport: Urine dipsticks tests "
Description: "Urine dipstick tests performed by the acute care team on a subject."
* status = $StatusCodeDiagnosticReportSystem#final
* issued = 2023-07-12T12:24:08+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer[ProducerOrganization] = Reference(6aee2d64-c96c-4a47-ad41-d083d418f123)
* performer[PractitionerRole] = Reference(6ff69f1c-690d-11ed-9022-0242ac120002)
* result[+] = Reference(4b8f899a-df12-4301-8287-9a77d46ded3d)
* result[+] = Reference(f58819ff-d727-4740-a4ef-44eefc77022e)
* result[+] = Reference(2fc2c078-825b-491d-9f8e-34926eb4f06f)