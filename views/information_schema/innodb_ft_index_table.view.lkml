# The name of this view in Looker is "Innodb Ft Index Table"
view: innodb_ft_index_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_FT_INDEX_TABLE ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Doc Count" in Explore.

  dimension: doc_count {
    type: number
    sql: ${TABLE}.DOC_COUNT ;;
  }

  dimension: doc_id {
    type: number
    sql: ${TABLE}.DOC_ID ;;
  }

  dimension: first_doc_id {
    type: number
    sql: ${TABLE}.FIRST_DOC_ID ;;
  }

  dimension: last_doc_id {
    type: number
    sql: ${TABLE}.LAST_DOC_ID ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.POSITION ;;
  }

  dimension: word {
    type: string
    sql: ${TABLE}.WORD ;;
  }
  measure: count {
    type: count
  }
}
