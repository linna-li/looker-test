# The name of this view in Looker is "Sp Stocks"
view: sp_stocks {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.sp_stocks` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Adj Close" in Explore.

  dimension: adj_close {
    type: number
    sql: ${TABLE}.Adj_Close ;;
  }

  dimension: close {
    type: number
    sql: ${TABLE}.Close ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: high {
    type: number
    sql: ${TABLE}.High ;;
  }

  dimension: low {
    type: number
    sql: ${TABLE}.Low ;;
  }

  dimension: open {
    type: number
    sql: ${TABLE}.Open ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.Symbol ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }
  measure: count {
    type: count
  }
}
