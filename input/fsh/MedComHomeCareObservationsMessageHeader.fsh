Profile: MedComHomeCareObservationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-homecareobservation-MessageHeader
Title: "MedComHomeCareObservationMessageHeader"
Description: "MessageHeader for HomeCareObservation"
* id ^short = "A unique identifier for each message. This identifier should be globally unique."
* eventCoding = $MessageEvents#homecareobservation-message
* destination[cc] ..0 
* destination.receiver only Reference (MedComMessagingOrganizationRequester)




// HomeCareReport new example
Instance: 8dbf63f4-b784-4d40-8802-c1bdb1ecfa63
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message."
Description: "Example of a MessageHeader in a new HomeCareDiagnosticReport message. Valid only if used in a bundle (message)."
Usage: #example
// * destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=52581000016005"
* destination[primary].receiver = Reference(42541447-b58c-4a1a-9514-02b80494bbd3)
* sender = Reference(ef5cb9a6-835f-4d18-a34e-179c578b9a2a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(870333ac-3134-4ae6-8257-86e0b0537c5f)