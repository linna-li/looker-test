# The name of this view in Looker is "Vrfy 07e9ea629bca8a6e3c96b6bdcdb5c942"
view: vrfy_07e9ea629bca8a6e3c96b6bdcdb5c942 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.vrfy_07e9ea629bca8a6e3c96b6bdcdb5c942 ;;

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
