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