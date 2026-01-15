# The name of this view in Looker is "Case Review"
view: case_review {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ryo_test.case_review` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Assignee" in Explore.

  dimension: assignee {
    type: string
    sql: ${TABLE}.Assignee ;;
  }

  dimension: assignee_manager {
    type: string
    sql: ${TABLE}.Assignee_Manager ;;
  }

  dimension: categories {
    type: string
    sql: ${TABLE}.Categories ;;
  }

  dimension: ces {
    type: number
    sql: ${TABLE}.CES ;;
  }

  dimension: csat {
    type: number
    sql: ${TABLE}.CSAT ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

  dimension: customer_org {
    type: string
    sql: ${TABLE}.Customer_Org ;;
  }

  dimension: external_team {
    type: string
    sql: ${TABLE}.External_Team ;;
  }

  dimension: feedback_to_assignee {
    type: string
    sql: ${TABLE}.Feedback_to_Assignee ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.Other ;;
  }

  dimension: policy {
    type: string
    sql: ${TABLE}.Policy ;;
  }

  dimension: policy_reason {
    type: string
    sql: ${TABLE}.Policy_reason ;;
  }

  dimension: process {
    type: string
    sql: ${TABLE}.Process ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: review {
    type: time
    description: "%m/%d/%Y %H:%M:%E*S"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Review_Date ;;
  }

  dimension: reviewee {
    type: string
    sql: ${TABLE}.Reviewee ;;
  }

  dimension: subcategories {
    type: string
    sql: ${TABLE}.Subcategories ;;
  }

  dimension: support {
    type: string
    sql: ${TABLE}.Support ;;
  }

  dimension: unclear_what_contributed_to_ces {
    type: string
    sql: ${TABLE}.Unclear_what_contributed_to_CES ;;
  }

  dimension: was_the_bad_ces_avoidable_ {
    type: string
    sql: ${TABLE}.Was_the_bad_CES_avoidable_ ;;
  }

  dimension: was_there_any_other_issue_in_the_ticket_ {
    type: string
    sql: ${TABLE}.Was_there_any_other_issue_in_the_ticket_ ;;
  }

  dimension_group: zendesk_ticket_creation {
    type: time
    description: "%m/%d/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Zendesk_Ticket_Creation_Date ;;
  }

  dimension: zendesk_ticket_id {
    type: number
    sql: ${TABLE}.Zendesk_Ticket_ID ;;
  }

  dimension: zendesk_ticket_url {
    type: string
    sql: ${TABLE}.Zendesk_Ticket_URL ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
