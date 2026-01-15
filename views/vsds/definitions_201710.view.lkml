# The name of this view in Looker is "Definitions 201710"
view: definitions_201710 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.definitions_201710` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Additional Only" in Explore.

  dimension: additional_only {
    type: yesno
    sql: ${TABLE}.additional_only ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: application_references {
    hidden: yes
    sql: ${TABLE}.application_references ;;
  }

  dimension: breakdown_code {
    type: yesno
    sql: ${TABLE}.breakdown_code ;;
  }

  dimension: child_groups {
    hidden: yes
    sql: ${TABLE}.child_groups ;;
  }

  dimension: children {
    hidden: yes
    sql: ${TABLE}.children ;;
  }

  dimension: date_revised {
    type: number
    sql: ${TABLE}.date_revised ;;
  }

  dimension: definition {
    hidden: yes
    sql: ${TABLE}.definition ;;
  }

  dimension: glossary {
    hidden: yes
    sql: ${TABLE}.glossary ;;
  }

  dimension: informative_references {
    hidden: yes
    sql: ${TABLE}.informative_references ;;
  }

  dimension: ipc_concordant {
    type: string
    sql: ${TABLE}.ipc_concordant ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: limiting_references {
    hidden: yes
    sql: ${TABLE}.limiting_references ;;
  }

  dimension: not_allocatable {
    type: yesno
    sql: ${TABLE}.not_allocatable ;;
  }

  dimension: parents {
    hidden: yes
    sql: ${TABLE}.parents ;;
  }

  dimension: residual_references {
    hidden: yes
    sql: ${TABLE}.residual_references ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension: synonyms {
    hidden: yes
    sql: ${TABLE}.synonyms ;;
  }

  dimension: title_full {
    type: string
    sql: ${TABLE}.title_full ;;
  }

  dimension: title_part {
    hidden: yes
    sql: ${TABLE}.title_part ;;
  }
  measure: count {
    type: count
  }
}

# The name of this view in Looker is "Definitions 201710 Parents"
view: definitions_201710__parents {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Parents" in Explore.

  dimension: definitions_201710__parents {
    type: string
    sql: definitions_201710__parents ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Synonyms"
view: definitions_201710__synonyms {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__synonyms {
    type: string
    hidden: yes
    sql: definitions_201710__synonyms ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Glossary"
view: definitions_201710__glossary {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__glossary {
    type: string
    hidden: yes
    sql: definitions_201710__glossary ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Children"
view: definitions_201710__children {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Children" in Explore.

  dimension: definitions_201710__children {
    type: string
    sql: definitions_201710__children ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Title Part"
view: definitions_201710__title_part {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Title Part" in Explore.

  dimension: definitions_201710__title_part {
    type: string
    sql: definitions_201710__title_part ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Definition"
view: definitions_201710__definition {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Definition" in Explore.

  dimension: definitions_201710__definition {
    type: string
    sql: definitions_201710__definition ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Child Groups"
view: definitions_201710__child_groups {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__child_groups {
    type: string
    hidden: yes
    sql: definitions_201710__child_groups ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: symbols {
    hidden: yes
    sql: symbols ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Synonyms Target"
view: definitions_201710__synonyms__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Synonyms Target" in Explore.

  dimension: definitions_201710__synonyms__target {
    type: string
    sql: definitions_201710__synonyms__target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Glossary Target"
view: definitions_201710__glossary__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Glossary Target" in Explore.

  dimension: definitions_201710__glossary__target {
    type: string
    sql: definitions_201710__glossary__target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Residual References"
view: definitions_201710__residual_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__residual_references {
    type: string
    hidden: yes
    sql: definitions_201710__residual_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Limiting References"
view: definitions_201710__limiting_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__limiting_references {
    type: string
    hidden: yes
    sql: definitions_201710__limiting_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Child Groups Symbols"
view: definitions_201710__child_groups__symbols {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Child Groups Symbols" in Explore.

  dimension: definitions_201710__child_groups__symbols {
    type: string
    sql: definitions_201710__child_groups__symbols ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Informative References"
view: definitions_201710__informative_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__informative_references {
    type: string
    hidden: yes
    sql: definitions_201710__informative_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Application References"
view: definitions_201710__application_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definitions_201710__application_references {
    type: string
    hidden: yes
    sql: definitions_201710__application_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Residual References Target"
view: definitions_201710__residual_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Residual References Target" in Explore.

  dimension: definitions_201710__residual_references__target {
    type: string
    sql: definitions_201710__residual_references__target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Limiting References Target"
view: definitions_201710__limiting_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Limiting References Target" in Explore.

  dimension: definitions_201710__limiting_references__target {
    type: string
    sql: definitions_201710__limiting_references__target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Informative References Target"
view: definitions_201710__informative_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Informative References Target" in Explore.

  dimension: definitions_201710__informative_references__target {
    type: string
    sql: definitions_201710__informative_references__target ;;
  }
}

# The name of this view in Looker is "Definitions 201710 Application References Target"
view: definitions_201710__application_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definitions 201710 Application References Target" in Explore.

  dimension: definitions_201710__application_references__target {
    type: string
    sql: definitions_201710__application_references__target ;;
  }
}
