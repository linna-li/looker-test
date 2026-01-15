# The name of this view in Looker is "Global Variables"
view: global_variables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.GLOBAL_VARIABLES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Variable Name" in Explore.

  dimension: variable_name {
    type: string
    sql: ${TABLE}.VARIABLE_NAME ;;
  }

  dimension: variable_value {
    type: string
    sql: ${TABLE}.VARIABLE_VALUE ;;
  }
  measure: count {
    type: count
    drill_fields: [variable_name]
  }
}
