@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View - Incident'
@Metadata.allowExtensions: true

define root view entity ZC_DT_INCT_473
  provider contract transactional_query
  as projection on ZI_DT_INCT_473
{
    key IncUuid,

        IncidentId,
        Title,
        Description,
        Status,
        Priority,
        CreationDate,
        ChangedDate,

        LocalCreatedBy,
        LocalCreatedAt,
        LocalLastChangedBy,
        LocalLastChangedAt,
        LastChangedAt,

        _History : redirected to composition child ZC_DT_HISTORY_473,

        _Status,
        _Priority
}
