# Home

## Introduction
This implementation guide (IG) is provided by MedCom to describe the use of FHIR ®© in message based exchange of HomeCare Observations between the general practitioner and homecare.

This IG contains profiles for MedCom HomeCareObservations (Dansk: KommunalePrøvesvar) which is used to 


### HomeCareObservations 
<!-- Indsæt diagram over diagnostic repport struktur og beskriv den. -->


#### MedComHomeCareRepport

#### MedComHomeCareObservation

#### MedcomHomeCareSpecimen 

#### MedComCorePatient
The [MedComCorePatient](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a HospitalNotification message. However, a HospitalNotification message may only be exchanged for patients with an official Danish civil person register (CPR)-number

#### MedComCorePractitioner 

#### MedComCoreOrganization 
The [MedComCoreOrganization](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html) profile is used in a HospitalNotification message to describe the serviceprovider organisation, which is the organisation responsible for the patient's admission.

#### MedComMessagingProvenance

#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

## Download 
Content in this IG can be downloaded in npm format under [Download](https://medcomfhir.dk/ig/MedComHomeCareObservations/downloads.html). This can be used to validate locale FHIR profiles against.

## Documentation
On the [introduction page for HomeCareObservations](https://medcomdk.github.io/dk-medcom-homecareobservations/) the following documentation can be found: 
* Clinical guidelines
* Use cases

## Governance 

## Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

## Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).



