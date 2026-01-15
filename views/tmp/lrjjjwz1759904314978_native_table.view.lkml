# The name of this view in Looker is "Lrjjjwz1759904314978 Native Table"
view: lrjjjwz1759904314978_native_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$JJJWZ1759904314978_Native_Table ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count Lrjjjwz1759904314978 Native Table" in Explore.

  dimension: count_lrjjjwz1759904314978_native_table {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
  }
}
