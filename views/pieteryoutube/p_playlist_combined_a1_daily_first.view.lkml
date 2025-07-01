# The name of this view in Looker is "P Playlist Combined A1 Daily First"
view: p_playlist_combined_a1_daily_first {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pieteryoutube.p_playlist_combined_a1_daily_first` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average View Duration Seconds" in Explore.

  dimension: average_view_duration_seconds {
    type: number
    description: "The average length, in seconds, of video playbacks. In a playlist report, the metric indicates the average length, in seconds, of video playbacks that occurred in the context of a playlist."
    sql: ${TABLE}.average_view_duration_seconds ;;
  }

  dimension: channel_id {
    type: string
    description: "The ID for a YouTube channel."
    sql: ${TABLE}.channel_id ;;
  }

  dimension: country_code {
    type: string
    description: "The country associated with the metrics in the report row. The dimension value is a two-letter ISO-3166-1 country code, such as US, CN (China), or FR (France). The country code ZZ is used to report metrics for which YouTube could not identify the associated country."
    sql: ${TABLE}.country_code ;;
  }

  dimension: date {
    type: string
    description: "This dimension identifies the date associated with the metrics in each report row. All bulk reports contain data for a unique 24-hour period beginning at 12:00 a.m. Pacific time (UTC-8)."
    sql: ${TABLE}.date ;;
  }

  dimension: device_type {
    type: number
    description: "This dimension identifies the physical form factor of the device on which the view occurred."
    sql: ${TABLE}.device_type ;;
  }

  dimension: live_or_on_demand {
    type: string
    description: "This dimension indicates whether the user activity metrics in the data row are associated with views of a live broadcast."
    sql: ${TABLE}.live_or_on_demand ;;
  }

  dimension: operating_system {
    type: number
    description: "This dimension identifies the software system of the device on which the view occurred."
    sql: ${TABLE}.operating_system ;;
  }

  dimension: playback_location_type {
    type: number
    description: "This dimension identifies the type of page or application where user activity occurred."
    sql: ${TABLE}.playback_location_type ;;
  }

  dimension: playlist_id {
    type: string
    description: "The ID of a YouTube playlist."
    sql: ${TABLE}.playlist_id ;;
  }

  dimension: playlist_saves_added {
    type: number
    description: "The number of times that users saved a playlist."
    sql: ${TABLE}.playlist_saves_added ;;
  }

  dimension: playlist_saves_removed {
    type: number
    description: "The number of times that users removed the playlist from their lists of saved playlists."
    sql: ${TABLE}.playlist_saves_removed ;;
  }

  dimension: playlist_starts {
    type: number
    description: "The number of times that viewers initiated playback of a playlist."
    sql: ${TABLE}.playlist_starts ;;
  }

  dimension: subscribed_status {
    type: string
    description: "This dimension indicates whether the user activity metrics in the data row are associated with viewers who were subscribed to the video's or playlist's channel."
    sql: ${TABLE}.subscribed_status ;;
  }

  dimension: traffic_source_type {
    type: number
    description: "This dimension identifies the referrer type associated with the user activity metrics. The referrer type describes the manner in which users reached the video or channel associated with the row of data in the report."
    sql: ${TABLE}.traffic_source_type ;;
  }

  dimension: video_id {
    type: string
    description: "The ID of a YouTube video."
    sql: ${TABLE}.video_id ;;
  }

  dimension: views {
    type: number
    description: "The number of times that a video was viewed. In a playlist report, the metric indicates the number of times that a video was viewed in the context of a playlist."
    sql: ${TABLE}.views ;;
  }

  dimension: watch_time_minutes {
    type: number
    description: "The number of minutes that users watched videos for the specified channel, content owner, video, or playlist."
    sql: ${TABLE}.watch_time_minutes ;;
  }
  measure: count {
    type: count
  }
}
