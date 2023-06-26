ValueSet: MedComCoreDiagnosticRepportStatus
Id: medcom-corediagnosticrepport-status
Title: "MedComCoreDiagnosticRepportStatus"
Description: "ValueSet containing status codes for MedCom DiagnosticRepport"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-06-26"
* $StatusCode#registered "Registered"
* $StatusCode#partial "Partial"
* $StatusCode#preliminary "Preliminary"
* $StatusCode#final "Final"
* $StatusCode#corrected "Corrected"
* $StatusCode#cancelled "Cancelled"
* $StatusCode#entered-in-error "Entered in Error"
