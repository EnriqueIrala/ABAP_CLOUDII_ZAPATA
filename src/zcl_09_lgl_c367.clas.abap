CLASS zcl_09_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_01_log_c367,
      zif_02_log_c367.


    ALIASES:

      get_conn_id FOR zif_01_log_c367~get_conn_id,
      get_customer FOR zif_02_log_c367~get_customer,
      get_airports FOR zif_03_log_c367~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_lgl_c367 IMPLEMENTATION.

  METHOD get_conn_id.

    rv_conn_id = me->zif_01_log_c367~conn_id.

  ENDMETHOD.

  METHOD zif_01_log_c367~set_conn_id.

    me->zif_01_log_c367~conn_id = iv_conn_id.

    zif_01_log_c367~comp_id = 'Airline ID'.

  ENDMETHOD.

  METHOD get_customer.

    SELECT SINGLE FROM /dmo/customer
    FIELDS first_name,
           last_name
    WHERE customer_id = @iv_cust_id
     INTO @rs_cust_address.

  ENDMETHOD.

  METHOD get_airports.

    SELECT SINGLE FROM /dmo/airport
    FIELDS *
    WHERE airport_id = @iv_airport_id
    INTO @rs_airport.

  ENDMETHOD.

ENDCLASS.
