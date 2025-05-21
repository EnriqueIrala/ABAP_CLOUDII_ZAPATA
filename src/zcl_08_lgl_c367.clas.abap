CLASS zcl_08_lgl_c367 DEFINITION INHERITING FROM zcl_07_lgl_c367
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:

      get_private
        RETURNING VALUE(rv_attribute) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_08_LGL_C367 IMPLEMENTATION.


  METHOD get_private.

    DATA(lo_ins) = NEW zcl_06_lgl_c367( ).

    lo_ins->capital = 'CapitalHeritance'.

    rv_attribute = lo_ins->capital.

  ENDMETHOD.
ENDCLASS.
