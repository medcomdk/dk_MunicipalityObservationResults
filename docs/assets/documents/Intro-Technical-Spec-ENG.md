# Introduction to the Technical Content
[Return](../../index.md)

**Table of contents**
* [1 profiles in the HomeCareObservation Standard](#1-profiles-in-the-homecareobservation-standard)



## 1 Profiles in the HomeCareObservation Standard


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lc33{background-color:#2c415c;border-color:inherit;color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
<thead>
  <tr>
    <th class="tg-lc33">Profile</th>
    <th class="tg-lc33">Ressource</th>
    <th class="tg-lc33">Description</th>
    <th class="tg-lc33">MustSupport elements</th>
    <th class="tg-lc33">Implementation Guide Origin </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">MedComHomeCareObservationMessage</td>
    <td class="tg-0pky">Bundle</td>
    <td class="tg-0pky">Acts as a container for the&nbsp;&nbsp;&nbsp;content of the message. Inherited from the MedComMessagingMessage</td>
    <td class="tg-0pky">ID                                      &nbsp;&nbsp;&nbsp;Type                                         &nbsp;&nbsp;&nbsp;Timestamp                       &nbsp;&nbsp;&nbsp;Entry</td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComHomeCareObservationMessageHeader</td>
    <td class="tg-0pky">MessageHeader</td>
    <td class="tg-0pky">The header of a MedComHomeCare&nbsp;&nbsp;&nbsp;message which must always be the first referenced profile, when the type of&nbsp;&nbsp;&nbsp;the bundle is 'message'. This profile holds references to the fundamental&nbsp;&nbsp;&nbsp;information in a message, such as sender, receiver, and the content of the&nbsp;&nbsp;&nbsp;message in terms of HomeCareDiagnosticReport porfile. This profile is&nbsp;&nbsp;&nbsp;inherited form the MedComMessagingMessageHeader</td>
    <td class="tg-0pky">Id<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Text<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Event[x]:eventCoding<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:primary<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:primary.use<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:primary.endpoint<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:primary.receiver<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sender<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Source<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Source.endpoint<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Focus</td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCoreDiagnosticReport</td>
    <td class="tg-0pky">DiagnosticReport</td>
    <td class="tg-0pky">Contains central information&nbsp;&nbsp;&nbsp;about a DiagnosticReport containg all observation</td>
    <td class="tg-0pky">Status                                          &nbsp;&nbsp;&nbsp;Code                                    &nbsp;&nbsp;&nbsp;Subject                                                  &nbsp;&nbsp;&nbsp;Issued                                 &nbsp;&nbsp;&nbsp;Meta.Security          &nbsp;&nbsp;&nbsp;Performer                           &nbsp;&nbsp;&nbsp;Result                                   Media                                &nbsp;&nbsp;&nbsp;Media.Link                     &nbsp;&nbsp;&nbsp;Conclusion</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCoreObservation</td>
    <td class="tg-0pky">Observation</td>
    <td class="tg-0pky">Contains central informaion about&nbsp;&nbsp;&nbsp;an observation </td>
    <td class="tg-0pky">Status                                          &nbsp;&nbsp;&nbsp;Code                                                          &nbsp;&nbsp;&nbsp;Code.coding.system                             &nbsp;&nbsp;&nbsp;Code.coding.code                                  &nbsp;&nbsp;&nbsp;Subject                                                  &nbsp;&nbsp;&nbsp;EffectiveDateTime                        &nbsp;&nbsp;&nbsp;Value                               &nbsp;&nbsp;&nbsp;Note                            </td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComHomeCareDiagnosticReport</td>
    <td class="tg-0pky">DiagnosticReport</td>
    <td class="tg-0pky">Contains information to all&nbsp;&nbsp;&nbsp;observation results performed and produced by the municipal acute care team</td>
    <td class="tg-0pky">Status                                          &nbsp;&nbsp;&nbsp;Code                                    &nbsp;&nbsp;&nbsp;Subject                                                  &nbsp;&nbsp;&nbsp;Issued                                 &nbsp;&nbsp;&nbsp;Meta.Security          &nbsp;&nbsp;&nbsp;Performer.ProducerOrganization       &nbsp;&nbsp;&nbsp;Performer.practitionerRole                                    &nbsp;&nbsp;&nbsp;Result                                   Media                                 Media.Link                      Conclusion</td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComHomeCareObservation</td>
    <td class="tg-0pky">Observation</td>
    <td class="tg-0pky">Describes a  observation performed by municipal acute&nbsp;&nbsp;&nbsp;care team </td>
    <td class="tg-0pky">Status                                          &nbsp;&nbsp;&nbsp;Code                                                          &nbsp;&nbsp;&nbsp;Code.coding.system                             &nbsp;&nbsp;&nbsp;Code.coding.code                &nbsp;&nbsp;&nbsp;Code.coding.display                                 Subject                                                  &nbsp;&nbsp;&nbsp;EffectiveDateTime                         Value.Quantity                              &nbsp;&nbsp;&nbsp;Value.string                          &nbsp;&nbsp;&nbsp;Interpretation                                Note                            </td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComProducerOrganization</td>
    <td class="tg-0pky">Organizarion</td>
    <td class="tg-0pky">Represents the producer of the&nbsp;&nbsp;&nbsp;observation </td>
    <td class="tg-0pky">Text                                               &nbsp;&nbsp;&nbsp;Identifier:EAN-ID                                 &nbsp;&nbsp;&nbsp;Identifier:SOR-ID                          &nbsp;&nbsp;&nbsp;Identifier:ProducentID            &nbsp;&nbsp;&nbsp;Identifier:ProducentID.system              &nbsp;&nbsp;&nbsp;Identifier:ProducentID.value                                        Name</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCoreMedia</td>
    <td class="tg-0pky">Media</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Identifier                                     &nbsp;&nbsp;&nbsp;Status                                            &nbsp;&nbsp;&nbsp;Operator                                             &nbsp;&nbsp;&nbsp;Content.contentType                 &nbsp;&nbsp;&nbsp;Content.data                              &nbsp;&nbsp;&nbsp;Content.title                             Content.creation</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComRequesterOrganizaion</td>
    <td class="tg-0pky">Organization</td>
    <td class="tg-0pky">Represents the organization that&nbsp;&nbsp;&nbsp;requests the  observation</td>
    <td class="tg-0pky">Text                                               &nbsp;&nbsp;&nbsp;Identifier:EAN-ID                                 &nbsp;&nbsp;&nbsp;Identifier:SOR-ID                          &nbsp;&nbsp;&nbsp;Identifier:Ydrenummer            &nbsp;&nbsp;&nbsp;Name                                            &nbsp;&nbsp;&nbsp;Contact                                              &nbsp;&nbsp;&nbsp;Contact.name                      &nbsp;&nbsp;&nbsp;Contact.name.given</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCorePatient</td>
    <td class="tg-0pky">Patient</td>
    <td class="tg-0pky">Contains information about the&nbsp;&nbsp;&nbsp;patien who have had  observation done</td>
    <td class="tg-0pky">Name</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCorePractitionerRole</td>
    <td class="tg-0pky">PractitionerRole</td>
    <td class="tg-0pky"> Describes the role of a healthcare&nbsp;&nbsp;&nbsp;professional or another actor involved in citizen or patient care. This&nbsp;&nbsp;&nbsp;profile is used to describe the author role and sender or recipient.</td>
    <td class="tg-0pky">Practitioner Organization</td>
    <td class="tg-0pky">Core</td>
  </tr>
</tbody>
</table></div>