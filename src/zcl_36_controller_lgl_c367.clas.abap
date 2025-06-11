CLASS zcl_36_controller_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_model IMPORTING io_model TYPE REF TO zcl_34_model_lgl_c367,
      get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_34_model_lgl_c367,

      set_view IMPORTING io_view TYPE REF TO zcl_35_view_lgl_c367,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_35_view_lgl_c367.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: model TYPE REF TO zcl_34_model_lgl_c367,
          view  TYPE REF TO zcl_35_view_lgl_c367.


ENDCLASS.



CLASS zcl_36_controller_lgl_c367 IMPLEMENTATION.

  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
