# The name of this view in Looker is "Vsds Bug Evaluate"
view: vsds_bug_evaluate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.vsds_bug_evaluate` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Explained Variance" in Explore.

  dimension: explained_variance {
    type: number
    sql: ${TABLE}.explained_variance ;;
  }

  dimension: mean_absolute_error {
    type: number
    sql: ${TABLE}.mean_absolute_error ;;
  }

  dimension: mean_squared_error {
    type: number
    sql: ${TABLE}.mean_squared_error ;;
  }

  dimension: mean_squared_log_error {
    type: number
    sql: ${TABLE}.mean_squared_log_error ;;
  }

  dimension: median_absolute_error {
    type: number
    sql: ${TABLE}.median_absolute_error ;;
  }

  dimension: r2_score {
    type: number
    sql: ${TABLE}.r2_score ;;
  }
  measure: count {
    type: count
  }
}
