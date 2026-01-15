# The name of this view in Looker is "Vsds Bug Input Data Selected"
view: vsds_bug_input_data_selected {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.vsds_bug_input_data_selected` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Climate Humidity" in Explore.

  dimension: climate_humidity {
    type: number
    sql: ${TABLE}.climate_humidity ;;
  }

  dimension: climate_meanpressure {
    type: number
    sql: ${TABLE}.climate_meanpressure ;;
  }

  dimension: climate_meantemp {
    type: number
    sql: ${TABLE}.climate_meantemp ;;
  }

  dimension: climate_pk {
    type: number
    sql: ${TABLE}.climate_pk ;;
  }

  dimension: climate_wind_speed {
    type: number
    sql: ${TABLE}.climate_wind_speed ;;
  }
  measure: count {
    type: count
  }
}
