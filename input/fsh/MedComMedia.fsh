Profile: MedComMedia
Parent: Media
Id: medcom-media
Title: "MedComMedia"
Description: "Profile to express "
* status MS
* type 1..1 MS
* operator 1..1 MS
* operator only Reference(MedComCorePractitioner or MedComCorePractitionerRole)
* content.contentType MS
* content.contentType from $Mimetypes


// Invariant: medcom-homecareReport-5
// Description: "There shall exist a practitioner role when using a PractitionerRole as author in a HomeCare Report."
// Severity: #error
// Expression: "reference.resolve().code.coding.code.exists()"

// Invariant: medcom-homecareReport-6
// Description: "There shall exist a name of the healtcare worker that performed the observations, as author in a HomeCare Report."
// Severity: #error
// Expression: "reference.resolve().practitioner.resolve().name.exists()"