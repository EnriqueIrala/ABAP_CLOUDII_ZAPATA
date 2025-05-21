CLASS zcl_21_laptop_log_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: keyboard TYPE REF TO zcl_20_keyboard_log_c367.

    METHODS:
      constructor IMPORTING io_keyboard TYPE REF TO zcl_20_keyboard_log_c367.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_21_laptop_log_c367 IMPLEMENTATION.

  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
