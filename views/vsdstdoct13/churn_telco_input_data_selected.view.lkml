# The name of this view in Looker is "Churn Telco Input Data Selected"
view: churn_telco_input_data_selected {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsdstdoct13.ChurnTelco_input_data_selected` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Machine Failure Air Temperature" in Explore.

  dimension: machine_failure_air_temperature {
    type: number
    sql: ${TABLE}.machine_failure_air_temperature ;;
  }

  dimension: machine_failure_machine_failed {
    type: string
    sql: ${TABLE}.machine_failure_machine_failed ;;
  }

  dimension: machine_failure_process_temperature {
    type: number
    sql: ${TABLE}.machine_failure_process_temperature ;;
  }

  dimension: machine_failure_product_quality {
    type: string
    sql: ${TABLE}.machine_failure_product_quality ;;
  }

  dimension: machine_failure_rotational_speed {
    type: number
    sql: ${TABLE}.machine_failure_rotational_speed ;;
  }

  dimension: machine_failure_tool_wear {
    type: number
    sql: ${TABLE}.machine_failure_tool_wear ;;
  }

  dimension: machine_failure_torque {
    type: number
    sql: ${TABLE}.machine_failure_torque ;;
  }
  measure: count {
    type: count
  }
}
