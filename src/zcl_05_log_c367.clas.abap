CLASS zcl_05_log_c367 DEFINITION INHERITING FROM zcl_04_log_c367
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS:
   constructor,
   set_architecture.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_log_c367 IMPLEMENTATION.

  METHOD set_architecture.
    me->architecture = 'My_architecure'.
  ENDMETHOD.

  METHOD constructor.

    super->constructor( ).

    me->architecture = 'child_architecture'.

  ENDMETHOD.

ENDCLASS.
