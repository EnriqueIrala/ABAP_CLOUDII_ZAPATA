CLASS zcl_28_manage_resource_lg_c367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: check_user IMPORTING iv_user TYPE syuname
                        RAISING   zcx_01_auth_log_c367.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_28_manage_resource_lg_c367 IMPLEMENTATION.

  METHOD check_user.

    IF sy-uname = 'CB9980007474'.

      RAISE EXCEPTION TYPE zcx_01_auth_log_c367
        EXPORTING
          textid = zcx_01_auth_log_c367=>no_auth
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Edit Contract'
*         msgv3  =
*         msgv4  =
        .

    ENDIF.

  ENDMETHOD.

ENDCLASS.
