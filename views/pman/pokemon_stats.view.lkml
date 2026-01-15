# The name of this view in Looker is "Pokemon Stats"
view: pokemon_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_stats ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Base Stat" in Explore.

  dimension: base_stat {
    type: number
    sql: ${TABLE}.base_stat ;;
  }

  dimension: effort {
    type: number
    sql: ${TABLE}.effort ;;
  }

  dimension: pokemon_id {
    type: number
    sql: ${TABLE}.pokemon_id ;;
  }

  dimension: stat_id {
    type: number
    sql: ${TABLE}.stat_id ;;
  }
  measure: count {
    type: count
  }
}
