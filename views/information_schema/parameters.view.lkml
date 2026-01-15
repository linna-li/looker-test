# The name of this view in Looker is "Parameters"
view: parameters {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.PARAMETERS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Character Maximum Length" in Explore.

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}.CHARACTER_MAXIMUM_LENGTH ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}.CHARACTER_OCTET_LENGTH ;;
  }

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: datetime_precision {
    type: number
    sql: ${TABLE}.DATETIME_PRECISION ;;
  }

  dimension: dtd_identifier {
    type: string
    sql: ${TABLE}.DTD_IDENTIFIER ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}.NUMERIC_PRECISION ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}.NUMERIC_SCALE ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: parameter_mode {
    type: string
    sql: ${TABLE}.PARAMETER_MODE ;;
  }

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.PARAMETER_NAME ;;
  }

  dimension: routine_type {
    type: string
    sql: ${TABLE}.ROUTINE_TYPE ;;
  }

  dimension: specific_catalog {
    type: string
    sql: ${TABLE}.SPECIFIC_CATALOG ;;
  }

  dimension: specific_name {
    type: string
    sql: ${TABLE}.SPECIFIC_NAME ;;
  }

  dimension: specific_schema {
    type: string
    sql: ${TABLE}.SPECIFIC_SCHEMA ;;
  }
  measure: count {
    type: count
    drill_fields: [specific_name, parameter_name, character_set_name, collation_name]
  }
}
