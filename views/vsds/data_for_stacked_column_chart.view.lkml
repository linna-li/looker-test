# The name of this view in Looker is "Data for Stacked Column Chart"
view: data_for_stacked_column_chart {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.data for stacked column chart` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count of F" in Explore.

  dimension: count_of_f {
    type: number
    sql: ${TABLE}.count_of_f ;;
  }

  dimension: fruit {
    type: string
    sql: ${TABLE}.fruit ;;
  }

  dimension: person {
    type: string
    sql: ${TABLE}.person ;;
  }
  measure: count {
    type: count
  }
}
