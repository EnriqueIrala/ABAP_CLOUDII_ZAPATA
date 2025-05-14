CLASS zcl_02_lgl_c367 DEFINITION INHERITING FROM zcl_01_lgl_c367
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    class-METHODS:
      get_ins RETURNING VALUE(ro_instance) type ref to zcl_01_lgl_c367.

    METHODS:
      constructor,
      set_architecture FINAL,
      get_architecture REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_lgl_c367 IMPLEMENTATION.

  METHOD set_architecture.
    me->architecture = 'My_architecture'.
  ENDMETHOD.

  METHOD constructor.

    super->constructor( ).

    me->architecture = 'child_architecture'.

  ENDMETHOD.

  METHOD get_architecture.

    IF iv_so = 'Windows'.

      me->architecture = '64 bits'.
      rv_architecture = me->architecture.

    ELSE.

      rv_architecture = super->get_architecture( ).

    ENDIF.

  ENDMETHOD.

  METHOD get_ins.

    ro_instance = new zcl_01_lgl_c367( ).

  ENDMETHOD.

ENDCLASS.
