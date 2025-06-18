@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_05_log_c367
  as select from zcds_06_log_c367
{
//  key TravelId                            as TravelID,
//      AgencyId                            as AgencyID,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      min( TotalPrice )                   as MinTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      max( TotalPrice )                   as MaxTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum( TotalPrice )                   as SumTotalPrice,

      count( distinct TotalPrice )        as CountDistTotalPrice,

      count( * )                          as CountAllTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      avg( TotalPrice as abap.dec(16, 2)) as AvgTotalPrice,

      CurrencyCode                        as CurrencyCode

}
group by
//  TravelId,
//  AgencyId,
  CurrencyCode;
