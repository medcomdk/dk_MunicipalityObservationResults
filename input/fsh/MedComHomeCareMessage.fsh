Profile: MedComHomeCareObservationMessage
Parent: MedComMessagingMessage
Id: medcom-homecare-message
Title: "MedComHomeCareObservationMessage"
Description: "The HomeCareObservation Message is used exchange of the observations results performed by the municipal acute care team to the general practitioner."
* obeys medcom-homecareObsMessage-1


Invariant: medcom-homecareObsMessage-1
Description: "The MessageHeader shall conform to medcom-MedComHomeCareObservation-messageHeader profile"
Severity: #error
Expression: "entry.resource.ofType(MessageHeader).conformsTo('http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecareobservation-MessageHeader')"




Instance: add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
InstanceOf: MedComHomeCareObservationMessage
Title: "New HomeCareDiagnosticRepport message."
Description: "Example of a HomeCareDiagnosticRepport new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-07-13T12:00:00+01:00
* entry[+].fullUrl = "MessageHeader/8dbf63f4-b784-4d40-8802-c1bdb1ecfa63"
* entry[=].resource = 8dbf63f4-b784-4d40-8802-c1bdb1ecfa63
* entry[+].fullUrl = "Subject/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "DiagnosticReport/870333ac-3134-4ae6-8257-86e0b0537c5f"
* entry[=].resource = 870333ac-3134-4ae6-8257-86e0b0537c5f
* entry[+].fullUrl = "PractitionerRole/6ff69f1c-690d-11ed-9022-0242ac120002"
* entry[=].resource = 6ff69f1c-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Practitioner/7c7f31d6-690d-11ed-9022-0242ac120002"
* entry[=].resource = 7c7f31d6-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Organization/42541447-b58c-4a1a-9514-02b80494bbd3"
* entry[=].resource = 42541447-b58c-4a1a-9514-02b80494bbd3
* entry[+].fullUrl = "Organization/ef5cb9a6-835f-4d18-a34e-179c578b9a2a"
* entry[=].resource = ef5cb9a6-835f-4d18-a34e-179c578b9a2a
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
