CLASS zcl_26_bank_log_367 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_05_log_c367.

    METHODS: create_notification RETURNING VALUE(rv_text) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_26_bank_log_367 IMPLEMENTATION.

  METHOD create_notification.
    rv_text = |Event raise .... new transfer-{ cl_abap_context_info=>get_system_time( ) }|.
    RAISE EVENT zif_05_log_c367~new_transfer.
  ENDMETHOD.

ENDCLASS.
