*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section

" CCDEF

TYPES: BEGIN OF ty_local,
         comp1 TYPE string,
         comp2 TYPE string,
         comp3 TYPE string,
       END OF ty_local.

INTERFACE lif_local.
  DATA: local TYPE string.
ENDINTERFACE.

CLASS lcl_local DEFINITION.

  PUBLIC SECTION.

    INTERFACES: lif_local.

ENDCLASS.
