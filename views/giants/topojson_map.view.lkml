# The name of this view in Looker is "Topojson Map"
view: topojson_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: giants.topojson_map ;;
  drill_fields: []

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension:  {
    primary_key: yes
    type: string
    sql: ${TABLE}.`||` ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "" in Explore.

  dimension:  {
    type: string
    sql: ${TABLE}.`|` ;;
  }

  dimension: 001 {
    type: string
    sql: ${TABLE}.`|001` ;;
  }

  dimension: 001 {
    type: string
    sql: ${TABLE}.`||001` ;;
  }

  dimension: 002 {
    type: string
    sql: ${TABLE}.`|002` ;;
  }

  dimension: 002 {
    type: string
    sql: ${TABLE}.`||002` ;;
  }

  dimension: __giants__ {
    type: string
    sql: ${TABLE}.`|__giants__|` ;;
  }

  dimension: __giants____arcs {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs-` ;;
  }

  dimension: __giants____arcs001 {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs001` ;;
  }

  dimension: __giants____arcs002 {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs002` ;;
  }

  dimension: __giants____arcs003 {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs003` ;;
  }

  dimension: __giants____arcs004 {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs004` ;;
  }

  dimension: __giants____arcs005 {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs005` ;;
  }

  dimension: __giants____arcs006 {
    type: string
    sql: ${TABLE}.`|__giants__|__arcs006` ;;
  }

  dimension: __giants____properties__centroid001 {
    type: string
    sql: ${TABLE}.`|__giants__|__properties__centroid001` ;;
  }

  dimension: __giants____properties__centroid002 {
    type: string
    sql: ${TABLE}.`|__giants__|__properties__centroid002` ;;
  }

  dimension: __giants____type {
    type: string
    sql: ${TABLE}.`|__giants__|__type` ;;
  }

  dimension: __giants__type {
    type: string
    sql: ${TABLE}.`|__giants__type` ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: section_id {
    type: string
    sql: ${TABLE}.section_id ;;
  }

  dimension: topo {
    type: string
    sql: ${TABLE}.topo ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [, name]
  }
}
