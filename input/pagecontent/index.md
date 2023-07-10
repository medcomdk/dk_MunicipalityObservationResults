# Home

## Introduction
This implementation guide (IG) is provided by MedCom to describe the use of FHIR ®© in message based exchange of structured health informations between the municipal acute care team and the general practitioner.  

This IG contains profiles for MedCom HomeCareObservation message (Dansk: Kommunale Prøvesvar). The purpose of the HomeCareObservation message is to send digitised and structured result, from performed obserations by the acute care team to the general prcatitioner. In this way the quality of the observations results can be secure and the general practitioner can easly create an overview of the patients health values and order a right treatment for the patiente. 
The MedCom HomeCareObservation message supports: 
* exchange of the observations that the acute care team had conducted and analyzed
* echachnge of the nursing assessments that are necessary for interpretation and understanding of the measurements and analysis the results

More information about the clinical guidelines for applications can be found here. 

## Standard documentation
The structure of a HomeCareObservation standard is despicted on the following diagram:
<figure>
<img alt="Shows the structure of a HomeCareObservationMessage. The HomeCareObservationMessage includes a MedComHomeCareObservationsMessageHeader and a MedComMessagingProvenance. MedComHomeCareObservationsMessageHeader references a sender and receiver organization, the MedComCoreOrganization and a focus which is a reference to a HomeCare Report. Form the HomeCareRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObservationMessage.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom HomeCareObservation standard </b></figcaption>
</figure>
<br>
<br>

HomeCareObservation follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use. The following sections describe the overall purpose of each profile.


#### MedComHomeCareMessage
The [MedComHomeCareMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecare-message) is constraint of [MedComMessagingMessage](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-message). The MedComHomeCareMessage profille is used to bundle the whole HomeCare Observations together. All referenced resources in the HomeCareObservationmessage shall be contained in the entry list in MedComHomeCareMessage. 

The MedComMessaging require to use the [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecareobservation-MessageHeader) and to require exactly one [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) resource in the message.

#### MedComHomeCareObservationMessageHeader
The [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecareobservation-MessageHeader) constrains the [MedComMessagingMessageHeader](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and constrains the use of carbon-copy destination. 

#### MedComMessagingProvenance
The [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile is used to track information about the activity of the HomeCareObservation message, e.g 'modified-essage' or 'retract-message'. The allowed activity codes for HomeCareObservation message can be found in [MedComHomeCareObservationMessageAcitivityCodes](http://medcomfhir.dk/ig/terminology/ValueSet/medcom-HomeCareObservation-messagingActivities) on the Terminology IG. 

#### MedComMessagingOrgzanizationRequester 
The [MedComMessagningOrganizationRequester]( http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/MedComMessagingOrganizationRequester) profile is used to express the receiver information of the HomeCareRepport. 
The receiver informations consist of inital of the general practitioner that requested the observation, if known, and information about the general practitioners medical practice. The genral practice shal be identified using a SOR-, EAN and Ydrenummer-identifier.
If the initials of the general practitioner are unknown, then the code "unknown" form data- absent reson valuset need to be sent. 

#### MedComHomeCareRepport
The [MedComHomeCareRepport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/MedComHomeCareReport) profile contains the main content of the HomeCareObservation standard. It based
on the Diagnostic Repport resource.  


#### MedComHomeCareObservation
The [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homeCare-observation)


#### MedComCorePatient
The [MedComCorePatient](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a MedComHomeCareObservations message. However, a MedComHomeCareObservations message may only be exchanged for patients with an official Danish civil person register (CPR)-number

#### MedComCoreOrganization 
The [MedComCoreOrganization](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html) profile is used in a MedComHomeCareObservations message to describe the sender and receiver organization of the HomeCareRepport.

#### MedComCoreObservationProducerOrganization
The [MedComCoreObservationProducerOrganization](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-core-observationproducerorg) profile is used in a MedComHomeCareObservation message to represents the organization that is responsible for the observation execution. The MedComCoreObservationProducerOrganization shall be identified using SOR- and EAN-identifier, and a producer-ID. The producer-id consist of a three letter code and a municipal code. The municipal code can be found in valuset exibitetd on Dk terminology IG, <a href ="http://hl7.dk/fhir/core/ValueSet/dk-core-MunicipalityCodes">that can be found here.</a>

The three letter code is exibitted by MedCom and is an abbreviation for the organization that is responsible for the observations results. The municipal acute care team  is responsible for performig the observations and for genereting the observations results in the HomecareObservation standard. Therefore the Code for the municiapl acute careteam is "KAT". 
The three letter code is exibited in code system on the terminology IG. <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem/MedComProducentID">Click here too se th code system. </a>



#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to the [MedCom Core IG](http://medcomfhir.dk/ig/core/), [MedCom Messaging IG](http://medcomfhir.dk/ig/messaging/) and [DK-core v. 2.0.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). These dependencies are currently reflected in MedComHomeCareMessage, and MedComHomeMessageHeader which both inherits from profiles defined MedComMessaging IG. Further, it is reflected in references to MedComCorePatient, MedComCoreEncounter, MedComCoreOrganization and MedComMessagingOrganization.

## Download 
Content in this IG can be downloaded in npm format under [Download](https://medcomfhir.dk/ig/MedComHomeCareObservations/downloads.html). This can be used to validate locale FHIR profiles against.

## Documentation
On the [introduction page for HomeCareObservations](https://medcomdk.github.io/dk-medcom-homecareobservations/) the following documentation can be found: 
* Clinical guidelines
* Use cases



## Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

## Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).



