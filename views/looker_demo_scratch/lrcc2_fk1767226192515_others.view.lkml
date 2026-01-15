# The name of this view in Looker is "Lrcc2 Fk1767226192515 Others"
view: lrcc2_fk1767226192515_others {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$CC2FK1767226192515_others ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Medium" in Explore.

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  measure: count {
    type: count
  }
}
