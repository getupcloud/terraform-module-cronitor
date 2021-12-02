locals {
  note = templatefile("${path.module}/note.tpl", {
    cluster_name : var.cluster_name
    customer_name : var.customer_name
    api_endpoint : var.api_endpoint
  })
}

resource "cronitor_heartbeat_monitor" "monitor" {
  count = var.api_key != "" ? 1 : 0
  name  = join(":", compact([var.customer_name, var.cluster_name, var.suffix]))

  notifications {
    pagerduty = length(var.pagerduty_key) > 0 ? [var.pagerduty_key] : null
    templates = var.notifications_lists
  }

  rule {
    grace_seconds           = 0
    hours_to_followup_alert = 2
    rule_type               = var.rule_type
    time_unit               = "minutes"
    value                   = var.rule_timeout_minutes
  }

  tags     = compact(concat([var.cluster_name, var.customer_name, var.suffix], var.tags))
  timezone = var.timezone
  note     = local.note
}
