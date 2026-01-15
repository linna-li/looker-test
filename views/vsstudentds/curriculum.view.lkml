# The name of this view in Looker is "Curriculum"
view: curriculum {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsstudentds.curriculum` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Course Hours" in Explore.

  dimension: course_hours {
    type: number
    sql: ${TABLE}.course_hours ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }

  dimension: crn {
    type: number
    sql: ${TABLE}.crn ;;
  }
  measure: count {
    type: count
    drill_fields: [course_name]
  }
}
