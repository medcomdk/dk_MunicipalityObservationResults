Profile: MedComHomeCareObservationMessage
Parent: MedComMessagingMessage
Id: medcom-homecare-message
Title: "MedComHomeCareObservationMessage"
Description: "This resource is intenden to be used in relation with the project called HomeCareObservations"
* obeys medcom-homecareObsMessage-1


Invariant: medcom-homecareObsMessage-1
Description: "The MessageHeader shall conform to medcom-careCommunication-messageHeader profile"
Severity: #error
Expression: "entry.resource.ofType(MessageHeader).conformsTo('http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecareobservation-MessageHeader')"