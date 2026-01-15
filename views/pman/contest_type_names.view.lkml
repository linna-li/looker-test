# The name of this view in Looker is "Contest Type Names"
view: contest_type_names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.contest_type_names ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Color" in Explore.

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: contest_type_id {
    type: number
    sql: ${TABLE}.contest_type_id ;;
  }

  dimension: flavor {
    type: string
    sql: ${TABLE}.flavor ;;
  }

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
