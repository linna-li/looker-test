# The name of this view in Looker is "Aircraft Types"
view: aircraft_types {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: flightstats.aircraft_types ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aircraft Type ID" in Explore.

  dimension: aircraft_type_id {
    type: yesno
    sql: ${TABLE}.aircraft_type_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  measure: count {
    type: count
  }
}
