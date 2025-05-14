CLASS zcl_exec_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_lgl_c367 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* Heritance
*    DATA(lo_heritance) = NEW zcl_02_lgl_c367( ).
*
*    out->write( lo_heritance->get_architecture( 'Linux' ) ).

** Narrowing cast
*    DATA(lo_animal) = NEW zcl_03_animal_lgl_c367( ).
*    DATA(lo_lion) = NEW zcl_04_lion_lgl_c367( ).
*    DATA(lo_lion2) = NEW zcl_04_lion_lgl_c367( ).
*
*    lo_animal = lo_lion.
*
*    out->write( lo_animal->walk( ) ).
*
** Widening cast
*    TRY.
*        lo_lion2 ?= lo_animal.
*
*      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
*        out->write( lx_cast->get_text( ) ).
*
*    ENDTRY.
*    out->write( lo_lion2->walk( ) ).

** Final Method
*  data(lo_final) = new zcl_05_lgl_c367( ).
*
*  lo_final->set_architecture( ).

* Instances Encapsulation
*  data(lo_instance) = new zcl_01_lgl_c367( ).

** Friendship
*    DATA(lo_friend) = NEW zcl_07_lgl_c367( ).
*
*    out->write( lo_friend->get_capital( ) ).
*
*    DATA(lo_friend2) = NEW zcl_08_lgl_c367( ).
*
*    out->write( lo_friend2->get_private( ) ).

* Interfaces
  data(lo_interface) = new zcl_09_lgl_c367( ).

  lo_interface->get_airports(
    EXPORTING
      iv_airport_id = '00001'
*    RECEIVING
*      rs_airport    =
  ).

   lo_interface->zif_01_log_c367~conn_id = '00002'.

   lo_interface->zif_01_log_c367~set_conn_id( '000001' ).



  ENDMETHOD.

ENDCLASS.
