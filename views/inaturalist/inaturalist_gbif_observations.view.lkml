# The name of this view in Looker is "Inaturalist Gbif Observations"
view: inaturalist_gbif_observations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: inaturalist.inaturalist_gbif_observations ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Associated Media" in Explore.

  dimension: associated_media {
    type: string
    sql: ${TABLE}.associatedMedia ;;
  }

  dimension: basis_of_record {
    type: string
    sql: ${TABLE}.basisOfRecord ;;
  }

  dimension: catalog_number {
    type: number
    sql: ${TABLE}.catalogNumber ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  dimension: collection_code {
    type: string
    sql: ${TABLE}.collectionCode ;;
  }

  dimension: coordinate_uncertainty_in_meters {
    type: number
    sql: ${TABLE}.coordinateUncertaintyInMeters ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.datasetName ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_identified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.dateIdentified ;;
  }

  dimension: decimal_latitude {
    type: number
    sql: ${TABLE}.decimalLatitude ;;
  }

  dimension: decimal_longitude {
    type: number
    sql: ${TABLE}.decimalLongitude ;;
  }

  dimension: establishment_means {
    type: string
    sql: ${TABLE}.establishmentMeans ;;
  }

  dimension_group: event_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.eventDate ;;
  }

  dimension_group: event_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.eventTime ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: genus {
    type: string
    sql: ${TABLE}.genus ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identification_id {
    type: number
    sql: ${TABLE}.identificationID ;;
  }

  dimension: identification_remarks {
    type: string
    sql: ${TABLE}.identificationRemarks ;;
  }

  dimension: information_withheld {
    type: string
    sql: ${TABLE}.informationWithheld ;;
  }

  dimension: institution_code {
    type: string
    sql: ${TABLE}.institutionCode ;;
  }

  dimension: kingdom {
    type: string
    sql: ${TABLE}.kingdom ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modified ;;
  }

  dimension: occurrence_remarks {
    type: string
    sql: ${TABLE}.occurrenceRemarks ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}.`order` ;;
  }

  dimension: phylum {
    type: string
    sql: ${TABLE}.phylum ;;
  }

  dimension: recorded_by {
    type: string
    sql: ${TABLE}.recordedBy ;;
  }

  dimension: refs {
    type: string
    sql: ${TABLE}.refs ;;
  }

  dimension: rights {
    type: string
    sql: ${TABLE}.rights ;;
  }

  dimension: rights_holder {
    type: string
    sql: ${TABLE}.rightsHolder ;;
  }

  dimension: scientific_name {
    type: string
    sql: ${TABLE}.scientificName ;;
  }

  dimension: taxon_id {
    type: number
    sql: ${TABLE}.taxonID ;;
  }

  dimension: taxon_rank {
    type: string
    sql: ${TABLE}.taxonRank ;;
  }

  dimension: verbatim_event_date {
    type: string
    sql: ${TABLE}.verbatimEventDate ;;
  }

  dimension: verbatim_locality {
    type: string
    sql: ${TABLE}.verbatimLocality ;;
  }
  measure: count {
    type: count
    drill_fields: [dataset_name, scientific_name]
  }
}
