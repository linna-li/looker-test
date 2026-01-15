# The name of this view in Looker is "Pokeathlon Stat Names"
view: pokeathlon_stat_names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokeathlon_stat_names ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Local Language ID" in Explore.

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pokeathlon_stat_id {
    type: number
    sql: ${TABLE}.pokeathlon_stat_id ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
