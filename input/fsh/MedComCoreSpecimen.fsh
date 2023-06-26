Profile: MedComCoreSpecimen
Parent: Specimen
Id: medcom-core-specimen
Title: "MedComCoreSpecimen"
Description: "Profile to express specimens used to perform laboratory results."
* accessionIdentifier MS
* status 1..1 MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* collection MS
* collection.collectedDateTime MS
* collection.collectedPeriod MS
* collection.collector only Reference(MedComCorePractitioner or MedComCorePractitionerRole) 
* collection.quantity 0..1 MS 
