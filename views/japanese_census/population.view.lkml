# The name of this view in Looker is "Population"
view: population {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `japanese_census.population` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: era {
    type: string
    sql: ${TABLE}.era ;;
  }

  dimension: female_population {
    type: string
    sql: ${TABLE}.female_population ;;
  }

  dimension: japanese_year {
    type: number
    sql: ${TABLE}.japanese_year ;;
  }

  dimension: male_population {
    type: string
    sql: ${TABLE}.male_population ;;
  }

  dimension: population {
    type: string
    sql: ${TABLE}.population ;;
  }

  dimension: prefecture {
    type: string
    sql: ${TABLE}.prefecture ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
