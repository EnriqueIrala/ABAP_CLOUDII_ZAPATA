CLASS zcl_32_triangule_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   INTERFACES: zif_06_geo_figure_log_c367.

    ALIASES draw_shape FOR zif_06_geo_figure_log_c367~draw_figure.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_32_triangule_lgl_c367 IMPLEMENTATION.

  METHOD zif_06_geo_figure_log_c367~draw_figure.
    rv_shape = 'Triangule'.
  ENDMETHOD.

ENDCLASS.
