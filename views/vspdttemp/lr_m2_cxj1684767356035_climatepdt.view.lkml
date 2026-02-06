# The name of this view in Looker is "Lr M2 Cxj1684767356035 Climatepdt"
view: lr_m2_cxj1684767356035_climatepdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vspdttemp.LR_M2CXJ1684767356035_climatepdt` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Humidity" in Explore.

  dimension: humidity {
    type: number
    sql: ${TABLE}.humidity ;;
  }

  dimension: meanpressure {
    type: number
    sql: ${TABLE}.meanpressure ;;
  }

  dimension: meantemp {
    type: number
    sql: ${TABLE}.meantemp ;;
  }

  dimension: pk {
    type: number
    sql: ${TABLE}.pk ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: vsdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.vsdate_date ;;
  }

  dimension: wind_speed {
    type: number
    sql: ${TABLE}.wind_speed ;;
  }
  measure: count {
    type: count
  }
}
