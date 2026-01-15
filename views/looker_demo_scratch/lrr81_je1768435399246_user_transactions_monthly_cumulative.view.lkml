# The name of this view in Looker is "Lrr81 Je1768435399246 User Transactions Monthly Cumulative"
view: lrr81_je1768435399246_user_transactions_monthly_cumulative {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$R81JE1768435399246_user_transactions_monthly_cumulative ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cumulative Monthly Revenue" in Explore.

  dimension: cumulative_monthly_revenue {
    type: number
    sql: ${TABLE}.cumulative_monthly_revenue ;;
  }

  dimension: cumulative_monthly_transactions {
    type: number
    sql: ${TABLE}.cumulative_monthly_transactions ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
