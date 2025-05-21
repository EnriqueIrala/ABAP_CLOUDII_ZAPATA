CLASS zcl_10_lgl_c367 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS:
   merchandise_output
     RETURNING VALUE(rv_merchandise) type string,

   production_line ABSTRACT
     RETURNING VALUE(rv_production) type string,

   input_products ABSTRACT
     RETURNING VALUE(rv_input) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_lgl_c367 IMPLEMENTATION.

  METHOD merchandise_output.

    rv_merchandise = 'Merchandise output'.

  ENDMETHOD.

ENDCLASS.
