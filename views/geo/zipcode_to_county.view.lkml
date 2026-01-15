# The name of this view in Looker is "Zipcode to County"
view: zipcode_to_county {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: geo.zipcode_to_county ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "2010 Population" in Explore.

  dimension: 2010_population {
    type: number
    sql: ${TABLE}.`2010_population` ;;
  }

  dimension: cd113 {
    type: string
    sql: ${TABLE}.cd113 ;;
  }

  dimension: census_place_code {
    type: string
    sql: ${TABLE}.census_place_code ;;
  }

  dimension: cntyname {
    type: string
    sql: ${TABLE}.cntyname ;;
  }

  dimension: county {
    type: number
    sql: ${TABLE}.county ;;
  }

  dimension: fips_state {
    type: number
    sql: ${TABLE}.fips_state ;;
  }

  dimension: state_postal_code {
    type: string
    sql: ${TABLE}.state_postal_code ;;
  }

  dimension: zcta5_to_placece_alloc_factor {
    type: number
    sql: ${TABLE}.`zcta5 to placece alloc factor` ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: zipname {
    type: string
    sql: ${TABLE}.zipname ;;
  }
  measure: count {
    type: count
    drill_fields: [cntyname, zipname]
  }
}
