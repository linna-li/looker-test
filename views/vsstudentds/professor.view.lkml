# The name of this view in Looker is "Professor"
view: professor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsstudentds.professor` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Page" in Explore.

  dimension: page {
    type: number
    sql: ${TABLE}.page ;;
  }

  dimension: pname {
    type: string
    sql: ${TABLE}.pname ;;
  }

  dimension: prn {
    type: number
    sql: ${TABLE}.prn ;;
  }
  measure: count {
    type: count
    drill_fields: [pname]
  }
}
