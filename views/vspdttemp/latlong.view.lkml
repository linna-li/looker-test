# The name of this view in Looker is "Latlong"
view: latlong {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vspdttemp.latlong` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: usa_state {
    type: string
    sql: ${TABLE}.usa_state ;;
  }

  dimension: usa_state_code {
    type: string
    sql: ${TABLE}.usa_state_code ;;
  }

  dimension: usa_state_latitude {
    type: number
    sql: ${TABLE}.usa_state_latitude ;;
  }

  dimension: usa_state_longitude {
    type: number
    sql: ${TABLE}.usa_state_longitude ;;
  }
  measure: count {
    type: count
  }
}
