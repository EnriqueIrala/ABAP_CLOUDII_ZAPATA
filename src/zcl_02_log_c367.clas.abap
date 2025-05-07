CLASS zcl_02_log_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_attr IMPORTING my_attr TYPE string,
      get_attr RETURNING VALUE(my_attr) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: my_attr TYPE string.

ENDCLASS.



CLASS zcl_02_log_c367 IMPLEMENTATION.
  METHOD get_attr.

    my_attr = me->my_attr.

  ENDMETHOD.

  METHOD set_attr.

   me->my_attr = my_attr.

  ENDMETHOD.

ENDCLASS.
