# The name of this view in Looker is "Triggers"
view: triggers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.TRIGGERS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Action Condition" in Explore.

  dimension: action_condition {
    type: string
    sql: ${TABLE}.ACTION_CONDITION ;;
  }

  dimension: action_order {
    type: number
    sql: ${TABLE}.ACTION_ORDER ;;
  }

  dimension: action_orientation {
    type: string
    sql: ${TABLE}.ACTION_ORIENTATION ;;
  }

  dimension: action_reference_new_row {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_NEW_ROW ;;
  }

  dimension: action_reference_new_table {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_NEW_TABLE ;;
  }

  dimension: action_reference_old_row {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_OLD_ROW ;;
  }

  dimension: action_reference_old_table {
    type: string
    sql: ${TABLE}.ACTION_REFERENCE_OLD_TABLE ;;
  }

  dimension: action_statement {
    type: string
    sql: ${TABLE}.ACTION_STATEMENT ;;
  }

  dimension: action_timing {
    type: string
    sql: ${TABLE}.ACTION_TIMING ;;
  }

  dimension: character_set_client {
    type: string
    sql: ${TABLE}.CHARACTER_SET_CLIENT ;;
  }

  dimension: collation_connection {
    type: string
    sql: ${TABLE}.COLLATION_CONNECTION ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATED ;;
  }

  dimension: database_collation {
    type: string
    sql: ${TABLE}.DATABASE_COLLATION ;;
  }

  dimension: definer {
    type: string
    sql: ${TABLE}.DEFINER ;;
  }

  dimension: event_manipulation {
    type: string
    sql: ${TABLE}.EVENT_MANIPULATION ;;
  }

  dimension: event_object_catalog {
    type: string
    sql: ${TABLE}.EVENT_OBJECT_CATALOG ;;
  }

  dimension: event_object_schema {
    type: string
    sql: ${TABLE}.EVENT_OBJECT_SCHEMA ;;
  }

  dimension: event_object_table {
    type: string
    sql: ${TABLE}.EVENT_OBJECT_TABLE ;;
  }

  dimension: sql_mode {
    type: string
    sql: ${TABLE}.SQL_MODE ;;
  }

  dimension: trigger_catalog {
    type: string
    sql: ${TABLE}.TRIGGER_CATALOG ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.TRIGGER_NAME ;;
  }

  dimension: trigger_schema {
    type: string
    sql: ${TABLE}.TRIGGER_SCHEMA ;;
  }
  measure: count {
    type: count
    drill_fields: [trigger_name]
  }
}
