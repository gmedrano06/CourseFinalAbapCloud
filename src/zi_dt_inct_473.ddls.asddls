@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Incident'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_DT_INCT_473
  as select from zdt_inct_473

  composition [0..*] of ZI_DT_HISTORY_473 as _History

  association [0..1] to ZI_DT_STATUS_473 as _Status
    on $projection.Status = _Status.StatusCode

  association [0..1] to zdt_priority_473 as _Priority
    on $projection.Priority = _Priority.priority_code

{
  key inc_uuid              as IncUuid,

      incident_id           as IncidentId,
      title                 as Title,
      description           as Description,
      status                as Status,
      priority              as Priority,
      responsible           as Responsible,
      creation_date         as CreationDate,
      changed_date          as ChangedDate,

      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,

      _History,
      _Status,
      _Priority
}
