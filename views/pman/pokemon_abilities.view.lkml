# The name of this view in Looker is "Pokemon Abilities"
view: pokemon_abilities {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_abilities ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ability ID" in Explore.

  dimension: ability_id {
    type: number
    sql: ${TABLE}.ability_id ;;
  }

  dimension: is_hidden {
    type: number
    sql: ${TABLE}.is_hidden ;;
  }

  dimension: pokemon_id {
    type: number
    sql: ${TABLE}.pokemon_id ;;
  }

  dimension: slot {
    type: number
    sql: ${TABLE}.slot ;;
  }
  measure: count {
    type: count
  }
}
