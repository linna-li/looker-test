# The name of this view in Looker is "Airport Remarks"
view: airport_remarks {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: flightstats.airport_remarks ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Airport Remark ID" in Explore.

  dimension: airport_remark_id {
    type: number
    sql: ${TABLE}.airport_remark_id ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.element_name ;;
  }

  dimension: remark {
    type: string
    sql: ${TABLE}.remark ;;
  }

  dimension: site_number {
    type: string
    sql: ${TABLE}.site_number ;;
  }
  measure: count {
    type: count
    drill_fields: [element_name]
  }
}
