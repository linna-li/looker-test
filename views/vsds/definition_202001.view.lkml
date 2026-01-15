# The name of this view in Looker is "Definition 202001"
view: definition_202001 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.definition_202001` ;;

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

  dimension: size_cache {
    type: number
    sql: ${TABLE}.sizeCache ;;
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

# The name of this view in Looker is "Definition 202001 Parents"
view: definition_202001__parents {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Parents" in Explore.

  dimension: definition_202001__parents {
    type: string
    sql: definition_202001__parents ;;
  }
}

# The name of this view in Looker is "Definition 202001 Synonyms"
view: definition_202001__synonyms {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__synonyms {
    type: string
    hidden: yes
    sql: definition_202001__synonyms ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Glossary"
view: definition_202001__glossary {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__glossary {
    type: string
    hidden: yes
    sql: definition_202001__glossary ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Children"
view: definition_202001__children {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Children" in Explore.

  dimension: definition_202001__children {
    type: string
    sql: definition_202001__children ;;
  }
}

# The name of this view in Looker is "Definition 202001 Title Part"
view: definition_202001__title_part {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Title Part" in Explore.

  dimension: definition_202001__title_part {
    type: string
    sql: definition_202001__title_part ;;
  }
}

# The name of this view in Looker is "Definition 202001 Definition"
view: definition_202001__definition {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Definition" in Explore.

  dimension: definition_202001__definition {
    type: string
    sql: definition_202001__definition ;;
  }
}

# The name of this view in Looker is "Definition 202001 Child Groups"
view: definition_202001__child_groups {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__child_groups {
    type: string
    hidden: yes
    sql: definition_202001__child_groups ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: symbols {
    hidden: yes
    sql: symbols ;;
  }
}

# The name of this view in Looker is "Definition 202001 Synonyms Target"
view: definition_202001__synonyms__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Synonyms Target" in Explore.

  dimension: definition_202001__synonyms__target {
    type: string
    sql: definition_202001__synonyms__target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Glossary Target"
view: definition_202001__glossary__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Glossary Target" in Explore.

  dimension: definition_202001__glossary__target {
    type: string
    sql: definition_202001__glossary__target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Residual References"
view: definition_202001__residual_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__residual_references {
    type: string
    hidden: yes
    sql: definition_202001__residual_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Limiting References"
view: definition_202001__limiting_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__limiting_references {
    type: string
    hidden: yes
    sql: definition_202001__limiting_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Child Groups Symbols"
view: definition_202001__child_groups__symbols {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Child Groups Symbols" in Explore.

  dimension: definition_202001__child_groups__symbols {
    type: string
    sql: definition_202001__child_groups__symbols ;;
  }
}

# The name of this view in Looker is "Definition 202001 Informative References"
view: definition_202001__informative_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__informative_references {
    type: string
    hidden: yes
    sql: definition_202001__informative_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Application References"
view: definition_202001__application_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202001__application_references {
    type: string
    hidden: yes
    sql: definition_202001__application_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: size_cache {
    type: number
    sql: sizeCache ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Residual References Target"
view: definition_202001__residual_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Residual References Target" in Explore.

  dimension: definition_202001__residual_references__target {
    type: string
    sql: definition_202001__residual_references__target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Limiting References Target"
view: definition_202001__limiting_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Limiting References Target" in Explore.

  dimension: definition_202001__limiting_references__target {
    type: string
    sql: definition_202001__limiting_references__target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Informative References Target"
view: definition_202001__informative_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Informative References Target" in Explore.

  dimension: definition_202001__informative_references__target {
    type: string
    sql: definition_202001__informative_references__target ;;
  }
}

# The name of this view in Looker is "Definition 202001 Application References Target"
view: definition_202001__application_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202001 Application References Target" in Explore.

  dimension: definition_202001__application_references__target {
    type: string
    sql: definition_202001__application_references__target ;;
  }
}
