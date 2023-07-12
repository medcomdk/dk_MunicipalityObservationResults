Profile: MedComHomeCareObservationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-homecareobservation-MessageHeader
Title: "MedComHomeCareObservationMessageHeader"
Description: "MessageHeader for HomeCareObservation"
* id ^short = "A unique identifier for each message. This identifier should be globally unique."
* eventCoding = $MessageEvents#homecareobservation-message
* destination[cc] ..0 
* destination.receiver only Reference (MedComMessagingOrganizationRequester)