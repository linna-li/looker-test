# The name of this view in Looker is "Lr7 X43 B1768441496322 Testpdtangel"
view: lr7_x43_b1768441496322_testpdtangel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$7X43B1768441496322_testpdtangel ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count Lr7 X43 B1768441496322 Testpdtangel" in Explore.

  dimension: count_lr7_x43_b1768441496322_testpdtangel {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
  }
}
