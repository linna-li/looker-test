# The name of this view in Looker is "Lrcc7 Il1767226171658 Paid Social"
view: lrcc7_il1767226171658_paid_social {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$CC7IL1767226171658_paid_social ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  measure: count {
    type: count
  }
}
