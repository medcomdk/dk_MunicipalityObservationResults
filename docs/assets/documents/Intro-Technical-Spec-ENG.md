# Introduction to the Technical Content
[Return](../../index.md)

**Table of contents**
* [1 profiles in the HomeCareObservation Standard](#1-profiles-in-the-homecareobservation-standard)



## 1 Profiles in the HomeCareObservation Standard


% Please add the following required packages to your document preamble:
% \usepackage{graphicx}
% \usepackage[table,xcdraw]{xcolor}
% Beamer presentation requires \usepackage{colortbl} instead of \usepackage[table,xcdraw]{xcolor}
\begin{table}[]
\caption{Table 1: Overview over profiles in HomeCareObservation Standard}
\label{tab:my-table}
\resizebox{\columnwidth}{!}{%
\begin{tabular}{lllll}
\rowcolor[HTML]{2C415C} 
{\color[HTML]{FFFFFF} Profile} &
  {\color[HTML]{FFFFFF} Ressource} &
  {\color[HTML]{FFFFFF} Description} &
  {\color[HTML]{FFFFFF} MustSupport elements} &
  {\color[HTML]{FFFFFF} Implementation Guide Origin} \\
MedComHomeCareObservationMessage &
  Bundle &
  Acts as a container for the   content of the message. Inherited from the MedComMessagingMessage &
  ID                                         Type                                            Timestamp                          Entry &
  HomeCareObservation \\
MedComHomeCareObservationMessageHeader &
  MessageHeader &
  The header of a MedComHomeCare   message which must always be the first referenced profile, when the type of   the bundle is 'message'. This profile holds references to the fundamental   information in a message, such as sender, receiver, and the content of the   message in terms of HomeCareDiagnosticReport porfile. This profile is   inherited form the MedComMessagingMessageHeader &
  \begin{tabular}[c]{@{}l@{}}Id\\      Text\\      Event{[}x{]}:eventCoding\\      Destination:primary\\      Destination:primary.use\\      Destination:primary.endpoint\\      Destination:primary.receiver\\      Sender\\      Source\\      Source.endpoint\\      Focus\end{tabular} &
  HomeCareObservation \\
MedComCoreDiagnosticReport &
  DiagnosticReport &
  Contains central information   about a DiagnosticReport containg all observation &
  Status                                             Code                                       Subject                                                     Issued                                    Meta.Security             Performer                              Result                                   Media                                   Media.Link                        Conclusion &
  Core \\
MedComCoreObservation &
  Observation &
  Contains central informaion about   an observation &
  Status                                             Code                                                             Code.coding.system                                Code.coding.code                                     Subject                                                     EffectiveDateTime                           Value                                  Note &
  Core \\
MedComHomeCareDiagnosticReport &
  DiagnosticReport &
  Contains information to all   observation results performed and produced by the municipal acute care team &
  Status                                             Code                                       Subject                                                     Issued                                    Meta.Security             Performer.ProducerOrganization          Performer.practitionerRole                                       Result                                   Media                                 Media.Link                      Conclusion &
  HomeCareObservation \\
MedComHomeCareObservation &
  Observation &
  Describes a  observation performed by municipal acute   care team &
  Status                                             Code                                                             Code.coding.system                                Code.coding.code                   Code.coding.display                                 Subject                                                     EffectiveDateTime                         Value.Quantity                                 Value.string                             Interpretation                                Note &
  HomeCareObservation \\
MedComProducerOrganization &
  Organizarion &
  Represents the producer of the   observation &
  Text                                                  Identifier:EAN-ID                                    Identifier:SOR-ID                             Identifier:ProducentID               Identifier:ProducentID.system                 Identifier:ProducentID.value                                        Name &
  Messaging \\
MedComCoreMedia &
  Media &
   &
  Identifier                                        Status                                               Operator                                                Content.contentType                    Content.data                                 Content.title                             Content.creation &
  Core \\
MedComRequesterOrganizaion &
  Organization &
  Represents the organization that   requests the  observation &
  Text                                                  Identifier:EAN-ID                                    Identifier:SOR-ID                             Identifier:Ydrenummer               Name                                               Contact                                                 Contact.name                         Contact.name.given &
  Messaging \\
MedComCorePatient &
  Patient &
  Contains information about the   patien who have had  observation done &
  Name &
  Core \\
MedComCorePractitionerRole &
  PractitionerRole &
  Describes the role of a healthcare   professional or another actor involved in citizen or patient care. This   profile is used to describe the author role and sender or recipient. &
  Practitioner Organization &
  Core
\end{tabular}%
}
\end{table}