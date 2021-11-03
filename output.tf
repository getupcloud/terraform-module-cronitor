output "cronitor_id" {
  value = length(cronitor_heartbeat_monitor.monitor) > 0 ? cronitor_heartbeat_monitor.monitor[0].id : ""
}
