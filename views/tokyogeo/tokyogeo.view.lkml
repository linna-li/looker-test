# The name of this view in Looker is "Tokyogeo"
view: tokyogeo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tokyogeo.tokyogeo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_code {
    type: number
    sql: ${TABLE}.city_code ;;
  }

  dimension: city_en {
    type: string
    sql: ${TABLE}.city_en ;;
  }

  dimension: ku {
    type: string
    sql: ${TABLE}.ku ;;
  }

  dimension: map_code {
    type: number
    sql: ${TABLE}.map_code ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: postal_detail {
    type: string
    sql: ${TABLE}.postal_detail ;;
  }

  dimension: subdivision_code {
    type: number
    sql: ${TABLE}.subdivision_code ;;
  }

  dimension: subdivision_en {
    type: string
    sql: ${TABLE}.subdivision_en ;;
  }

  dimension: subdvision {
    type: string
    sql: ${TABLE}.subdvision ;;
  }
  measure: count {
    type: count
  }
}
