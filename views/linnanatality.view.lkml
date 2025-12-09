view: linnanatality {
  sql_table_name: `LLNnatality.linnanatality` ;;

  dimension: alcohol_use {
    type: yesno
    description: "True if the mother used alcohol. Available starting 1989."
    sql: ${TABLE}.alcohol_use ;;
  }
  dimension: apgar_1min {
    type: number
    description: "Apgar scores measure the health of a newborn child on a scale from 0-10. Value after 1 minute. Available from 1978-2002."
    sql: ${TABLE}.apgar_1min ;;
  }
  dimension: apgar_5min {
    type: number
    description: "Apgar scores measure the health of a newborn child on a scale from 0-10. Value after 5 minutes. Available from 1978-2002."
    sql: ${TABLE}.apgar_5min ;;
  }
  dimension: born_alive_alive {
    type: number
    description: "Number of children previously born to the mother who are now living."
    sql: ${TABLE}.born_alive_alive ;;
  }
  dimension: born_alive_dead {
    type: number
    description: "Number of children previously born to the mother who are now dead."
    sql: ${TABLE}.born_alive_dead ;;
  }
  dimension: born_dead {
    type: number
    description: "Number of children who were born dead (i.e. miscarriages)"
    sql: ${TABLE}.born_dead ;;
  }
  dimension: child_race {
    type: number
    description: "The race of the child. One of the following numbers:\n\n1 - White\n2 - Black\n3 - American Indian\n4 - Chinese\n5 - Japanese\n6 - Hawaiian\n7 - Filipino\n9 - Unknown/Other\n18 - Asian Indian\n28 - Korean\n39 - Samoan\n48 - Vietnamese"
    sql: ${TABLE}.child_race ;;
  }
  dimension: cigarette_use {
    type: yesno
    description: "True if the mother smoked cigarettes. Available starting 2003."
    sql: ${TABLE}.cigarette_use ;;
  }
  dimension: cigarettes_per_day {
    type: number
    description: "Number of cigarettes smoked by the mother per day. Available starting 2003."
    sql: ${TABLE}.cigarettes_per_day ;;
  }
  dimension: day {
    type: number
    description: "Day of birth, starting from 1."
    sql: ${TABLE}.day ;;
  }
  dimension: drinks_per_week {
    type: number
    description: "Number of drinks per week consumed by the mother. Available starting 1989."
    sql: ${TABLE}.drinks_per_week ;;
  }
  dimension: ever_born {
    type: number
    description: "Total number of children to whom the woman has ever given birth (includes the current birth)."
    sql: ${TABLE}.ever_born ;;
  }
  dimension: father_age {
    type: number
    description: "Age of the father when the child was born."
    sql: ${TABLE}.father_age ;;
  }
  dimension: father_race {
    type: number
    description: "Race of the father. Same values as child_race."
    sql: ${TABLE}.father_race ;;
  }
  dimension: gestation_weeks {
    type: number
    description: "The number of weeks of the pregnancy."
    sql: ${TABLE}.gestation_weeks ;;
  }
  dimension: is_male {
    type: yesno
    description: "TRUE if the child is male, FALSE if female."
    sql: ${TABLE}.is_male ;;
  }
  dimension: lmp {
    type: string
    description: "Date of the last menstrual period in the format MMDDYYYY. Unknown values are recorded as \"99\" or \"9999\"."
    sql: ${TABLE}.lmp ;;
  }
  dimension: month {
    type: number
    description: "Month index of the date of birth, where 1=January."
    sql: ${TABLE}.month ;;
  }
  dimension: mother_age {
    type: number
    description: "Reported age of the mother when giving birth."
    sql: ${TABLE}.mother_age ;;
  }
  dimension: mother_birth_state {
    type: string
    description: "The two-letter postal code of the mother's birth state."
    sql: ${TABLE}.mother_birth_state ;;
  }
  dimension: mother_married {
    type: yesno
    description: "True if the mother was married when she gave birth."
    sql: ${TABLE}.mother_married ;;
  }
  dimension: mother_race {
    type: number
    description: "Race of the mother. Same values as child_race."
    sql: ${TABLE}.mother_race ;;
  }
  dimension: mother_residence_state {
    type: string
    description: "The two-letter postal code of the mother's state of residence when the child was born."
    sql: ${TABLE}.mother_residence_state ;;
  }
  dimension: plurality {
    type: number
    description: "How many children were born as a result of this pregnancy. twins=2, triplets=3, and so on."
    sql: ${TABLE}.plurality ;;
  }
  dimension: record_weight {
    type: number
    description: "1 or 2, where 1 is a row from a full-reporting area, and 2 is a row from a 50% sample area."
    sql: ${TABLE}.record_weight ;;
  }
  dimension: source_year {
    type: number
    description: "Four-digit year of the birth. Example: 1975."
    sql: ${TABLE}.source_year ;;
  }
  dimension: state {
    type: string
    description: "The two character postal code for the state. Entries after 2004 do not include this value."
    sql: ${TABLE}.state ;;
  }
  dimension: wday {
    type: number
    description: "Day of the week, where 1 is Sunday and 7 is Saturday."
    sql: ${TABLE}.wday ;;
  }
  dimension: weight_gain_pounds {
    type: number
    description: "Number of pounds gained by the mother during pregnancy."
    sql: ${TABLE}.weight_gain_pounds ;;
  }
  dimension: weight_pounds {
    type: number
    description: "Weight of the child, in pounds."
    sql: ${TABLE}.weight_pounds ;;
  }
  dimension: year {
    type: number
    description: "Four-digit year of the birth. Example: 1975."
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
