*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

" CCIMP

TYPES: BEGIN OF ty_local2,
         comp1 TYPE string,
         comp2 TYPE string,
         comp3 TYPE string,
       END OF ty_local2.

INTERFACE lif_local2.
  DATA: local TYPE string.
ENDINTERFACE.

CLASS lcl_local2 DEFINITION.

  PUBLIC SECTION.

    INTERFACES: lif_local.

ENDCLASS.

class lcl_local IMPLEMENTATION.

ENDCLASS.

class lcl_local2 IMPLEMENTATION.

ENDCLASS.
