> This IG is developed to be part of a trial test of the communication between the general practitioner and municipal acute care team.


# Home
## Introduction
This implementation guide (IG) is provided by MedCom to describe the use of FHIR ®© in message based exchange of structured health informations between the municipal acute care team and the general practitioner.  

This IG contains profiles for MedCom HomeCareObservation message (Danish: Kommunale Prøvesvar). The purpose of the HomeCareObservation message is to send structured result of observations performed by the acute care team to the general practitioner. In this way the quality of the observations results can be secure and the general practitioner can easly create an overview of the citizens health status and order a right treatment for the citizen. 
The MedCom HomeCareObservation message supports: 
* exchange of the observations that the acute care team has conducted and analyzed
* exchange of the nursing assessments that are necessary to interpretation and understand the results and citizens health status

More information about the clinical guidelines for applications can be found here. 

## Standard documentation
The structure of a HomeCareObservation message is despicted on the following diagram:
<figure>
<img alt="Shows the structure of a HomeCareObservationMessage. The HomeCareObservationMessage includes a MedComHomeCareObservationsMessageHeader and a MedComMessagingProvenance. MedComHomeCareObservationsMessageHeader references a sender and receiver organization, the MedComCoreOrganization and a focus which is a reference to a HomeCare Report. Form the HomeCareRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObservationMessage.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom HomeCareObservation message. </b></figcaption>
</figure>
<br>
<br>

HomeCareObservation message follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use. The following sections describe the overall purpose of each profile.


#### MedComHomeCareObservationMessage
The [MedComHomeCareObservationMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html) is constraint of [MedComMessagingMessage](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-message.html). The MedComHomeCareObservationMessage profile is used to bundle the all observations and relevant information together. All referenced resources in the HomeCareObservationmessage shall be contained in the entry list in MedComHomeCareObservationMessage. 

The MedComMessaging requires to use the [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html) and to require exactly one [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) resource in the message.

#### MedComHomeCareObservationMessageHeader
The [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html) constrains the [MedComMessagingMessageHeader](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and constrains the use of carbon-copy destination. 

#### MedComMessagingProvenance
The [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile is used to track information about the activity of the HomeCareObservation message, e.g 'new-message' or 'modify-message'. The allowed activity codes for HomeCareObservation message can be found in [MedComHomeCareObservationMessageAcitivityCodes](http://medcomfhir.dk/ig/terminology/ValueSet-medcom-HomeCareObservation-messagingActivities.html) on the Terminology IG. 

#### MedComMessagingRequesterOrgnization 
The [MedComMessagingRequesterOrganization]( http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-messaging-requesterorganization.html) profile is used to express the receiver information of the HomeCareRepport. 
This profile represents the receiver of the HomeCareObservation message. The receiver information consist of initial of the general practitioner that requested the observation, if known, and identifiers such as SOR-, EAN and Ydrenummer-identifier to represent the general practitioner.
If the initials of the general practitioner are unknown, then the code "unknown" form [data-absent-reson ValuSet](http://hl7.org/fhir/R4/valueset-data-absent-reason.html) need to be sent. 

#### MedComHomeCareDiagnosticReport
The [MedComHomeCareDiagnosticReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-MedComHomeCareDiagnosticReport.html) profile contains the main content of the HomeCareObservation message. It is inherited from the profile MedComCoreDiagnosticReport. The MedComHomeCareDiagnosticReport shall include observation results performed  by the municipalties acute care team. The profile also includes information about the performer of the observations. Further, it is possible to add Clinical relevant comment regarding the whole repport. [Click here for more information about the coment.](C:\Git_hub\dk_MunicipalityObservationResults\input\pagecontent\StructureDefinition-MedComHomeCareDiagnosticReport-intro.md)

#### MedComHomeCareObservation
The [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html) profile inherits from the MedComCoreObservation profile. This profile includes a code, and value for the observation, and a comment on the individual result , if this comment is relevant to include. The  code shall either be a NPU or MCS code describing the observation. Further, a date and time that defines when the observation was performed shall be added. 


#### MedComCorePatient
The [MedComCorePatient](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a MedComHomeCareObservations message to represents the patient. 

#### MedComMessagingOrganization 
The [MedComMessagingOrganization ](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-messaging-organization.html) profile is used in the MedComHomeCareObservationMessageHeader profile to describe the sender organization of the HomeCareDiagnosticReport.

#### MedComCoreProducerOrganization
The [MedComCoreProducerOrganization](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-producer-organization.html) profile is used in a HomeCareObservation message to represent the organization that is responsible for the collecting the observation results. The MedComCoreProducerOrganization shall be identified using municipality code (Danish: kommunekode), and a producer-ID. The municipality code includes four numbers, that are display in a <a href ="http://hl7.dk/fhir/core/ValueSet-dk-core-MunicipalityCodes.html">ValueSet by HL7-DK</a>. The producer-ID consists of a <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem-MedComProducentID.html">three letter code, which is displayed on the terminology IG</a>. In a receiver system, the interpretation of the two codes will together state that an acute care team from Aarhus municipality (municipality code: 0751) is the producer of the results.



#### Timestamps
The HomeCareObservation message includes several timestamps. These timestamps are present in the profiles [MedComHomeCareDiagnosticReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-diagnosticreport.html), [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html),[MedComHomeCareObservationMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html), and [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) and have different purposes:
* Observation sampling date and time (Danish: Prøvetagningsdato og tidspunkt)
    * Observation.effective.dateTime represents the time when the sample was performed.
    * Observation.effective.period represents the time-period for collecting the sample.
* Report generation date and time (Danish: Genereringsdato og tidspunkt)
    * DiagnosticReport.issued represents the dateTime the version of the report was made. 
* Sending date and time (Danish: Afsendelsesdato og tidspunkt)
    * Bundle.timestamp represents the time Bundle is generated.
    * Provenance.occuredDateTime[x] represents the time the HomeCareObservation message is sent, in a human-readable time
    * Provenance.recorded represents the time the HomeCareObservation  is sent, in a machine-readable time

It is assumed that in most cases, the Bundle.timestamp, provenance.occuredDateTime[x] and provenance.recorded will be equal,as the events happens instantly after eachother. However, there might be systems where the sending is delayed compared to the real world-event and bundle generation, hence will the Provenance timestamps differentiate from Bundle timestamp.

#### Modification and Cancellation of the HomeCareObservationMessage
It is allowed to modify and cancel a HomeCareObservation Message. If the message is modified or cancelled it shall be clearly indicated on the user interface. When sending a modification or cancellation of the HomeCareObservation the MessageHeader.id sholud be the same so the receiver system can see if there are som changes or if the message has been cancelled. 

##### Modify HomeCareObservationMessage
It is a requirement that the sender of HomeCareObservation message can modify an already sent HomeCareObservation message if the user wants to correct the content.
The modification can only happend if the modification is regarding observation sampling date and time, observation result, a clinical comment, an observation comment, content of an attached file (as long as the content is sent to the correct civil registration number (Danish: CPR-nummer)), the initials of the reqesting general practitioner or sender's signature. 

The receiver system shall be able to receive and show modification of an already received HomeCareObservation message. It is also required that the receiver system clearly shows what was modified in the received correction, in the user interface of the receiver system. Further, there shall be traceability to previour received HomeCareObservation message in the receiver system. 

##### Cancel HomeCareObservationReportMessage
The sender of the HomeCareObservationReportMessage shall be able to cancel the already send HomeCareObservationReportMessage if the message if the subject in the message is incorrect, if the message is sent to an incorrect receiver or if the content of an attachement is sent on the wrong subject. 
If the user wants to cancel the message, then the reason of cancellation shall be written in the clinical comment. Alternatively, the user can also add a MedCom's predefined cancellation reason phrases that should be added to the clinical comment. <a href="https://medcomfhir.dk/ig/terminology/CodeSystem-medcom-messaging-cancellation-reason.html">Click here to read the MedCom's predefined cancellation reason phrases</a>. 

The receiver system shall be able to receive a cancellation of the already received HomeCareObservationReportMessage and show clearly that the massage has been canceled in the user interface. The cancelled HomeCareObservationReportMessage should not be deleted for reasons of subsequent traceability, but should instead be archived and clearly marked as cancelled.

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



