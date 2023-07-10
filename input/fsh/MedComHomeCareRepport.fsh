Profile: MedComHomeCareReport
Parent: MedComCoreDiagnosticReport
Id: MedComHomeCareReport
Title: "MedComHomeCareReport"
Description: "This resource is intenden to be used in relation with the project called HomeCareObservations"
* conclusion ^short = "The Conclusion (Danish:Klinisk kommentar) shal contain assessments that are necessary for interpretation and understanding of the measurements and analysis of the results."
* performer 2..2 MS
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "reference"
* performer ^slicing.rules = #open
* performer ^slicing.ordered = false
* performer ^slicing.description = " Slice of observation codes"
* performer contains 
    ProducerOrganization 1..1 and
    PractitionerRole 1..1
* performer[ProducerOrganization] only Reference(MedComCoreObservationProducerOrg)
* performer[PractitionerRole] only Reference(MedComCorePractitionerRole)
* performer[PractitionerRole] obeys medcom-homecareReport-1
* performer[PractitionerRole] obeys medcom-homecareReport-2
* performer[PractitionerRole] obeys medcom-homecareReport-3
* performer ^short = "Performer of the observations repport. Shall include a Name, producerId (Producent-ID), practitioner role, relevant telephone of the producer. "

Invariant: medcom-homecareReport-1
Description: "There shall exist a practitioner role when using a PractitionerRole as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().code.coding.code.exists()"

Invariant: medcom-homecareReport-2
Description: "There shall exist a name of the healtcare worker that performed the observations, as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().name.exists()"

Invariant: medcom-homecareReport-3
Description: "There shall exist a telecom to the organization form the healthcare worker is part of, as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().telecom.exists()"