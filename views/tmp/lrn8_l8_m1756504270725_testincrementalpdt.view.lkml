# The name of this view in Looker is "Lrn8 L8 M1756504270725 Testincrementalpdt"
view: lrn8_l8_m1756504270725_testincrementalpdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$N8L8M1756504270725_testincrementalpdt ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count Lrn8 L8 M1756504270725 Testincrementalpdt" in Explore.

  dimension: count_lrn8_l8_m1756504270725_testincrementalpdt {
    type: number
    sql: ${TABLE}.count ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_year ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
  }
}
