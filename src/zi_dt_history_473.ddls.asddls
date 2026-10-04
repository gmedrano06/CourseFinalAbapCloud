@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - History'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_DT_HISTORY_473
  as select from zdt_inct_h_473

  association to parent ZI_DT_INCT_473 as _Incident
    on $projection.IncUuid = _Incident.IncUuid

{
  key his_uuid              as HistoryCode,

      inc_uuid              as IncUuid,
      his_id                as HistoryId,
      previous_status       as PreviousStatus,
      new_status            as NewStatus,
      text                  as TextDescription,

      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,

      _Incident
}
