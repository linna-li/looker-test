# The name of this view in Looker is "Customeriwsueallprio"
view: customeriwsueallprio {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `buganizercustomerissue.customeriwsueallprio` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Assignee" in Explore.

  dimension: assignee {
    type: string
    sql: ${TABLE}.ASSIGNEE ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: assignment_slo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ASSIGNMENT_SLO ;;
  }

  dimension_group: closure_slo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CLOSURE_SLO ;;
  }

  dimension_group: created_time__utc_ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATED_TIME__UTC_ ;;
  }

  dimension: issue_id {
    type: number
    sql: ${TABLE}.ISSUE_ID ;;
  }

  dimension_group: min_slo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.MIN_SLO ;;
  }

  dimension_group: modified_time__utc_ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.MODIFIED_TIME__UTC_ ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: reporter {
    type: string
    sql: ${TABLE}.REPORTER ;;
  }

  dimension_group: resolved_time__utc_ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RESOLVED_TIME__UTC_ ;;
  }

  dimension_group: response_slo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RESPONSE_SLO ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.TEAM ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }
  measure: count {
    type: count
  }
}
