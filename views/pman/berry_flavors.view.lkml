# The name of this view in Looker is "Berry Flavors"
view: berry_flavors {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.berry_flavors ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Berry ID" in Explore.

  dimension: berry_id {
    type: number
    sql: ${TABLE}.berry_id ;;
  }

  dimension: contest_type_id {
    type: number
    sql: ${TABLE}.contest_type_id ;;
  }

  dimension: flavor {
    type: number
    sql: ${TABLE}.flavor ;;
  }
  measure: count {
    type: count
  }
}
