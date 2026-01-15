# The name of this view in Looker is "Lrjjxej1759904306429 Native Table"
view: lrjjxej1759904306429_native_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$JJXEJ1759904306429_native_table ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count Lrjjxej1759904306429 Native Table" in Explore.

  dimension: count_lrjjxej1759904306429_native_table {
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
