# The name of this view in Looker is "Pokemon Form Pokeathlon Stats"
view: pokemon_form_pokeathlon_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_form_pokeathlon_stats ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Base Stat" in Explore.

  dimension: base_stat {
    type: number
    sql: ${TABLE}.base_stat ;;
  }

  dimension: maximum_stat {
    type: number
    sql: ${TABLE}.maximum_stat ;;
  }

  dimension: minimum_stat {
    type: number
    sql: ${TABLE}.minimum_stat ;;
  }

  dimension: pokeathlon_stat_id {
    type: number
    sql: ${TABLE}.pokeathlon_stat_id ;;
  }

  dimension: pokemon_form_id {
    type: number
    sql: ${TABLE}.pokemon_form_id ;;
  }
  measure: count {
    type: count
  }
}
