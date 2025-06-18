CLASS zcl_38_test_class_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

    METHODS:
      "! @testing zcl_37_business_pr_lgl_c367
      factorial_test FOR TESTING.

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS:
      setup,
      teardown.

    DATA: lo_cut TYPE REF TO zcl_37_business_pr_lgl_c367. " CUT - Class Under Testing

ENDCLASS.



CLASS zcl_38_test_class_lgl_c367 IMPLEMENTATION.

  METHOD factorial_test.

    "Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial_ut TYPE i.

    "When
    lo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_number_ut
      IMPORTING
        ev_factorial = lv_factorial_ut ).

    "Then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ).

  ENDMETHOD.

  METHOD setup.
    lo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR: lo_cut.
  ENDMETHOD.

ENDCLASS.
