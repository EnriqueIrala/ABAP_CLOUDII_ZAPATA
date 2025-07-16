@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VH - Use on RAP BO on Projection'
@Metadata.ignorePropagatedAnnotations: true

@Search.searchable: true

define root view entity zcds_44_log_c367 
provider contract transactional_query
as projection on zcds_43_log_c367
{
    key CustomerId,
    FirstName,
    LastName,
    Title,
    Street,
    PostalCode,
    City,
    
    @ObjectModel.text.element: [ 'CountryName1' ]
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZCDS_42_LOG_C367_VH',
                                                   element: 'Country' } }] 
    CountryCode,
    _Country._Text[1:Languaje = $session.system_language].CountryName as CountryName1,
    
    PhoneNumber,
    EmailAddress,
    /* Associations */
    _Country
}
