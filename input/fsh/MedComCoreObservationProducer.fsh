Profile: MedComCoreObservationProducerOrg
Parent: Organization
Id: medcom-core-observationporducerorg
Title: "MedComObservationProducerOrganisation"
Description: "This profile is intended to be used to represend the performer of the observations results."
* identifier 1..1 MS
* identifier.system = "Producent-ID" 
* identifier ^short = "Offical MedCom code for the organization that performed observation results."
* name MS
* name ^short = "Name of the organization. Shall be present if known by the sender."