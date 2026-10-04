@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_DT_STATUS_473 as select from zdt_status_473
{
    key status_code as StatusCode,
      status_description as StatusDescription
}
