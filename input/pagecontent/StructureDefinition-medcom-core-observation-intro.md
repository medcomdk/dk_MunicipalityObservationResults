### Scope and use
This profile is a MedCom Core profile for observations and intended to represent observations for a variety cases including: 
* laboratory observations
* observations performed by a municipal acute care team  

#### Status
The MedComCoreObservation resource require an indication of the observation status. To indicate the observation status a code from ValuSet from HL7 should be used. When the result of the observation is final then the status code shoul also be "Final" Click here to se   <a href="http://hl7.org/fhir/ValueSet/observation-status"> Status codes.</a> 

#### TimeStamps
The MedComCoreObservation IG contains two type of timestamps that have different purposes:
* Observation sampling date and time (Danish: Prøvetagningsdato og tidspunkt)
    * Observation.effective.dateTime represents the time when the sample was performed.
    * Observation.effective.period represents the time-period for collecting the sample. (i.e. the period of collecting urine sample. )