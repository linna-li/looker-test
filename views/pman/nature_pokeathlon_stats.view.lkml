# The name of this view in Looker is "Nature Pokeathlon Stats"
view: nature_pokeathlon_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.nature_pokeathlon_stats ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Max Change" in Explore.

  dimension: max_change {
    type: number
    sql: ${TABLE}.max_change ;;
  }

  dimension: nature_id {
    type: number
    sql: ${TABLE}.nature_id ;;
  }

  dimension: pokeathlon_stat_id {
    type: number
    sql: ${TABLE}.pokeathlon_stat_id ;;
  }
  measure: count {
    type: count
  }
}
