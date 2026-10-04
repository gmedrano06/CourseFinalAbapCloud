CLASS zcl_load_master_data_473 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES if_oo_adt_classrun.

ENDCLASS.



CLASS zcl_load_master_data_473 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

   DELETE FROM zdt_status_473.
    DELETE FROM zdt_priority_473.

    INSERT zdt_status_473 FROM TABLE @(
      VALUE #(
        ( status_code = 'OP' status_description = 'Open' )
        ( status_code = 'IP' status_description = 'In Progress' )
        ( status_code = 'PE' status_description = 'Pending' )
        ( status_code = 'CO' status_description = 'Completed' )
        ( status_code = 'CL' status_description = 'Closed' )
        ( status_code = 'CN' status_description = 'Canceled' )
      )
    ).

    INSERT zdt_priority_473 FROM TABLE @(
      VALUE #(
        ( priority_code = 'H' priority_description = 'High' )
        ( priority_code = 'M' priority_description = 'Medium' )
        ( priority_code = 'L' priority_description = 'Low' )
      )
    ).

    out->write( 'Master data loaded successfully' ).

ENDMETHOD.
ENDCLASS.
