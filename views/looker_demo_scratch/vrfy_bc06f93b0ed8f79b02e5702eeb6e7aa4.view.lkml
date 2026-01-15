# The name of this view in Looker is "Vrfy Bc06f93b0ed8f79b02e5702eeb6e7aa4"
view: vrfy_bc06f93b0ed8f79b02e5702eeb6e7aa4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.vrfy_bc06f93b0ed8f79b02e5702eeb6e7aa4 ;;

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
