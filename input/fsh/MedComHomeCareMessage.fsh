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
Title: "HomeCareDiagnosticRepport-Spot test and EKG image"
Description: "Example of a HomeCareDiagnosticRepport-Spot Test and EKG image."
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
* entry[+].fullUrl = "Media/cb277ee2-5d96-4762-829d-d36449b2b17f"
* entry[=].resource = cb277ee2-5d96-4762-829d-d36449b2b17f


Instance: faa0c104-0ebf-49cb-bad1-9e0f59436e18
InstanceOf: MedComHomeCareObservationMessage
Title: "HomeCareDiagnosticRepport-Urine dipsticks and subject refused consent."
Description: "Example of a HomeCareDiagnosticRepport-Urine dipsticks and subject refused consent."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-07-13T12:00:00+01:00
* entry[+].fullUrl = "MessageHeader/e9f4cc68-b1b7-46b2-ba74-7cc39a914bfa"
* entry[=].resource = e9f4cc68-b1b7-46b2-ba74-7cc39a914bfa
* entry[+].fullUrl = "Subject/99f5578f-c9d3-4d8c-aa3e-21690e03e27c"
* entry[=].resource = 99f5578f-c9d3-4d8c-aa3e-21690e03e27c
* entry[+].fullUrl = "DiagnosticReport/6d08f000-33cc-41f3-a7c2-c086d53d31a7"
* entry[=].resource = 6d08f000-33cc-41f3-a7c2-c086d53d31a7
* entry[+].fullUrl = "PractitionerRole/4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf"
* entry[=].resource = 4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf
* entry[+].fullUrl = "Practitioner/be9f367d-a84a-4815-90a8-c83a03813fd8"
* entry[=].resource = 7c7f31d6-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Organization/d1c1fa90-2c7e-4dd7-b2e8-e40281635a98"
* entry[=].resource = d1c1fa90-2c7e-4dd7-b2e8-e40281635a98
* entry[+].fullUrl = "Organization/d1c1fa90-2c7e-4dd7-b2e8-e40281635a98"
* entry[=].resource = d1c1fa90-2c7e-4dd7-b2e8-e40281635a98
* entry[+].fullUrl = "Provenance/4c845e97-04b2-40e9-ab51-4c5bf080196f"
* entry[=].resource = 4c845e97-04b2-40e9-ab51-4c5bf080196f




Instance: 401cbc36-db1e-4fe0-bf90-6df331dde179
InstanceOf: MedComHomeCareObservationMessage
Title: "HomeCareDiagnosticRepport with clinical and analysis comment."
Description: "Example of a HomeCareDiagnosticRepport with clinical and analysis comment."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-07-13T12:00:00+01:00
* entry[+].fullUrl = "MessageHeader/8dbf63f4-b784-4d40-8802-c1bdb1ecfa63"
* entry[=].resource = 8dbf63f4-b784-4d40-8802-c1bdb1ecfa63
* entry[+].fullUrl = "Subject/bbcd4817-1c4b-4089-a712-346f65ec16f9"
* entry[=].resource = bbcd4817-1c4b-4089-a712-346f65ec16f9
* entry[+].fullUrl = "DiagnosticReport/efb1ed12-6a5d-4342-9572-861071644e46"
* entry[=].resource = efb1ed12-6a5d-4342-9572-861071644e46
* entry[+].fullUrl = "PractitionerRole/80284c01-1674-45ca-98b7-d1e669bdeff6"
* entry[=].resource = 80284c01-1674-45ca-98b7-d1e669bdeff6
* entry[+].fullUrl = "Practitioner/70f14d25-0979-4192-8da2-0c0a3950f4b1"
* entry[=].resource = 70f14d25-0979-4192-8da2-0c0a3950f4b1
* entry[+].fullUrl = "Organization/1ab9c2d9-c348-4d75-9122-60ea8a6fdcf13"
* entry[=].resource = 1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1
* entry[+].fullUrl = "Organization/a0330c62-fe29-4719-83fa-a94959084f29"
* entry[=].resource = a0330c62-fe29-4719-83fa-a94959084f29
* entry[+].fullUrl = "Provenance/008e1c02-605d-458e-8cb8-3eeb16a69aac"
* entry[=].resource = 008e1c02-605d-458e-8cb8-3eeb16a69aac
* entry[+].fullUrl = "Media/cb277ee2-5d96-4762-829d-d36449b2b17f"
* entry[=].resource = cb277ee2-5d96-4762-829d-d36449b2b17f



Instance: 73996cdc-3192-4d15-bd16-c365ef0085e7
InstanceOf: MedComHomeCareObservationMessage
Title: "Modified HomeCareDiagnosticRepport message."
Description: "Example of a Modified HomeCareDiagnosticRepport with clinical and analysis comment."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-07-13T12:00:00+01:00
* entry[+].fullUrl = "MessageHeader/07eb074b-be00-47e5-8bcb-484990a1a97e"
* entry[=].resource = 07eb074b-be00-47e5-8bcb-484990a1a97e
* entry[+].fullUrl = "Subject/bbcd4817-1c4b-4089-a712-346f65ec16f9"
* entry[=].resource = bbcd4817-1c4b-4089-a712-346f65ec16f9
* entry[+].fullUrl = "DiagnosticReport/cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919"
* entry[=].resource = cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919
* entry[+].fullUrl = "PractitionerRole/80284c01-1674-45ca-98b7-d1e669bdeff6"
* entry[=].resource = 80284c01-1674-45ca-98b7-d1e669bdeff6
* entry[+].fullUrl = "Practitioner/70f14d25-0979-4192-8da2-0c0a3950f4b1"
* entry[=].resource = 70f14d25-0979-4192-8da2-0c0a3950f4b1
* entry[+].fullUrl = "Organization/1ab9c2d9-c348-4d75-9122-60ea8a6fdcf13"
* entry[=].resource = 1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1
* entry[+].fullUrl = "Organization/a0330c62-fe29-4719-83fa-a94959084f29"
* entry[=].resource = a0330c62-fe29-4719-83fa-a94959084f29
* entry[+].fullUrl = "Provenance/008e1c02-605d-458e-8cb8-3eeb16a69aac"
* entry[=].resource = 008e1c02-605d-458e-8cb8-3eeb16a69aac
* entry[+].fullUrl = "Provenance/8ce47645-4d69-4fa6-a51d-c2bb49d87efb"
* entry[=].resource = 8ce47645-4d69-4fa6-a51d-c2bb49d87efb
