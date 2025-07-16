@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Ztravel_r_c367
  as select from ztravel_c367_a

  association [0..1] to /DMO/I_Agency as _Agency on $projection.AgencyId = _Agency.AgencyID

{
  key travel_uuid           as TravelUuid,
      travel_id             as TravelId,
      agency_id             as AgencyId,
      customer_id           as CustomerId,
      begin_date            as BeginDate,
      end_date              as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee           as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price           as TotalPrice,
      currency_code         as CurrencyCode,
      description           as Description,
      overall_status        as OverallStatus,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Agency // Make association public
}
