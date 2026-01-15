# The name of this view in Looker is "Statistics"
view: statistics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.STATISTICS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cardinality" in Explore.

  dimension: cardinality {
    type: number
    sql: ${TABLE}.CARDINALITY ;;
  }

  dimension: collation {
    type: string
    sql: ${TABLE}.COLLATION ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: index_comment {
    type: string
    sql: ${TABLE}.INDEX_COMMENT ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.INDEX_NAME ;;
  }

  dimension: index_schema {
    type: string
    sql: ${TABLE}.INDEX_SCHEMA ;;
  }

  dimension: index_type {
    type: string
    sql: ${TABLE}.INDEX_TYPE ;;
  }

  dimension: non_unique {
    type: number
    sql: ${TABLE}.NON_UNIQUE ;;
  }

  dimension: nullable {
    type: string
    sql: ${TABLE}.NULLABLE ;;
  }

  dimension: packed {
    type: string
    sql: ${TABLE}.PACKED ;;
  }

  dimension: seq_in_index {
    type: number
    sql: ${TABLE}.SEQ_IN_INDEX ;;
  }

  dimension: sub_part {
    type: number
    sql: ${TABLE}.SUB_PART ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name, index_name, column_name]
  }
}
