# The name of this view in Looker is "Pokemon Evolution"
view: pokemon_evolution {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_evolution ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Evolution Trigger ID" in Explore.

  dimension: evolution_trigger_id {
    type: number
    sql: ${TABLE}.evolution_trigger_id ;;
  }

  dimension: evolved_species_id {
    type: number
    sql: ${TABLE}.evolved_species_id ;;
  }

  dimension: gender_id {
    type: string
    sql: ${TABLE}.gender_id ;;
  }

  dimension: held_item_id {
    type: string
    sql: ${TABLE}.held_item_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: known_move_id {
    type: string
    sql: ${TABLE}.known_move_id ;;
  }

  dimension: known_move_type_id {
    type: string
    sql: ${TABLE}.known_move_type_id ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: minimum_affection {
    type: string
    sql: ${TABLE}.minimum_affection ;;
  }

  dimension: minimum_beauty {
    type: string
    sql: ${TABLE}.minimum_beauty ;;
  }

  dimension: minimum_happiness {
    type: string
    sql: ${TABLE}.minimum_happiness ;;
  }

  dimension: minimum_level {
    type: string
    sql: ${TABLE}.minimum_level ;;
  }

  dimension: needs_overworld_rain {
    type: number
    sql: ${TABLE}.needs_overworld_rain ;;
  }

  dimension: party_species_id {
    type: string
    sql: ${TABLE}.party_species_id ;;
  }

  dimension: party_type_id {
    type: string
    sql: ${TABLE}.party_type_id ;;
  }

  dimension: relative_physical_stats {
    type: string
    sql: ${TABLE}.relative_physical_stats ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${TABLE}.time_of_day ;;
  }

  dimension: trade_species_id {
    type: string
    sql: ${TABLE}.trade_species_id ;;
  }

  dimension: trigger_item_id {
    type: string
    sql: ${TABLE}.trigger_item_id ;;
  }

  dimension: turn_upside_down {
    type: number
    sql: ${TABLE}.turn_upside_down ;;
  }
  measure: count {
    type: count
  }
}
