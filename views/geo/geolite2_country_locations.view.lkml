# The name of this view in Looker is "Geolite2 Country Locations"
view: geolite2_country_locations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: geo.geolite2_country_locations ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Continent Code" in Explore.

  dimension: continent_code {
    type: string
    sql: ${TABLE}.continent_code ;;
  }

  dimension: continent_name {
    type: string
    sql: ${TABLE}.continent_name ;;
  }

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.country_iso_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: geoname_id {
    type: number
    sql: ${TABLE}.geoname_id ;;
  }
  measure: count {
    type: count
    drill_fields: [continent_name, country_name]
  }
}
