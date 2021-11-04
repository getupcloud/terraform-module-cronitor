variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "customer_name" {
  description = "Customer name (Informative only)"
  type        = string
}

variable "suffix" {
  description = "Customer name suffix (Informative only)"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Monitor tags (Informative only)"
  type        = list(string)
  default     = []
}

variable "api_endpoint" {
  description = "Kubernetes API endpoint (Informative only)"
  type        = string
  default     = ""
}

variable "api_key" {
  description = "Cronitor API key. Leave empty to destroy"
  type        = string
  default     = ""
}

variable "pagerduty_key" {
  description = "Cronitor PagerDuty key"
  type        = string
  default     = ""
}

variable "timezone" {
  description = "Monitor Timezone"
  type        = string
  default     = "America/Sao_Paulo"
}

variable "rule_timeout_minutes" {
  description = "Time in minutes cronitor waits before issuing an alert"
  type        = number
  default     = 5
}

variable "rule_type" {
  description = "Rule alerting type"
  type        = string
  default     = "run_ping_not_received"
}
