CLASS zcl_24_timer_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    EVENTS time_out EXPORTING VALUE(ev_hour) TYPE zsyst_uzeit.

    DATA: user TYPE string.

    METHODS:
      constructor,
      increment_counter IMPORTING iv_counter TYPE i,
      check_limit.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: counter TYPE i.
ENDCLASS.



CLASS zcl_24_timer_lgl_c367 IMPLEMENTATION.

  METHOD check_limit.

    IF me->counter GE 5.
      RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time( ).
    ENDIF.

  ENDMETHOD.

  METHOD increment_counter.
    me->counter += iv_counter.
    me->check_limit( ).
  ENDMETHOD.

  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.

ENDCLASS.
