# The name of this view in Looker is "Innodb Ft Being Deleted"
view: innodb_ft_being_deleted {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_FT_BEING_DELETED ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Doc ID" in Explore.

  dimension: doc_id {
    type: number
    sql: ${TABLE}.DOC_ID ;;
  }
  measure: count {
    type: count
  }
}
