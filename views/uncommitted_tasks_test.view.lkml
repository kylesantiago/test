view: uncommitted_tasks_test {
  sql_table_name: ClickUp.Professional_Services ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: date_created {
    type: string
    sql: ${TABLE}.date_created ;;
  }
  dimension: due_date {
    type: string
    sql: ${TABLE}.due_date ;;
  }
  dimension: index {
    type: number
    sql: ${TABLE}.`index` ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }



}
