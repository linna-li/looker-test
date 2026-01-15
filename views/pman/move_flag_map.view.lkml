# The name of this view in Looker is "Move Flag Map"
view: move_flag_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.move_flag_map ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Move Flag ID" in Explore.

  dimension: move_flag_id {
    type: number
    sql: ${TABLE}.move_flag_id ;;
  }

  dimension: move_id {
    type: number
    sql: ${TABLE}.move_id ;;
  }
  measure: count {
    type: count
  }
}
