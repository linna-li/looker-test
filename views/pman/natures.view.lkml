# The name of this view in Looker is "Natures"
view: natures {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.natures ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Decreased Stat ID" in Explore.

  dimension: decreased_stat_id {
    type: number
    sql: ${TABLE}.decreased_stat_id ;;
  }

  dimension: game_index {
    type: number
    sql: ${TABLE}.game_index ;;
  }

  dimension: hates_flavor_id {
    type: number
    sql: ${TABLE}.hates_flavor_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: increased_stat_id {
    type: number
    sql: ${TABLE}.increased_stat_id ;;
  }

  dimension: likes_flavor_id {
    type: number
    sql: ${TABLE}.likes_flavor_id ;;
  }
  measure: count {
    type: count
  }
}
