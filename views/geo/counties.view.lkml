# The name of this view in Looker is "Counties"
view: counties {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: geo.counties ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "County Name" in Explore.

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: fips_class {
    type: string
    sql: ${TABLE}.fips_class ;;
  }

  dimension: fips_county {
    type: string
    sql: ${TABLE}.fips_county ;;
  }

  dimension: fips_state {
    type: string
    sql: ${TABLE}.fips_state ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }
  measure: count {
    type: count
    drill_fields: [county_name]
  }
}
