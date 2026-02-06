# The name of this view in Looker is "Channel Cards A1 Daily First"
view: channel_cards_a1_daily_first {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pieteryoutube.channel_cards_a1_daily_first` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Card Click Rate" in Explore.

  dimension: card_click_rate {
    type: number
    sql: ${TABLE}.card_click_rate ;;
  }

  dimension: card_clicks {
    type: number
    sql: ${TABLE}.card_clicks ;;
  }

  dimension: card_id {
    type: string
    sql: ${TABLE}.card_id ;;
  }

  dimension: card_impressions {
    type: number
    sql: ${TABLE}.card_impressions ;;
  }

  dimension: card_teaser_click_rate {
    type: number
    sql: ${TABLE}.card_teaser_click_rate ;;
  }

  dimension: card_teaser_clicks {
    type: number
    sql: ${TABLE}.card_teaser_clicks ;;
  }

  dimension: card_teaser_impressions {
    type: number
    sql: ${TABLE}.card_teaser_impressions ;;
  }

  dimension: card_type {
    type: number
    sql: ${TABLE}.card_type ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: live_or_on_demand {
    type: string
    sql: ${TABLE}.live_or_on_demand ;;
  }

  dimension: subscribed_status {
    type: string
    sql: ${TABLE}.subscribed_status ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }
  measure: count {
    type: count
  }
}
