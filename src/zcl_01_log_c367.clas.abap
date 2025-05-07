CLASS zcl_01_log_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: char TYPE c LENGTH 1,

           BEGIN OF ty_flights,
             travel_id   TYPE /dmo/travel_id,
             agency_id   TYPE /dmo/agency_id,
             customer_id TYPE /dmo/customer_id,
           END OF ty_flights.


    CONSTANTS: BEGIN OF c_logali,
                 c_logali  TYPE c LENGTH 6 VALUE 'Logali',
                 c_master  TYPE c LENGTH 15 VALUE 'ABAP Cloud II',
                 c_company TYPE c LENGTH 10 VALUE 'Zapata',
               END OF c_logali,

               c_saludo TYPE c LENGTH 4 VALUE 'Hola'.

    DATA: company TYPE string VALUE 'Zapata' READ-ONLY.

    METHODS:
      set_attr IMPORTING iv_attr TYPE string,
      "get_attr EXPORTING ev_attr TYPE string.
      get_attr RETURNING VALUE(rv_attr) TYPE string,
      get_flights IMPORTING iv_flight       TYPE /dmo/travel_id
                            iv_agency       TYPE /dmo/agency_id OPTIONAL
                  RETURNING VALUE(rv_exist) TYPE char,
      get_flight IMPORTING iv_flight        TYPE /dmo/travel_id
                 RETURNING VALUE(rs_flight) TYPE ty_flights.

    CLASS-METHODS:
      set_attr2 IMPORTING iv_attr TYPE string,
      get_attr2 EXPORTING ev_attr TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA: my_attr TYPE string.

    CLASS-DATA: my_attr2 TYPE string.

ENDCLASS.



CLASS zcl_01_log_c367 IMPLEMENTATION.

  METHOD set_attr.

*    company = 'Logali'.

    my_attr = iv_attr.

  ENDMETHOD.

  METHOD set_attr2.

    my_attr2 = iv_attr.

  ENDMETHOD.

  METHOD get_attr.

    rv_attr = my_attr.

  ENDMETHOD.

  METHOD get_attr2.

    ev_attr = my_attr2.

  ENDMETHOD.

  METHOD get_flights.

    IF iv_agency IS SUPPLIED.

      DATA(lv_agency) = iv_agency.

    ENDIF.

    SELECT SINGLE FROM /dmo/travel
    FIELDS *
    WHERE travel_id = @iv_flight
    INTO @DATA(ls_travel).

    IF sy-subrc = 0.
      rv_exist = abap_true.
    ELSE.
      rv_exist = abap_false.
    ENDIF.

  ENDMETHOD.

  METHOD get_flight.

    SELECT SINGLE FROM /dmo/travel
     FIELDS travel_id,
            agency_id,
            customer_id
     WHERE travel_id = @iv_flight
     INTO @rs_flight.

  ENDMETHOD.

ENDCLASS.
