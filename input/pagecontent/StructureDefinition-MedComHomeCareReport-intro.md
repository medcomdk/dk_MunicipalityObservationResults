### Scope and usage 
The MedComHomeCareReport profile is the main profile of the new HomeCareObservation standard. This profile is intended to collect all observations results perforemd by the unicipal acute care team so the repport can be send to patients genereal practitioner. 


#### Comments 
##### Comment about the observation

##### Comment about the Clinical Observation


#### Performer 
In the MedCom HomeCareObservationReport it is required to include [MedComObservationProducerOrganization](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-core-observationporducerorg) profile to represents the performer of the report. 
The MedComObservationProducerOrganization describe producer in formations: 
* Name 
* producer-id (producent-id)
* Relevant telephone 

##### Producer-id
The Producer Id consist of a  letter code an municipal code the [Valueset vit the municipal codes can be found here.](http://hl7.dk/fhir/core/ValueSet/dk-core-MunicipalityCodes) 
The  letter code for the municipal acute care team  is "KAT". 
The producent Id for i.e. Aarhus municipaly will be "KAT0751". 

