@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Priority'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_DT_PRIORITY_473 as select from zdt_priority_473
{
    key priority_code as PriorityCode,
      priority_description as PriorityDescription
}
