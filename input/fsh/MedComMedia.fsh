Profile: MedComMedia
Parent: Media
Id: medcom-media
Title: "MedComMedia"
Description: "Profile to express "
* status MS
* type 1..1 MS
* identifier 1..1 MS
* identifier only MedComAttachmentIdentifier
* operator 0..1 MS
* operator only Reference(MedComCorePractitioner or MedComCorePractitionerRole)
* content.contentType MS
* content.contentType from $Mimetypes
* issued MS 
* issued ^short = "The date/time this version was made."
* note 1..1 MS
* note ^short = "The name of the file shall be written her."
* operator obeys medcom-homecareReport-5
* obeys medcom-homecareReport-6


Invariant: medcom-homecareReport-5
Description: "There shall exist a practitioner role when using a PractitionerRole as author of the attached file ."
Severity: #error
Expression: "reference.resolve().code.coding.code.exists()"

Invariant: medcom-homecareReport-6
Description: "There shall exist a name of the healtcare worker that performed the observations, as author of the attached file ."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().name.exists()"


Instance: cb277ee2-5d96-4762-829d-d36449b2b17f
InstanceOf: MedComMedia
Usage: #example
Title: ""
Description: ""
* 