@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View - Incident History'
@Metadata.allowExtensions: true

define view entity ZC_DT_HISTORY_473
  as projection on ZI_DT_HISTORY_473
{
    key HistoryCode,

        IncUuid,
        HistoryId,
        PreviousStatus,
        NewStatus,
        TextDescription,

        LocalCreatedBy,
        LocalCreatedAt,
        LocalLastChangedBy,
        LocalLastChangedAt,
        LastChangedAt,

        _Incident : redirected to parent ZC_DT_INCT_473
}
