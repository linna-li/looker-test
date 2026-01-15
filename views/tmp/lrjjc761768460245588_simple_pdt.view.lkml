# The name of this view in Looker is "Lrjjc761768460245588 Simple Pdt"
view: lrjjc761768460245588_simple_pdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$JJC761768460245588_simple_pdt ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }
  measure: count {
    type: count
  }
}
