Profile: MedComCoreProducerOrganization
Parent: DkCoreOrganization
Id: medcom-producer-organization
Title: "MedComCoreProducerOrganization"
Description: "This profile is intended to be used to represend the producer of the observations results."
* identifier 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    ProducentID 1..1 
* identifier[ProducentID].system 1..1 MS
* identifier[ProducentID].system = $ProducenID  
* identifier[ProducentID].value 1..1 MS
* identifier[ProducentID] ^short = "Offical MedCom code describing the producer of the observation."
* identifier[KOMBIT-ORG-ID] 0..0
* identifier[Regionskode] 0..0 
* identifier[CVR-ID] 0..0 
// * identifier[Kommunekode] ^short = "(Danish: Kommunekode) Shall be inculded when sending a HomeCareDiagnosticReport. "
//   * system 1.. MS
//   * system = "http://hl7.dk/fhir/core/CodeSystem/dk-core-municipality-codes" (exactly) 
//   * value 1.. MS
//   * value from $MunicipalityCodes (required) 