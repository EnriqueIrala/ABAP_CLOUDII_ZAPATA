@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Session Variables'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcd_03_log_c367
  as select from /dmo/customer
{
  key customer_id              as CustomerID,
      $session.client          as ClientField,
      $session.system_date     as SystemDate,
      $session.system_language as SystemLanguage,
      $session.user            as UserField,
      $session.user_date       as UserDate,
      $session.user_timezone   as UserTz

//      $session.bs_instance_id  as BSInstanceId,
//      $session.bs_zone_id      as BSZoneId
}
