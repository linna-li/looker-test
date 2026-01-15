# The name of this view in Looker is "Move Meta"
view: move_meta {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.move_meta ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ailment Chance" in Explore.

  dimension: ailment_chance {
    type: number
    sql: ${TABLE}.ailment_chance ;;
  }

  dimension: crit_rate {
    type: number
    sql: ${TABLE}.crit_rate ;;
  }

  dimension: drain {
    type: number
    sql: ${TABLE}.drain ;;
  }

  dimension: flinch_chance {
    type: number
    sql: ${TABLE}.flinch_chance ;;
  }

  dimension: healing {
    type: number
    sql: ${TABLE}.healing ;;
  }

  dimension: max_hits {
    type: string
    sql: ${TABLE}.max_hits ;;
  }

  dimension: max_turns {
    type: string
    sql: ${TABLE}.max_turns ;;
  }

  dimension: meta_ailment_id {
    type: number
    sql: ${TABLE}.meta_ailment_id ;;
  }

  dimension: meta_category_id {
    type: number
    sql: ${TABLE}.meta_category_id ;;
  }

  dimension: min_hits {
    type: string
    sql: ${TABLE}.min_hits ;;
  }

  dimension: min_turns {
    type: string
    sql: ${TABLE}.min_turns ;;
  }

  dimension: move_id {
    type: number
    sql: ${TABLE}.move_id ;;
  }

  dimension: stat_chance {
    type: number
    sql: ${TABLE}.stat_chance ;;
  }
  measure: count {
    type: count
  }
}
