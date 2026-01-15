# The name of this view in Looker is "Vrfy 749408234e0fab1b0b2dc4c18d1a655b"
view: vrfy_749408234e0fab1b0b2dc4c18d1a655b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.vrfy_749408234e0fab1b0b2dc4c18d1a655b ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: number
    sql: ${TABLE}.testcol ;;
  }
  measure: count {
    type: count
  }
}
