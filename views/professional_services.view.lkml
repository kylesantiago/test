view: professional_services {
  sql_table_name: ClickUp.Professional_Services ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    action: {
      label: "Reject hours"
      url: "https://asia-east2-silent-kite-405712.cloudfunctions.net/test_hours_approval"
      param: {
        name: "id"
        value: "{{ value }}"
      }
      form_param: {
        name:  "app_val"
        type: select
        label:  "Hour Rejection"
        option: {
          name:  "Rejected"
          label:  "Reject"
        }
        required:  yes
      }
    }
    action: {
      label: "Comment Feedback"
      url: "https://asia-east2-silent-kite-405712.cloudfunctions.net/test_comments"
      param: {
        name: "assignee"
        value: "{{ value }}"
      }
      user_attribute_param: {
        user_attribute:  email
        name: "email"
      }
      form_param: {
        name:  "feed_val"
        type: textarea
        label:  "Comments and Feedback"
        required:  yes
      }
      form_param: {
        name:  "rate_val"
        type: select
        label:  "Rating"
        required:  yes
        option: {
          name:  "1"
          label:  "1"
        }
        option: {
          name:  "2"
          label:  "2"
        }
        option: {
          name:  "3"
          label:  "3"
        }
        option: {
          name:  "4"
          label:  "4"
        }
        option: {
          name:  "5"
          label:  "5"
        }
      }
    }
  }
  dimension: assignees {
    type: string
    sql: ${TABLE}.assignees ;;
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
  dimension: time_estimate {
    type: number
    sql: ${TABLE}.time_estimate ;;
  }
  dimension: approval {
    type: string
    sql: ${TABLE}.approval ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }

  parameter: min_date_param {
    type: date
    full_suggestions: yes
  }

  parameter: max_date_param {
    type: date
    full_suggestions: yes
  }

  dimension: min_date_dim {
    type: date
    sql: CASE WHEN {% parameter min_date_param %} = '' THEN NULL ELSE {% parameter min_date_param %} END ;;
  }

  dimension: max_date_dim {
    type: date
    sql: CASE WHEN {% parameter max_date_param %} = '' THEN NULL ELSE {% parameter max_date_param %} END ;;
  }

}
