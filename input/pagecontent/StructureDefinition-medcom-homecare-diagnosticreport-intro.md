### Scope and usage 
The MedComHomeCareDiagnosticReport profile contains references all observations results performed by the municipal acute care team, with the purpose of sending the report to citizens genereal practitioner. 

<figure>
<img alt="Form the HomeCareRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObsProfile.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom HomeCareObservation profile </b></figcaption>
</figure>
<br>
<br>

#### Comments 
In the HomeCareObservation message it is possible to sent comments or anotation regarding the performed observations by the municipal acute care team. There are two types of comments that can be send; comment about the individual observation and a clinical comment about the entire report, hence a comment relevant for all observations included the report. 

##### Comment about the individual observation
Comment about the observation (Danish: Analysekommentar) is a comment that the user can choose to add to a current observation result. The element Observation.note in HomeCareObservation profile shall be used when ading a comment about the observation. 

##### Comment about the clinical comment
The clinical comment (Danish: Klinisk kommentar) is a comment to entire report. Ths comment shall contain information that is necessary to provide an overall assessment of the citizen in the acute situation. It is recommended that the municipal acute careteam send the relevant clinical observations and nursing assessments, which are necessary for the interpretation and understanding of the measurements and observations results. When adding a clinical comment the element DiagnosticReport.conclusion should be used. 

#### Performer 
In the HomeCareDiagnosticReport it is required to describe the performer of the HomeCareDiagnosticReport. The performer shall be described using a signature and a producer-ID.

##### Signature
It is required to send the siganure of the HomeCareDiagnosticReport performer. The signature consist of: 
* Name: of the person responsible for producing the report. The name shall be described using a [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html).
* Role: The role (Danish: stillingsbetegnelse) of the person producing the report and shall be described using a [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) 
* Telephone nummer: Relevant telephone number e.g. to the department or organization where the person who is reposnible for the report works. 

##### Producer-ID
The producer-ID is described in [MedComObservationProducerOrganization](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-core-observationporducerorg) profile. 
The producer-ID consist of a three letter code and a municipal code. The municipal code can be found in valuset exibitetd on Dk terminology IG, <a href ="http://hl7.dk/fhir/core/ValueSet/dk-core-MunicipalityCodes">that can be found here.</a>

The three letter code is exibitted by MedCom and is an abbreviation for the organization that is responsible for the observations results. The municipal acute care team  is responsible for performig the observations and for genereting the observations results in the HomecareObservation standard. Therefore the Code for the municiapl acute careteam is "KAF". 
The three letter code is exibited in code system on the terminology IG. <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem/MedComProducentID">Click here too se th code system. </a>


