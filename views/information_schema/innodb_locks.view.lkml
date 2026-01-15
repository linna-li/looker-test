# The name of this view in Looker is "Innodb Locks"
view: innodb_locks {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_LOCKS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Lock Data" in Explore.

  dimension: lock_data {
    type: string
    sql: ${TABLE}.lock_data ;;
  }

  dimension: lock_id {
    type: string
    sql: ${TABLE}.lock_id ;;
  }

  dimension: lock_index {
    type: string
    sql: ${TABLE}.lock_index ;;
  }

  dimension: lock_mode {
    type: string
    sql: ${TABLE}.lock_mode ;;
  }

  dimension: lock_page {
    type: number
    sql: ${TABLE}.lock_page ;;
  }

  dimension: lock_rec {
    type: number
    sql: ${TABLE}.lock_rec ;;
  }

  dimension: lock_space {
    type: number
    sql: ${TABLE}.lock_space ;;
  }

  dimension: lock_table {
    type: string
    sql: ${TABLE}.lock_table ;;
  }

  dimension: lock_trx_id {
    type: string
    sql: ${TABLE}.lock_trx_id ;;
  }

  dimension: lock_type {
    type: string
    sql: ${TABLE}.lock_type ;;
  }
  measure: count {
    type: count
  }
}
