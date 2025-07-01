# The name of this view in Looker is "Tab"
view: tab {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.tab` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: addresses {
    hidden: yes
    sql: ${TABLE}.addresses ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dob {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dob ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "First Name" in Explore.

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}

# The name of this view in Looker is "Tab Addresses"
view: tab__addresses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: address ;;
  }

  dimension: city {
    type: string
    sql: city ;;
  }

  dimension: number_of_years {
    type: string
    sql: numberOfYears ;;
  }

  dimension: state {
    type: string
    sql: state ;;
  }

  dimension: status {
    type: string
    sql: status ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: tab__addresses {
    type: string
    hidden: yes
    sql: tab__addresses ;;
  }

  dimension: zip {
    type: zipcode
    sql: zip ;;
  }
}
