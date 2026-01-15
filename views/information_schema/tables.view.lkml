# The name of this view in Looker is "Tables"
view: tables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.TABLES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Auto Increment" in Explore.

  dimension: auto_increment {
    type: number
    sql: ${TABLE}.AUTO_INCREMENT ;;
  }

  dimension: avg_row_length {
    type: number
    sql: ${TABLE}.AVG_ROW_LENGTH ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: check {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CHECK_TIME ;;
  }

  dimension: checksum {
    type: number
    sql: ${TABLE}.CHECKSUM ;;
  }

  dimension: create_options {
    type: string
    sql: ${TABLE}.CREATE_OPTIONS ;;
  }

  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATE_TIME ;;
  }

  dimension: data_free {
    type: number
    sql: ${TABLE}.DATA_FREE ;;
  }

  dimension: data_length {
    type: number
    sql: ${TABLE}.DATA_LENGTH ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.ENGINE ;;
  }

  dimension: index_length {
    type: number
    sql: ${TABLE}.INDEX_LENGTH ;;
  }

  dimension: max_data_length {
    type: number
    sql: ${TABLE}.MAX_DATA_LENGTH ;;
  }

  dimension: row_format {
    type: string
    sql: ${TABLE}.ROW_FORMAT ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_collation {
    type: string
    sql: ${TABLE}.TABLE_COLLATION ;;
  }

  dimension: table_comment {
    type: string
    sql: ${TABLE}.TABLE_COMMENT ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_rows {
    type: number
    sql: ${TABLE}.TABLE_ROWS ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}.TABLE_TYPE ;;
  }

  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.UPDATE_TIME ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.VERSION ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
