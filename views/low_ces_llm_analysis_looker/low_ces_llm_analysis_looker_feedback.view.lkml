# The name of this view in Looker is "Low Ces Llm Analysis Looker Feedback"
view: low_ces_llm_analysis_looker_feedback {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `low_ces_llm_analysis_looker.low_ces_llm_analysis_looker_feedback` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Assigned Ldaps" in Explore.

  dimension: assigned_ldaps {
    type: string
    sql: ${TABLE}.assigned_ldaps ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}.case_number ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_date ;;
  }

  dimension: customer_feedback {
    type: string
    sql: ${TABLE}.customer_feedback ;;
  }

  dimension: feedback_notes {
    type: string
    sql: ${TABLE}.feedback_notes ;;
  }

  dimension: ldap {
    type: string
    sql: ${TABLE}.ldap ;;
  }

  dimension: vendor_role {
    type: string
    sql: ${TABLE}.vendor_role ;;
  }
  measure: count {
    type: count
  }
}
