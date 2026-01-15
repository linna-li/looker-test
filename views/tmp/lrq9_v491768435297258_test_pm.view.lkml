# The name of this view in Looker is "Lrq9 V491768435297258 Test Pm"
view: lrq9_v491768435297258_test_pm {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$Q9V491768435297258_test_pm ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Foobar" in Explore.

  dimension: foobar {
    type: string
    sql: ${TABLE}.foobar ;;
  }
  measure: count {
    type: count
  }
}
