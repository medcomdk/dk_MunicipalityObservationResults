### Scope and usage 
The MedComHomeCareDiagnosticReport profile contains references to all observation results performed and produced by the municipal acute care team, with the purpose of sending the HomeCareObservation to citizens genereal practitioner. The MedComHomeCareDiagnosticReport is sent as a HomeCareObservation message. 

<figure>
<img alt="Form the HomeCareDiagnosticRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObsProfile.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom HomeCareDiagnosticRepport profile </b></figcaption>
</figure>
<br>
<br>

#### Status 
In a DiagnosticRepport resource, it is required to specify the status of the repport. When all results from performeded observations by the acute care team are typed ind then the HomeCareDiagnosticRepport.status shall be #final.


#### Comments 
In the MedComHomeCareDiagnosticReport it is possible to send comments regarding the performed and produced observation results by the municipal acute care team. There are two types of comments that can be send; analysis comments about individual analysis and results, and a clinical comment (overall nursing assessment) about the entire report.

##### Analysis comment about an individual observation
Analysis comment (Danish: Analysekommentar) is a comment that the user can choose to add, if relevant, to an individual observation result. The element Observation.note in HomeCareObservation profile shall be used when adding a analysis comment about the observation. 

##### Clinical comment (overall nursing assessment)
The clinical comment (Danish: Klinisk kommentar) is a comment to the etntire report. This comment shall contain information that is necessary to provide an overall assessment of the citizen in the acute situation. It is recommended that the municipal acute careteam send the relevant clinical observations (nursing assessment) that are necessary in order to understand and interpret the citizens overall results and health status. When adding a clinical comment the element DiagnosticReport.conclusion shall be used. 

#### Performer 
In the MedComHomeCareDiagnosticReport it is required to describe the performer of the MedComHomeCareDiagnosticReport. The performer is organization that is responsible for creating the HomeCareDiagnosticRepport e.g acute care team . The performer shall be described using a signature and a producer-ID.

##### Signature
It is required to send the siganure of the MedComHomeCareDiagnosticReport performer. The signature consist of: 
* Name: of the person responsible for producing the report. The name shall be described using a [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html).
* Author role: The role (Danish: stillingsbetegnelse) of the person producing the report  shall be described using a [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) 
* Telephone nummer: Relevant telephone number e.g. to the department or organization where the person who is reposnible for the report works. 

##### Producer-ID
The producer-ID is described in [MedComObservationProducerOrganization](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-core-observationporducerorg) profile. 
The producer-ID consist of a three letter code and a municipal code.  <a href ="http://hl7.dk/fhir/core/ValueSet/dk-core-MunicipalityCodes">The municipal code, and the producer-ID, can be found in valuesets exhibited,on terminology server, that can be found here.</a>

The three letter code is exhibited by MedCom and is an abbreviation for the producer (e.g. unit or organization) that is responsible for the observations results. The municipal acute care team  is responsible for performig and producing the observations results in the MedCom HomeCareObservation. Therefore the code for the municiapl acute careteam is "KAF". 
The three letter code is exibited in code system on the terminology IG. <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem-MedComProducentID">Click here to see the code system. </a>

#### Use of security labet on patient consent 
If a patient gives a negative consent to sharing the observation results with other than the general practitioner a securety labe shall be used. 
This mean that the meta.security.code shall be R, and in the user interface, it shall be clearly stated that consent has been refused. 
