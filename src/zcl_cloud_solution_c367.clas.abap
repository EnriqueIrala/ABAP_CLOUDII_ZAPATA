CLASS zcl_cloud_solution_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cloud_solution_c367 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT FROM /dmo/travel
    FIELDS *
    INTO TABLE @DATA(lt_results).

  ENDMETHOD.

ENDCLASS.
