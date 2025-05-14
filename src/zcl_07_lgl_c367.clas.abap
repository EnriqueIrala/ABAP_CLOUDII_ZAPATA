CLASS zcl_07_lgl_c367 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      get_capital
        RETURNING VALUE(rv_capital) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_lgl_c367 IMPLEMENTATION.

  METHOD get_capital.

    data(lo_friend) = new zcl_06_lgl_c367( ).
    lo_friend->capital = 'CapitalFriend'.

    rv_capital = lo_friend->capital.

  ENDMETHOD.

ENDCLASS.
