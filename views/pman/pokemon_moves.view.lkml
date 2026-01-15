# The name of this view in Looker is "Pokemon Moves"
view: pokemon_moves {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_moves ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Level" in Explore.

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: move_id {
    type: number
    sql: ${TABLE}.move_id ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}.`order` ;;
  }

  dimension: pokemon_id {
    type: number
    sql: ${TABLE}.pokemon_id ;;
  }

  dimension: pokemon_move_method_id {
    type: number
    sql: ${TABLE}.pokemon_move_method_id ;;
  }

  dimension: version_group_id {
    type: number
    sql: ${TABLE}.version_group_id ;;
  }
  measure: count {
    type: count
  }
}
