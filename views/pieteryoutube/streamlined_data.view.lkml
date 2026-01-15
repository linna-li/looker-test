# The name of this view in Looker is "Streamlined Data"
view: streamlined_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pieteryoutube.streamlined_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average View Duration Percentage" in Explore.

  dimension: average_view_duration_percentage {
    type: number
    sql: ${TABLE}.average_view_duration_percentage ;;
  }

  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: dislikes {
    type: number
    sql: ${TABLE}.dislikes ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: playlist_name {
    type: string
    sql: ${TABLE}.playlist_name ;;
  }

  dimension: shares {
    type: number
    sql: ${TABLE}.shares ;;
  }

  dimension: subscribed_status {
    type: string
    sql: ${TABLE}.subscribed_status ;;
  }

  dimension: subscribers_gained {
    type: number
    sql: ${TABLE}.subscribers_gained ;;
  }

  dimension: subscribers_lost {
    type: number
    sql: ${TABLE}.subscribers_lost ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: video_name {
    type: string
    sql: ${TABLE}.video_name ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }
  measure: count {
    type: count
    drill_fields: [video_name, playlist_name]
  }
}
