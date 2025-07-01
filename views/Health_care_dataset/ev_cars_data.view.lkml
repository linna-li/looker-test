# The name of this view in Looker is "Ev Cars Data"
view: ev_cars_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Health_care_dataset.ev_cars_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "2020 Cencus Tract" in Explore.

  dimension: 2020_cencus_tract {
    type: string
    sql: ${TABLE}.`2020CencusTract` ;;
  }

  dimension: base_msrp {
    type: string
    sql: ${TABLE}.BaseMSRP ;;
  }

  dimension: cafev {
    type: string
    sql: ${TABLE}.CAFEV ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: dolvechicle_id {
    type: string
    sql: ${TABLE}.DOLVEchicleID ;;
  }

  dimension: electric_range {
    type: string
    sql: ${TABLE}.ElectricRange ;;
  }

  dimension: electric_utility {
    type: string
    sql: ${TABLE}.ElectricUtility ;;
  }

  dimension: electric_vehicle_type {
    type: string
    sql: ${TABLE}.ElectricVehicleType ;;
  }

  dimension: legislative_district {
    type: string
    sql: ${TABLE}.LegislativeDistrict ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.Make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.Model ;;
  }

  dimension: model_year {
    type: string
    sql: ${TABLE}.ModelYear ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: vechicle_location {
    type: string
    sql: ${TABLE}.VechicleLocation ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.VIN ;;
  }
  measure: count {
    type: count
  }
}
