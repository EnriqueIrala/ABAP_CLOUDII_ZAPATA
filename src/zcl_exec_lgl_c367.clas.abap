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

*  cl_dd_ddl_annotation_service=>get_annos(
*    EXPORTING
*      entityname         = 'ZCDS_38_LOG_C367'
**      variant            = ''
**      language           = SY-LANGU
**      extend             = abap_false
*      metadata_extension = abap_true
**      translation        = abap_true
**      null_values        = abap_false
*    IMPORTING
**      entity_annos       =
*      element_annos      = data(lt_annos)
**      parameter_annos    =
**      annos_tstmp        =
*  ).


  data: lt_abstract type table of zcds_21_log_c367.

** Heritance
**    DATA(lo_heritance) = NEW zcl_02_lgl_c367( ).
**
**    out->write( lo_heritance->get_architecture( 'Linux' ) ).
*
*** Narrowing cast
**    DATA(lo_animal) = NEW zcl_03_animal_lgl_c367( ).
**    DATA(lo_lion) = NEW zcl_04_lion_lgl_c367( ).
**    DATA(lo_lion2) = NEW zcl_04_lion_lgl_c367( ).
**
**    lo_animal = lo_lion.
**
**    out->write( lo_animal->walk( ) ).
**
*** Widening cast
**    TRY.
**        lo_lion2 ?= lo_animal.
**
**      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
**        out->write( lx_cast->get_text( ) ).
**
**    ENDTRY.
**    out->write( lo_lion2->walk( ) ).
*
*** Final Method
**  data(lo_final) = new zcl_05_lgl_c367( ).
**
**  lo_final->set_architecture( ).
*
** Instances Encapsulation
**  data(lo_instance) = new zcl_01_lgl_c367( ).
*
*** Friendship
**    DATA(lo_friend) = NEW zcl_07_lgl_c367( ).
**
**    out->write( lo_friend->get_capital( ) ).
**
**    DATA(lo_friend2) = NEW zcl_08_lgl_c367( ).
**
**    out->write( lo_friend2->get_private( ) ).
*
*** Interfaces
*  data(lo_interface) = new zcl_09_lgl_c367( ).
*
*  lo_interface->get_airports(
*    EXPORTING
*      iv_airport_id = '00001'
**    RECEIVING
**      rs_airport    =
*  ).
*
*   lo_interface->zif_01_log_c367~conn_id = '00002'.
*
*   lo_interface->zif_01_log_c367~set_conn_id( '000001' ).
*
** Abstract Class
*    DATA(lo_abstract) = NEW zcl_11_lgl_c367( ).
*
*    out->write( lo_abstract->merchandise_output( ) ).
*    out->write( lo_abstract->input_products( ) ).
*    out->write( lo_abstract->production_line( ) ).
*
* Polymorphism
*    DATA: lt_airplanes   TYPE STANDARD TABLE OF REF TO zcl_12_airplane_lgl_c367,
*          lo_airplane    TYPE REF TO zcl_12_airplane_lgl_c367,
*          lo_cargo_plane TYPE REF TO zcl_13_cargo_plane_lgl_c367,
*          lo_pass_plane  TYPE REF TO zcl_14_pass_plane_lgl_c367.
*
*    lo_cargo_plane = new #( ).
*    APPEND lo_cargo_plane to lt_airplanes.
*
*    lo_pass_plane = new #( ).
*    APPEND lo_pass_plane to lt_airplanes.
*
*    LOOP AT lt_airplanes into lo_airplane.
*     out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.
*
* Polymorphism with Interfaces
*    DATA: lt_companies TYPE STANDARD TABLE OF REF TO zif_04_log_c367,
*          lo_company   TYPE REF TO zif_04_log_c367,
*          lo_comp_eu   TYPE REF TO zcl_15_eu_company_lgl_c367,
*          lo_comp_usa  TYPE REF TO zcl_16_usa_company_lgl_c367,
*          lo_plant     TYPE REF TO zcl_17_plant_lgl_c367.
*
*    lo_comp_eu = NEW #( ).
*    APPEND lo_comp_eu TO lt_companies.
*
*    lo_comp_usa = NEW #( ).
*    APPEND lo_comp_usa TO lt_companies.
*
*    lo_plant = NEW #( ).
*
*    LOOP AT lt_companies INTO lo_company.
*      out->write( lo_company->define_company( ) ).
*      out->write( lo_plant->assign_company( lo_company ) ).
*    ENDLOOP.
*
* Association - Object References
*    DATA(lo_credit_card) = NEW zcl_18_credit_card_c367( ).
*    DATA(lo_client) = NEW zcl_19_client_c367( ).
*
*    lo_credit_card->set_card_num( '9999 8888 5555 4444' ).
*
*    lo_client->set_credit_card( lo_credit_card ).
*
*    out->write( lo_client->get_credit_card( )->get_card_num( ) ).
*
* Composition - Object References
*  data(lo_keyboard) = new zcl_20_keyboard_log_c367( ).
*  data(lo_laptop) = new zcl_21_laptop_log_c367( lo_keyboard ).
*
*  lo_keyboard->keyboard_type = 'ES'.
*
*  out->write( lo_laptop->keyboard->keyboard_type ).
*
* Handleling multiple refereneces
*    DATA: lo_vat1 TYPE REF TO zcl_22_vat_indicator_log_c367,
*          lo_vat2 TYPE REF TO zcl_22_vat_indicator_log_c367,
*          lo_vat3 TYPE REF TO zcl_22_vat_indicator_log_c367.
*
*    lo_vat1 = NEW #( ).
**    lo_vat2 = NEW #( ).
**    lo_vat3 = NEW #( ).
*
*    lo_vat2 = lo_vat1.
*    lo_vat3 = lo_vat1.
*
*    lo_vat1->vat_ind = 'A1'.
*    lo_vat2->vat_ind = 'A2'.
*    lo_vat3->vat_ind = 'A3'.
*
*    out->write( lo_vat1->vat_ind ).
*    out->write( lo_vat2->vat_ind ).
*    out->write( lo_vat3->vat_ind ).
*
* Generic Reference Object.
*    DATA: lo_object TYPE REF TO object.
*
*    lo_object = new zcl_23_generic_ref_lgl_c367( ).
*
*    data(lv_method) = 'RETURN_CATEGORY'.
*
*    data lv_category type string.
*
*    call METHOD lo_object->(lv_method) RECEIVING rv_category = lv_category.
*
*    out->write( lv_category ).
*
* Events
*    DATA(lo_timer) = NEW zcl_24_timer_lgl_c367( ).
*    DATA(lo_conexion) = NEW zcl_25_conexion_lgl_c367( ).
*
*    SET HANDLER lo_conexion->on_time_out FOR lo_timer.
*
*    DO.
*
*      WAIT UP TO 1 SECONDS.
*      lo_timer->increment_counter( 1 ).
*
*      IF lo_conexion->hour IS INITIAL.
*        out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time( ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { lo_conexion->hour }-{ lo_conexion->sender_user }| ).
*        EXIT.
*      ENDIF.
*
*    ENDDO.
*
** Events with Interfaces
*
*    TRY.
*        DATA(l_result) = 100 / 0.
*
*      CATCH cx_root INTO DATA(lx_error).
*        out->write( lx_error->get_text( ) ).
*    ENDTRY.
*
*
*    DATA(lo_bank) = NEW zcl_26_bank_log_367( ).
*    DATA(lo_client) = NEW zcl_27_client_account_log_c367( ).
*
*    SET HANDLER lo_client->on_new_transfer FOR lo_bank ACTIVATION abap_true.
*
*    DO 5 TIMES.
*      WAIT UP TO 1 SECONDS.
*      out->write( lo_bank->create_notification( ) ).
*      out->write( lo_client->notification ).
*      IF sy-index = 3.
*        SET HANDLER lo_client->on_new_transfer FOR lo_bank ACTIVATION abap_false.
*        lo_client->notification = 'No handler for event new transfer'.
*      ENDIF.
*    ENDDO.
*
* Exceptions
*    DATA(lo_excep) = NEW zcl_28_manage_resource_lg_c367( ).
*
*    TRY.
*
*        DATA: lv_result TYPE i,
*              lv_num1   TYPE i VALUE 10,
*              lv_num2   TYPE i.
*
*        lv_result = lv_num1 / lv_num2.
*
*        lo_excep->check_user( sy-uname ).
*        "CATCH cx_root INTO DATA(lx_excep).
*      CATCH zcx_01_auth_log_c367 INTO DATA(lx_excep).
*        out->write( lx_excep->get_text( ) ).
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zero).
*        out->write( lx_zero->get_text( ) ).
*
*        lv_num2 = 2.
*
*        RETRY.
*
*    ENDTRY.
*
*    out->write( lv_result ).
*
** Singleton
*    DATA: lo_singleton1 TYPE REF TO zcl_29_singleton_log_c367,
*          lo_singleton2 TYPE REF TO zcl_29_singleton_log_c367.
*
*    lo_singleton1 = zcl_29_singleton_log_c367=>get_instance( ).
*
*    WAIT UP TO 2 SECONDS.
*
*    lo_singleton2 = zcl_29_singleton_log_c367=>get_instance( ).
*
*    out->write( lo_singleton1->time ).
*    out->write( lo_singleton2->time ).
*
** Factory Method
*    DATA: lo_shape   TYPE REF TO zif_06_geo_figure_log_c367,
*          lo_factory TYPE REF TO zcl_33_factory_lgl_c367.
*
*          lo_factory = new #( ).
*
*          lo_shape = lo_factory->get_shape( 'Square' ).
*
*          out->write( lo_shape->draw_figure( ) ).

* Model - View - Controller
    DATA: lv_name TYPE string VALUE 'Juan Lopez',
          lv_role TYPE string VALUE 'ABAP Developer'.

    DATA(lo_model) = NEW zcl_34_model_lgl_c367(
      iv_name = lv_name
      iv_role = lv_role ).

    DATA(lo_view) = NEW zcl_35_view_lgl_c367( ).

    DATA(lo_controller) = NEW zcl_36_controller_lgl_c367( ).

    lo_controller->set_model( lo_model ).
    lo_controller->set_view( lo_view ).

    lo_controller->get_view( )->display_employee(
      iv_name = lo_model->get_name( )
      iv_role = lo_model->get_role( )
      io_out  = out ).

























































  ENDMETHOD.
ENDCLASS.
