# The name of this view in Looker is "Pokemon Game Indices"
view: pokemon_game_indices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_game_indices ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Game Index" in Explore.

  dimension: game_index {
    type: number
    sql: ${TABLE}.game_index ;;
  }

  dimension: pokemon_id {
    type: number
    sql: ${TABLE}.pokemon_id ;;
  }

  dimension: version_id {
    type: number
    sql: ${TABLE}.version_id ;;
  }
  measure: count {
    type: count
  }
}
