CLASS zcl_04_log_c367 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    "DATA: architecture TYPE string VALUE '32Bits'.

    METHODS:
      constructor,
      get_architecture RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
    DATA: architecture TYPE string. "VALUE '32Bits'.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_log_c367 IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

  METHOD constructor.

    me->architecture = '32bits'.

  ENDMETHOD.

ENDCLASS.
