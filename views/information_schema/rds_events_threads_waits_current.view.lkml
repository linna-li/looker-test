# The name of this view in Looker is "Rds Events Threads Waits Current"
view: rds_events_threads_waits_current {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.RDS_EVENTS_THREADS_WAITS_CURRENT ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Command" in Explore.

  dimension: command {
    type: string
    sql: ${TABLE}.COMMAND ;;
  }

  dimension: db {
    type: string
    sql: ${TABLE}.DB ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.EVENT_NAME ;;
  }

  dimension: event_timer_end {
    type: number
    sql: ${TABLE}.EVENT_TIMER_END ;;
  }

  dimension: event_timer_start {
    type: number
    sql: ${TABLE}.EVENT_TIMER_START ;;
  }

  dimension: event_timer_wait {
    type: number
    sql: ${TABLE}.EVENT_TIMER_WAIT ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.HOST ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.INFO ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: parent_thread_id {
    type: number
    sql: ${TABLE}.PARENT_THREAD_ID ;;
  }

  dimension: processlist_id {
    type: number
    sql: ${TABLE}.PROCESSLIST_ID ;;
  }

  dimension: query_digest_hash {
    type: string
    sql: ${TABLE}.QUERY_DIGEST_HASH ;;
  }

  dimension: query_digest_text {
    type: string
    sql: ${TABLE}.QUERY_DIGEST_TEXT ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: thread_id {
    type: number
    sql: ${TABLE}.THREAD_ID ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.TIME ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.USER ;;
  }
  measure: count {
    type: count
    drill_fields: [name, event_name]
  }
}
