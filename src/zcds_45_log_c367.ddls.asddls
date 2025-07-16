@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Use Scalar function'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_45_log_c367
  as select from /dmo/carrier
{
  key carrier_id                                        as CarrierId,
      name                                              as Name,
      currency_code                                     as CurrencyCode,
      zsf_vat_by_airline_c367( pAirline => carrier_id ) as VAT
}
