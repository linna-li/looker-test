# The name of this view in Looker is "Evolution Chains"
view: evolution_chains {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.evolution_chains ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Baby Trigger Item ID" in Explore.

  dimension: baby_trigger_item_id {
    type: string
    sql: ${TABLE}.baby_trigger_item_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
  }
}
