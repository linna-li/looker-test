# The name of this view in Looker is "Partitions"
view: partitions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.PARTITIONS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Row Length" in Explore.

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

  dimension: index_length {
    type: number
    sql: ${TABLE}.INDEX_LENGTH ;;
  }

  dimension: max_data_length {
    type: number
    sql: ${TABLE}.MAX_DATA_LENGTH ;;
  }

  dimension: nodegroup {
    type: string
    sql: ${TABLE}.NODEGROUP ;;
  }

  dimension: partition_comment {
    type: string
    sql: ${TABLE}.PARTITION_COMMENT ;;
  }

  dimension: partition_description {
    type: string
    sql: ${TABLE}.PARTITION_DESCRIPTION ;;
  }

  dimension: partition_expression {
    type: string
    sql: ${TABLE}.PARTITION_EXPRESSION ;;
  }

  dimension: partition_method {
    type: string
    sql: ${TABLE}.PARTITION_METHOD ;;
  }

  dimension: partition_name {
    type: string
    sql: ${TABLE}.PARTITION_NAME ;;
  }

  dimension: partition_ordinal_position {
    type: number
    sql: ${TABLE}.PARTITION_ORDINAL_POSITION ;;
  }

  dimension: subpartition_expression {
    type: string
    sql: ${TABLE}.SUBPARTITION_EXPRESSION ;;
  }

  dimension: subpartition_method {
    type: string
    sql: ${TABLE}.SUBPARTITION_METHOD ;;
  }

  dimension: subpartition_name {
    type: string
    sql: ${TABLE}.SUBPARTITION_NAME ;;
  }

  dimension: subpartition_ordinal_position {
    type: number
    sql: ${TABLE}.SUBPARTITION_ORDINAL_POSITION ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
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

  dimension: tablespace_name {
    type: string
    sql: ${TABLE}.TABLESPACE_NAME ;;
  }

  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.UPDATE_TIME ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name, partition_name, subpartition_name, tablespace_name]
  }
}
