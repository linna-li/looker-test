# The name of this view in Looker is "Lrcsplu1768435427092 User Transactions Monthly"
view: lrcsplu1768435427092_user_transactions_monthly {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$CSPLU1768435427092_user_transactions_monthly ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Month" in Explore.

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: monthly_revenue {
    type: number
    sql: ${TABLE}.monthly_revenue ;;
  }

  dimension: monthly_transactions {
    type: number
    sql: ${TABLE}.monthly_transactions ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
