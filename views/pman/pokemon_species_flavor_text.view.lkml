# The name of this view in Looker is "Pokemon Species Flavor Text"
view: pokemon_species_flavor_text {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_species_flavor_text ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Flavor Text" in Explore.

  dimension: flavor_text {
    type: string
    sql: ${TABLE}.flavor_text ;;
  }

  dimension: language_id {
    type: number
    sql: ${TABLE}.language_id ;;
  }

  dimension: species_id {
    type: number
    sql: ${TABLE}.species_id ;;
  }

  dimension: version_id {
    type: number
    sql: ${TABLE}.version_id ;;
  }
  measure: count {
    type: count
  }
}
