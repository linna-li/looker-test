# The name of this view in Looker is "Growth Rate Prose"
view: growth_rate_prose {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.growth_rate_prose ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Growth Rate ID" in Explore.

  dimension: growth_rate_id {
    type: number
    sql: ${TABLE}.growth_rate_id ;;
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
