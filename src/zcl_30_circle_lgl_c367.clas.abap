CLASS zcl_30_circle_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_06_geo_figure_log_c367.

    ALIASES draw_shape FOR zif_06_geo_figure_log_c367~draw_figure.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_30_circle_lgl_c367 IMPLEMENTATION.

  METHOD draw_shape.
    rv_shape = 'Circle'.
  ENDMETHOD.

ENDCLASS.
