# The name of this view in Looker is "Key Column Usage"
view: key_column_usage {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.KEY_COLUMN_USAGE ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: constraint_catalog {
    type: string
    sql: ${TABLE}.CONSTRAINT_CATALOG ;;
  }

  dimension: constraint_name {
    type: string
    sql: ${TABLE}.CONSTRAINT_NAME ;;
  }

  dimension: constraint_schema {
    type: string
    sql: ${TABLE}.CONSTRAINT_SCHEMA ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: position_in_unique_constraint {
    type: number
    sql: ${TABLE}.POSITION_IN_UNIQUE_CONSTRAINT ;;
  }

  dimension: referenced_column_name {
    type: string
    sql: ${TABLE}.REFERENCED_COLUMN_NAME ;;
  }

  dimension: referenced_table_name {
    type: string
    sql: ${TABLE}.REFERENCED_TABLE_NAME ;;
  }

  dimension: referenced_table_schema {
    type: string
    sql: ${TABLE}.REFERENCED_TABLE_SCHEMA ;;
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
    drill_fields: [constraint_name, table_name, column_name, referenced_table_name, referenced_column_name]
  }
}
