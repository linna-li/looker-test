# The name of this view in Looker is "Innodb Lock Waits"
view: innodb_lock_waits {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_LOCK_WAITS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Blocking Lock ID" in Explore.

  dimension: blocking_lock_id {
    type: string
    sql: ${TABLE}.blocking_lock_id ;;
  }

  dimension: blocking_trx_id {
    type: string
    sql: ${TABLE}.blocking_trx_id ;;
  }

  dimension: requested_lock_id {
    type: string
    sql: ${TABLE}.requested_lock_id ;;
  }

  dimension: requesting_trx_id {
    type: string
    sql: ${TABLE}.requesting_trx_id ;;
  }
  measure: count {
    type: count
  }
}
