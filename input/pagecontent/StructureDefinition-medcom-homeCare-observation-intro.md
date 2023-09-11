### Scope and usage

The MedComHomeCareObservation profile holds information about the observations the municipal acute care team can obtain.The MedComHomeCareObservations are collected in a MedComHomeCareDiagnosticReport, that is sent as a MedComHomeCareObservation message to the general practitioner.
A MedComHomeCareObservation message  shall contains results from perfomed observations by the acute care teams. The observations results needs to have a observation code that defines the type of the observation.
The code for the observation shall be seleceted from a national analysis repertoire, that defines which observations and assesments methods the municipal acute care team can performe and send to the general practitioner. 
The <a href="https://terminology.medcom.dk/fhir/observation-code">national analysis repertoire can be found here.</a> 


#### Codes
In a Observation resource, codes from CodeSystems are used to describe what is observed in the elements Observation.code.coding. In the element Observation.code.coding two CodeSystem are specified. 
* The NPU codes are the preferred first choice in official Danish health IT-systems and most used laboratory codes. NPU codes hase NPU prefixes in the begining of the code. 
* MedCom codes are Danish codes that are refered as MCS- codes. 

It is required to display 