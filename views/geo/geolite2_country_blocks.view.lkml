# The name of this view in Looker is "Geolite2 Country Blocks"
view: geolite2_country_blocks {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: geo.geolite2_country_blocks ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Geoname ID" in Explore.

  dimension: geoname_id {
    type: number
    sql: ${TABLE}.geoname_id ;;
  }

  dimension: is_anonymous_proxy {
    type: number
    sql: ${TABLE}.is_anonymous_proxy ;;
  }

  dimension: is_satellite_provider {
    type: number
    sql: ${TABLE}.is_satellite_provider ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: network_mask_length {
    type: number
    sql: ${TABLE}.network_mask_length ;;
  }

  dimension: network_start_ip {
    type: string
    sql: ${TABLE}.network_start_ip ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: registered_country_geoname_id {
    type: number
    sql: ${TABLE}.registered_country_geoname_id ;;
  }

  dimension: represented_country_geoname_id {
    type: number
    sql: ${TABLE}.represented_country_geoname_id ;;
  }
  measure: count {
    type: count
  }
}
