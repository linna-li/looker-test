# The name of this view in Looker is "Schemata"
view: schemata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.SCHEMATA ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Catalog Name" in Explore.

  dimension: catalog_name {
    type: string
    sql: ${TABLE}.CATALOG_NAME ;;
  }

  dimension: default_character_set_name {
    type: string
    sql: ${TABLE}.DEFAULT_CHARACTER_SET_NAME ;;
  }

  dimension: default_collation_name {
    type: string
    sql: ${TABLE}.DEFAULT_COLLATION_NAME ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.SCHEMA_NAME ;;
  }

  dimension: sql_path {
    type: string
    sql: ${TABLE}.SQL_PATH ;;
  }
  measure: count {
    type: count
    drill_fields: [catalog_name, schema_name, default_character_set_name, default_collation_name]
  }
}
