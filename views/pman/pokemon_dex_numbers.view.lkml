# The name of this view in Looker is "Pokemon Dex Numbers"
view: pokemon_dex_numbers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_dex_numbers ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Pokedex ID" in Explore.

  dimension: pokedex_id {
    type: number
    sql: ${TABLE}.pokedex_id ;;
  }

  dimension: pokedex_number {
    type: number
    sql: ${TABLE}.pokedex_number ;;
  }

  dimension: species_id {
    type: number
    sql: ${TABLE}.species_id ;;
  }
  measure: count {
    type: count
  }
}
