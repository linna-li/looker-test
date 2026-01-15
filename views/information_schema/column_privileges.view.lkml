# The name of this view in Looker is "Column Privileges"
view: column_privileges {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.COLUMN_PRIVILEGES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Name" in Explore.

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: grantee {
    type: string
    sql: ${TABLE}.GRANTEE ;;
  }

  dimension: is_grantable {
    type: string
    sql: ${TABLE}.IS_GRANTABLE ;;
  }

  dimension: privilege_type {
    type: string
    sql: ${TABLE}.PRIVILEGE_TYPE ;;
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
    drill_fields: [table_name, column_name]
  }
}
