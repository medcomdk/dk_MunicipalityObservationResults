/* 
Instanser anvendt til at generere eksempler 
*/

// Instancer til ny message

Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: ef5cb9a6-835f-4d18-a34e-179c578b9a2a
InstanceOf: MedComCoreProducerOrganization 
Title: "Example of a sender organization with a SOR, an EAN identifier, and ProdcentID"
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "1144561000016002" 
* identifier[EAN-ID].value = "5790000123117" 
* identifier[ProducentID].system = $ProducenID
* identifier[ProducentID].value = "KAF"
* name = "Pleje og Rehabilitering"



// Reciever instance - new message
Instance: 42541447-b58c-4a1a-9514-02b80494bbd3
InstanceOf: MedComMessagingRequesterOrganization 
Title: "Example of a reciever organization with a SOR, an EAN  and Ydrenummer identifier."
Description: "Example of an organization with a SOR and an EAN and Ydrenummer identifier."
* identifier[SOR-ID].value = "52581000016005" 
* identifier[EAN-ID].value = "5790000127092"
* identifier[Ydernummer].value = "061654"
* contact.name.given = "OKM"
* name = "Skødstrup Lægepraksis"


//Akutsygeplerjerske
Instance: b56708c6-2df3-4e4a-a110-2f924b9fc072
InstanceOf: MedComCorePractitioner
Title: "Acute nurse"
Description: "Acute nurse"
* name.given = "Mia"
* telecom.system = #phone
* telecom.value = "+45 05577668"


//Practitioner rolle
Instance: 6ff69f1c-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(b56708c6-2df3-4e4a-a110-2f924b9fc072)
* code = $PractitionerRole#sygeplejerske


// HomeCareDiagnosticReport example - new message
Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(8dbf63f4-b784-4d40-8802-c1bdb1ecfa63)
* occurredDateTime = 2023-09-13T12:24:00+02:00
* recorded = 2023-09-13T12:24:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(ef5cb9a6-835f-4d18-a34e-179c578b9a2a)


// Instancer til ny message Urin stixs
Instance: 99f5578f-c9d3-4d8c-aa3e-21690e03e27c
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: 72cc3a2c-1dda-4b95-b50a-0f7ac19640f4
InstanceOf: MedComCoreProducerOrganization 
Title: "Example of a sender organization with a SOR, and an EAN identifier and producentID."
Description: "Example of an organization with a SOR, an EAN identifier and ProducentID."
* identifier[SOR-ID].value = "1144561000016002" 
* identifier[EAN-ID].value = "5790000123117" 
* identifier[ProducentID].system = $ProducenID
* identifier[ProducentID].value = "KAF"
* name = "Pleje og Rehabilitering"



// Reciever instance - new message
Instance: d1c1fa90-2c7e-4dd7-b2e8-e40281635a98
InstanceOf: MedComMessagingRequesterOrganization 
Title: "Example of a reciever organization with a SOR, an EAN  and Ydrenummer identifier."
Description: "Example of an organization with a SOR and an EAN and Ydrenummer identifier."
* identifier[SOR-ID].value = "52581000016005" 
* identifier[EAN-ID].value = "5790000127092"
* identifier[Ydernummer].value = "061654"
* contact.name.given = "OKM"
* name = "Skødstrup Lægepraksis"


//Akutsygeplerjerske
Instance: be9f367d-a84a-4815-90a8-c83a03813fd8
InstanceOf: MedComCorePractitioner
Title: "Acute nurse"
Description: "Acute nurse"
* name.given = "Mia"
* telecom.system = #phone
* telecom.value = "+45 05577668"


//Practitioner rolle
Instance: 4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(be9f367d-a84a-4815-90a8-c83a03813fd8)
* code = $PractitionerRole#sygeplejerske


// HomeCareDiagnosticReport example - new message
Instance: 4c845e97-04b2-40e9-ab51-4c5bf080196f
InstanceOf: MedComMessagingProvenance
Title: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(e9f4cc68-b1b7-46b2-ba74-7cc39a914bfa)
* occurredDateTime = 2023-09-13T12:24:08+02:00
* recorded = 2023-09-13T12:24:08+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(72cc3a2c-1dda-4b95-b50a-0f7ac19640f4)



//Instancer til ny message med klinisk og analysekommentar 

Instance: bbcd4817-1c4b-4089-a712-346f65ec16f9
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: a0330c62-fe29-4719-83fa-a94959084f29
InstanceOf: MedComCoreProducerOrganization 
Title: "Example of a sender organization with a SOR, and an EAN identifier and producentID."
Description: "Example of an organization with a SOR, an EAN identifier and ProducentID."
* identifier[SOR-ID].value = "1144561000016002" 
* identifier[EAN-ID].value = "5790000123117" 
* identifier[ProducentID].system = $ProducenID
* identifier[ProducentID].value = "KAF"
* name = "Pleje og Rehabilitering"



// Reciever instance - new message
Instance: 1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1
InstanceOf: MedComMessagingRequesterOrganization 
Title: "Example of a reciever organization with a SOR, an EAN  and Ydrenummer identifier."
Description: "Example of an organization with a SOR and an EAN and Ydrenummer identifier."
* identifier[SOR-ID].value = "52581000016005" 
* identifier[EAN-ID].value = "5790000127092"
* identifier[Ydernummer].value = "061654"
* contact.name.given = "O.K.M."
* name = "Skødstrup Lægepraksis"


//Akutsygeplerjerske
Instance: 70f14d25-0979-4192-8da2-0c0a3950f4b1
InstanceOf: MedComCorePractitioner
Title: "Acute nurse"
Description: "Acute nurse"
* name.given = "Mia"
* telecom.system = #phone
* telecom.value = "+45 05577668"


//Practitioner rolle
Instance: 80284c01-1674-45ca-98b7-d1e669bdeff6
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(70f14d25-0979-4192-8da2-0c0a3950f4b1)
* code = $PractitionerRole#sygeplejerske


// HomeCareDiagnosticReport example - new message
Instance: 008e1c02-605d-458e-8cb8-3eeb16a69aac
InstanceOf: MedComMessagingProvenance
Title: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(489de4f2-0d8d-4de2-a7ce-ccb93568799f)
* occurredDateTime = 2023-09-13T12:24:00+02:00
* recorded = 2023-09-13T12:24:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(a0330c62-fe29-4719-83fa-a94959084f29)

// Instanser til en rettelse af HomeCare Rapport 
Instance: 8ce47645-4d69-4fa6-a51d-c2bb49d87efb
InstanceOf: MedComMessagingProvenance
Title: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - modified message"
Description: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - modified message"
Usage: #example
* target = Reference(07eb074b-be00-47e5-8bcb-484990a1a97e)
* occurredDateTime = 2023-09-12T12:30:00+02:00
* recorded = 2023-09-12T12:30:00+02:00
* activity.coding = $HCOActivityCodes#modified-message
* agent.who = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* entity.role = #revision
* entity.what = Reference(489de4f2-0d8d-4de2-a7ce-ccb93568799f)

//Instancer til en annullering af HomeCareRapport 

Instance: babb316c-796c-4d10-b97b-45274b5a0c44
InstanceOf: MedComMessagingProvenance
Title: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - cancelled message"
Description: "HomeCareDiagnosticReport example. The Provenance instance is only valid if used in a bundle (message) - cancelled message"
Usage: #example
* target = Reference(07eb074b-be00-47e5-8bcb-484990a1a97e)
* occurredDateTime = 2023-09-12T13:00:00+02:00
* recorded = 2023-09-12T13:00:00+02:00
* activity.coding = $HCOActivityCodes#retract-message
* agent.who = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* entity.role = #removal
* entity.what = Reference(489de4f2-0d8d-4de2-a7ce-ccb93568799f)


