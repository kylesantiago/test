connection: "test-proserv"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: test_proserv_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_proserv_default_datagroup

explore: professional_services {
  sql_always_where: CASE WHEN (${professional_services.min_date_dim} IS NOT NULL AND ${professional_services.max_date_dim} IS NOT NULL) THEN ${professional_services.start_date} BETWEEN ${professional_services.min_date_dim} AND ${professional_services.max_date_dim} END ;;
}
explore: uncommitted_tasks_test {
}
