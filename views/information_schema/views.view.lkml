# The name of this view in Looker is "Views"
view: views {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.VIEWS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Character Set Client" in Explore.

  dimension: character_set_client {
    type: string
    sql: ${TABLE}.CHARACTER_SET_CLIENT ;;
  }

  dimension: check_option {
    type: string
    sql: ${TABLE}.CHECK_OPTION ;;
  }

  dimension: collation_connection {
    type: string
    sql: ${TABLE}.COLLATION_CONNECTION ;;
  }

  dimension: definer {
    type: string
    sql: ${TABLE}.DEFINER ;;
  }

  dimension: is_updatable {
    type: string
    sql: ${TABLE}.IS_UPDATABLE ;;
  }

  dimension: security_type {
    type: string
    sql: ${TABLE}.SECURITY_TYPE ;;
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

  dimension: view_definition {
    type: string
    sql: ${TABLE}.VIEW_DEFINITION ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
