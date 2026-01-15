# The name of this view in Looker is "Pal Park Area Names"
view: pal_park_area_names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pal_park_area_names ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Local Language ID" in Explore.

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pal_park_area_id {
    type: number
    sql: ${TABLE}.pal_park_area_id ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
