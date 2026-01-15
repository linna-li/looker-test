# The name of this view in Looker is "Pokemon Species"
view: pokemon_species {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_species ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Base Happiness" in Explore.

  dimension: base_happiness {
    type: number
    sql: ${TABLE}.base_happiness ;;
  }

  dimension: capture_rate {
    type: number
    sql: ${TABLE}.capture_rate ;;
  }

  dimension: color_id {
    type: number
    sql: ${TABLE}.color_id ;;
  }

  dimension: conquest_order {
    type: string
    sql: ${TABLE}.conquest_order ;;
  }

  dimension: evolution_chain_id {
    type: number
    sql: ${TABLE}.evolution_chain_id ;;
  }

  dimension: evolves_from_species_id {
    type: string
    sql: ${TABLE}.evolves_from_species_id ;;
  }

  dimension: forms_switchable {
    type: number
    sql: ${TABLE}.forms_switchable ;;
  }

  dimension: gender_rate {
    type: number
    sql: ${TABLE}.gender_rate ;;
  }

  dimension: generation_id {
    type: number
    sql: ${TABLE}.generation_id ;;
  }

  dimension: growth_rate_id {
    type: number
    sql: ${TABLE}.growth_rate_id ;;
  }

  dimension: habitat_id {
    type: string
    sql: ${TABLE}.habitat_id ;;
  }

  dimension: has_gender_differences {
    type: number
    sql: ${TABLE}.has_gender_differences ;;
  }

  dimension: hatch_counter {
    type: number
    sql: ${TABLE}.hatch_counter ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_baby {
    type: number
    sql: ${TABLE}.is_baby ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: shape_id {
    type: number
    sql: ${TABLE}.shape_id ;;
  }
  measure: count {
    type: count
  }
}
