@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Contract type Int. Child'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_27_log_c367 as projection on zcds_25_log_c367
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
     @Semantics.amount.currencyCode: 'CurrencyCode'
    FlightPrice,
    CurrencyCode,
    /* Associations */
    _Customer,
    _Travel: redirected to parent zcds_26_log_c367
}
