# The name of this view in Looker is "Super Contest Combos"
view: super_contest_combos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.super_contest_combos ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "First Move ID" in Explore.

  dimension: first_move_id {
    type: number
    sql: ${TABLE}.first_move_id ;;
  }

  dimension: second_move_id {
    type: number
    sql: ${TABLE}.second_move_id ;;
  }
  measure: count {
    type: count
  }
}
