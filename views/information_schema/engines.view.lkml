# The name of this view in Looker is "Engines"
view: engines {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.ENGINES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comment" in Explore.

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.ENGINE ;;
  }

  dimension: savepoints {
    type: string
    sql: ${TABLE}.SAVEPOINTS ;;
  }

  dimension: support {
    type: string
    sql: ${TABLE}.SUPPORT ;;
  }

  dimension: transactions {
    type: string
    sql: ${TABLE}.TRANSACTIONS ;;
  }

  dimension: xa {
    type: string
    sql: ${TABLE}.XA ;;
  }
  measure: count {
    type: count
  }
}
