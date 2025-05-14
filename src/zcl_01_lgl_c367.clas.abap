CLASS zcl_01_lgl_c367 DEFINITION
  PUBLIC
*  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    "DATA: architecture TYPE string VALUE '32Bits'.


    class-METHODS:
      get_instance RETURNING VALUE(ro_instance) type ref to zcl_01_lgl_c367.


    METHODS:
      constructor,
      get_architecture
        IMPORTING
                  iv_so                  TYPE string OPTIONAL
        RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.

    DATA: architecture TYPE string. "VALUE '32Bits'.

  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_01_lgl_c367 IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

  METHOD constructor.
    me->architecture = '32bits'.
  ENDMETHOD.

  METHOD get_instance.

    ro_instance = new zcl_01_lgl_c367( ).

  ENDMETHOD.

ENDCLASS.
