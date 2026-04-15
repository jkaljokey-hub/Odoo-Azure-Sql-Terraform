resource "azurerm_monitor_metric_alert" "sql_cpu_alert" {
  name                = "sql-cpu-alert"
  resource_group_name = var.resource_group_name
  scopes              = [var.sql_db_id]
  description         = "Alert when SQL CPU exceeds threshold"
  severity            = 2
  window_size         = "PT5M"

  criteria {
    metric_name      = "cpu_percent"
    metric_namespace = "Microsoft.Sql/servers/databases"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.cpu_threshold
  }
}
