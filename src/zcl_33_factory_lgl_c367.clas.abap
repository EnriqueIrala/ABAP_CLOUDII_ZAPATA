CLASS zcl_33_factory_lgl_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: get_shape IMPORTING iv_shape_type        TYPE string
                       RETURNING VALUE(ro_shape_type) TYPE REF TO zif_06_geo_figure_log_c367.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_33_factory_lgl_c367 IMPLEMENTATION.

  METHOD get_shape.

     CASE iv_shape_type.
      WHEN 'Circle'.
        ro_shape_type = NEW zcl_30_circle_lgl_c367( ).
      WHEN 'Square'.
        ro_shape_type = NEW zcl_31_square_lgl_c367( ).
      WHEN 'Triangule'.
        ro_shape_type = NEW zcl_32_triangule_lgl_c367( ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
