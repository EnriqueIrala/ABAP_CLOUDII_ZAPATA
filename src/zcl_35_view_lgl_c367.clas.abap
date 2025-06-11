CLASS zcl_35_view_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

      METHODS: display_employee IMPORTING iv_name type string
                                          iv_role type string
                                          io_out type ref to if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_35_view_lgl_c367 IMPLEMENTATION.

  METHOD display_employee.
     io_out->write( |{ iv_name }---{ iv_role }| ).
  ENDMETHOD.

ENDCLASS.
