CLASS zcl_37_business_pr_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      get_factorial IMPORTING iv_number    TYPE i
                    EXPORTING ev_factorial TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_37_business_pr_lgl_c367 IMPLEMENTATION.

  METHOD get_factorial.

    CHECK iv_number GT 0.

    DATA(lv_number) = iv_number.

* Factorial of 4 = 1*2*3*4 = 24

    ev_factorial = 1.

    WHILE lv_number NE 0.

      ev_factorial = ev_factorial * lv_number.

*      lv_number = lv_number - 1.
      lv_number -= 1.

    ENDWHILE.

  ENDMETHOD.

ENDCLASS.
