CLASS zcl_25_conexion_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: hour        TYPE zsyst_uzeit,
          sender_user TYPE string.

    METHODS on_time_out FOR EVENT time_out OF zcl_24_timer_lgl_c367
      IMPORTING ev_hour
                sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_25_conexion_lgl_c367 IMPLEMENTATION.

  METHOD on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
  ENDMETHOD.

ENDCLASS.
