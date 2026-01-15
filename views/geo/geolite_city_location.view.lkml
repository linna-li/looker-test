# The name of this view in Looker is "Geolite City Location"
view: geolite_city_location {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: geo.geolite_city_location ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area Code" in Explore.

  dimension: area_code {
    type: string
    sql: ${TABLE}.areaCode ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: loc_id {
    type: number
    sql: ${TABLE}.locId ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: metro_code {
    type: string
    sql: ${TABLE}.metroCode ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  measure: count {
    type: count
  }
}
