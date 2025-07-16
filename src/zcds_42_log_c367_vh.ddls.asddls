@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help Definition'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}

@ObjectModel.representativeKey: 'Country'
@ObjectModel.dataCategory: #VALUE_HELP

@Search.searchable: true
@Consumption.ranked: true

define view entity ZCDS_42_LOG_C367_VH
  as select from zcds_41_log_c367
{
      @Search.fuzzinessThreshold: 0.8
      @Search.defaultSearchElement: true
      @Search.ranking: #HIGH
  key Country,

      //      @UI.hidden: true
      //      @Consumption.filter.hidden: true

      @Search.fuzzinessThreshold: 0.8
      @Search.defaultSearchElement: true
      @Search.ranking: #LOW
      _Text[1: Languaje = $session.system_language].CountryName as Description,

      @Search.defaultSearchElement: true
      CountryThreeLetterISOCode,
      @Search.defaultSearchElement: true
      CountryThreeDigitISOCode,

      /* Associations */
      _Text
}
