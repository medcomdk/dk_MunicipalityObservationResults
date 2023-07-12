/* 
Instanser anvendt til at generere eksempler 
*/

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
InstanceOf: MedComMessagingOrganization 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "1144561000016002" 
* identifier[EAN-ID].value = "5790000123117" 
* name = "Pleje og Rehabilitering"

//Performer instance-new message
Instance: 6aee2d64-c96c-4a47-ad41-d083d418f123
InstanceOf: MedComCoreObservationProducerOrg 
Title: "Example of a producer organization with a Producer identifier."
Description: "Example of an organization with a Producer identifier."
* identifier[ProducentID].system = $ProducenID
* identifier[ProducentID].value = "KAF"
* identifier[Kommunekode].value = "0751"
* name = "Akut funktion, Århus kommune"


// Reciever instance - new message
Instance: 42541447-b58c-4a1a-9514-02b80494bbd3
InstanceOf: MedComMessagingOrganizationRequester 
Title: "Example of a reciever organization with a SOR, an EAN  and Ydrenummer identifier."
Description: "Example of an organization with a SOR and an EAN and Ydrenummer identifier."
* identifier[SOR-ID].value = "52581000016005" 
* identifier[EAN-ID].value = "5790000127092"
* identifier[Ydernummer].value = "061654"
* extension[RequesterInitials].valueHumanName.given = "KTM"
* name = "Skødstrup Lægepraksis"

//Practitioner - reply message
Instance: 7c7f31d6-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Mathilde"
* name.family = "Burns"

Instance: 6ff69f1c-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(356947dc-551c-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske
