# The name of this view in Looker is "Type Game Indices"
view: type_game_indices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.type_game_indices ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Game Index" in Explore.

  dimension: game_index {
    type: number
    sql: ${TABLE}.game_index ;;
  }

  dimension: generation_id {
    type: number
    sql: ${TABLE}.generation_id ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  measure: count {
    type: count
  }
}
