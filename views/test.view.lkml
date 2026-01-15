view: test {
  sql_table_name: `LLNnatality.test` ;;

  dimension: alcohol_use {
    type: yesno
    sql: ${TABLE}.alcohol_use ;;
  }
  dimension: apgar_1min {
    type: string
    sql: ${TABLE}.apgar_1min ;;
  }
  dimension: apgar_5min {
    type: number
    sql: ${TABLE}.apgar_5min ;;
  }
  dimension: born_alive_alive {
    type: number
    sql: ${TABLE}.born_alive_alive ;;
  }
  dimension: born_alive_dead {
    type: number
    sql: ${TABLE}.born_alive_dead ;;
  }
  dimension: born_dead {
    type: number
    sql: ${TABLE}.born_dead ;;
  }
  dimension: child_race {
    type: string
    sql: ${TABLE}.child_race ;;
  }
  dimension: cigarette_use {
    type: yesno
    sql: ${TABLE}.cigarette_use ;;
  }
  dimension: cigarettes_per_day {
    type: number
    sql: ${TABLE}.cigarettes_per_day ;;
  }
  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }
  dimension: drinks_per_week {
    type: number
    sql: ${TABLE}.drinks_per_week ;;
  }
  dimension: ever_born {
    type: number
    sql: ${TABLE}.ever_born ;;
  }
  dimension: father_age {
    type: number
    sql: ${TABLE}.father_age ;;
  }
  dimension: father_race {
    type: number
    sql: ${TABLE}.father_race ;;
  }
  dimension: gestation_weeks {
    type: number
    sql: ${TABLE}.gestation_weeks ;;
  }
  dimension: is_male {
    type: yesno
    sql: ${TABLE}.is_male ;;
  }
  dimension: lmp {
    type: number
    sql: ${TABLE}.lmp ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: mother_age {
    type: number
    sql: ${TABLE}.mother_age ;;
  }
  dimension: mother_birth_state {
    type: string
    sql: ${TABLE}.mother_birth_state ;;
  }
  dimension: mother_married {
    type: yesno
    sql: ${TABLE}.mother_married ;;
  }
  dimension: mother_race {
    type: number
    sql: ${TABLE}.mother_race ;;
  }
  dimension: mother_residence_state {
    type: string
    sql: ${TABLE}.mother_residence_state ;;
  }
  dimension: plurality {
    type: number
    sql: ${TABLE}.plurality ;;
  }
  dimension: record_weight {
    type: number
    sql: ${TABLE}.record_weight ;;
  }
  dimension: source_year {
    type: number
    sql: ${TABLE}.source_year ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: wday {
    type: number
    sql: ${TABLE}.wday ;;
  }
  dimension: weight_gain_pounds {
    type: number
    sql: ${TABLE}.weight_gain_pounds ;;
  }
  dimension: weight_pounds {
    type: number
    sql: ${TABLE}.weight_pounds ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
