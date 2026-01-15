# The name of this view in Looker is "Innodb Metrics"
view: innodb_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_METRICS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Count" in Explore.

  dimension: avg_count {
    type: number
    sql: ${TABLE}.AVG_COUNT ;;
  }

  dimension: avg_count_reset {
    type: number
    sql: ${TABLE}.AVG_COUNT_RESET ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.COUNT ;;
  }

  dimension: count_reset {
    type: number
    sql: ${TABLE}.COUNT_RESET ;;
  }

  dimension: max_count {
    type: number
    sql: ${TABLE}.MAX_COUNT ;;
  }

  dimension: max_count_reset {
    type: number
    sql: ${TABLE}.MAX_COUNT_RESET ;;
  }

  dimension: min_count {
    type: number
    sql: ${TABLE}.MIN_COUNT ;;
  }

  dimension: min_count_reset {
    type: number
    sql: ${TABLE}.MIN_COUNT_RESET ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: subsystem {
    type: string
    sql: ${TABLE}.SUBSYSTEM ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time_disabled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TIME_DISABLED ;;
  }

  dimension: time_elapsed {
    type: number
    sql: ${TABLE}.TIME_ELAPSED ;;
  }

  dimension_group: time_enabled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TIME_ENABLED ;;
  }

  dimension_group: time_reset {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TIME_RESET ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
