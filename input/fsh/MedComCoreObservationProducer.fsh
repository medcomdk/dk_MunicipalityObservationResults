Profile: MedComCoreObservationProducerOrg
Parent: Organization
Id: medcom-core-observationporducerorg
Title: "MedComObservationProducerOrganisation"
Description: "This profile is intended to be used to represend the performer of the observations results."
* identifier 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    ProducentID 0..1 and
    Kommunekode 0..1 
* identifier[ProducentID].system 1..1 MS
* identifier[ProducentID].system = $ProducenID  
* identifier[ProducentID].value 1..1 MS
* identifier[ProducentID] ^short = "Offical MedCom code for the organization that performed observation results."
* identifier[Kommunekode] ^short = "[DA] Kommunekode"
  * system 1.. MS
  * system = "http://hl7.dk/fhir/core/CodeSystem/dk-core-municipality-codes" (exactly) 
  * value 1.. MS
  * value from $MunicipalityCodes (required) 