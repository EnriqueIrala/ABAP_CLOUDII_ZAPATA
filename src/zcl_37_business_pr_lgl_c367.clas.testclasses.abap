*"* use this source file for your ABAP unit test classes
CLASS ltcl_bussines DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA: lo_cut TYPE REF TO zcl_37_business_pr_lgl_c367. " CUT - Class Under Testing

    METHODS:
      first_test FOR TESTING RAISING cx_static_check.

    METHODS: setup,
      teardown.
ENDCLASS.


CLASS ltcl_bussines IMPLEMENTATION.

  METHOD first_test.
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
    IF cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ).

      cl_abap_unit_assert=>fail( 'Test Failed' ).
    ENDIF.

  ENDMETHOD.

  METHOD setup.
    lo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR lo_cut.
  ENDMETHOD.

ENDCLASS.
