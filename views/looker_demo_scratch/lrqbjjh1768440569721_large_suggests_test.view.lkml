# The name of this view in Looker is "Lrqbjjh1768440569721 Large Suggests Test"
view: lrqbjjh1768440569721_large_suggests_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$QBJJH1768440569721_large_suggests_test ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Concata First Name A Last Name A Email" in Explore.

  dimension: concata_first_name_a_last_name_a_email {
    type: string
    sql: ${TABLE}.`concat(A.first_name, A.last_name, A.email)` ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
