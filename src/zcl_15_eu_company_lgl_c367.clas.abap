CLASS zcl_15_eu_company_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_04_log_c367.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_eu_company_lgl_c367 IMPLEMENTATION.

  METHOD zif_04_log_c367~define_company.
    rv_company = 'Company Europe....'.
  ENDMETHOD.

ENDCLASS.
