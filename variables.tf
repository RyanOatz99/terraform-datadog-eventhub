# Global variables

variable "template" {
  description = "Template name"
  default     = "azure-eventhub_namespaces"
}

variable "asset_lbnref" {
  description = "Asset lbnref"
}

variable "asset_name" {
  description = "Asset name"
}

variable "default_tags" {
  description = "map of default tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "custom_tags" {
  description = "map of custom tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "isprod" {
  description = "activate the monitor on production on Sentinel"
  default     = "false"
}

variable "notify_to" {
  description = "Define notification hooks"
  default     = "@webhook-SGCProd @monitoring-teams"
}

variable "notify_capacity" {
  description = "to who notify capacity alerts"
  default     = ""
}

variable "category" {
  description = "Category of the monitors"
  default     = "228"
}

variable "customer_name" {
  description = "Client name as in Idefix"
}

variable "customer_id" {
  description = "ID of the client in Idefix"
}

variable "team_in_charge" {
  description = "Define the team in charge"
  default     = "Undefined"
}

variable "evaluation_delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 15
}

variable "new_host_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "escalation_message" {
  description = "Default escalation message"
  default     = ""
}

variable "renotify_interval" {
  description = "Delay in minutes before monitor is renotified"
  default     = 40
}

variable "include_tags" {
  description = "Include triggered event tags in title"
  default     = false
}

# Datadog monitors variables

## eventhub_namespace_failed_requests

variable "activated_eventhub_namespace_failed_requests" {
  description = "If the monitor [eventhub_namespace_failed_requests] is activated"
  type        = string
  default     = "true"
}

variable "message_eventhub_namespace_failed_requests" {
  description = "Custom message for monitor [eventhub_namespace_failed_requests]"
  type        = string

  default = <<EOM
    Verify if the rate of failed requests on the eventhub is over the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_eventhub_namespace_failed_requests" {
  description = "Escalation message for monitor [eventhub_namespace_failed_requests]"
  type        = string
  default     = ""
}

variable "notify_eventhub_namespace_failed_requests" {
  description = "Define notification hooks for monitor [notify_eventhub_namespace_failed_requests]"
  default     = ""
}

variable "isprod_eventhub_namespace_failed_requests" {
  description = "Define whether the monitor [eventhub_namespace_failed_requests] is in production or not"
  default     = ""
}

variable "irp_eventhub_namespace_failed_requests" {
  description = "Define the IRP for monitor [eventhub_namespace_failed_requests]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_eventhub_namespace_failed_requests" {
  description = "Define severity for monitor [eventhub_namespace_failed_requests]"
  default     = "4"
}

variable "category_eventhub_namespace_failed_requests" {
  description = "Define category for monitor [eventhub_namespace_failed_requests]"
  default     = "228"
}

variable "timeframe_eventhub_namespace_failed_requests" {
  description = "Monitor timeframe for monitor [eventhub_namespace_failed_requests] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_eventhub_namespace_failed_requests" {
  description = "Type for monitor [eventhub_namespace_failed_requests] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_eventhub_namespace_failed_requests" {
  description = "Extra tags for monitor [eventhub_namespace_failed_requests]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_eventhub_namespace_failed_requests" {
  description = "No data timeframe in minutes for monitor [eventhub_namespace_failed_requests]"
  default     = 1440
}

variable "notify_no_data_eventhub_namespace_failed_requests" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_eventhub_namespace_failed_requests" {
  description = "Monitor [eventhub_namespace_failed_requests] critical threshold"
  default     = "10"
}

variable "threshold_critical_recovery_eventhub_namespace_failed_requests" {
  description = "Monitor [eventhub_namespace_failed_requests] critical recovery threshold"
  default     = "5"
}

variable "tolerance_rate_eventhub_namespace_failed_requests" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_eventhub_namespace_failed_requests" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## eventhub_namespace_no_outgoing_messages

variable "activated_eventhub_namespace_no_outgoing_messages" {
  description = "If the monitor [eventhub_namespace_no_outgoing_messages] is activated"
  type        = string
  default     = "true"
}

variable "message_eventhub_namespace_no_outgoing_messages" {
  description = "Custom message for monitor [eventhub_namespace_no_outgoing_messages]"
  type        = string

  default = <<EOM
    Verify if incoming messages arriving but no outgoing messages during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_eventhub_namespace_no_outgoing_messages" {
  description = "Escalation message for monitor [eventhub_namespace_no_outgoing_messages]"
  type        = string
  default     = ""
}

variable "notify_eventhub_namespace_no_outgoing_messages" {
  description = "Define notification hooks for monitor [notify_eventhub_namespace_no_outgoing_messages]"
  default     = ""
}

variable "isprod_eventhub_namespace_no_outgoing_messages" {
  description = "Define whether the monitor [eventhub_namespace_no_outgoing_messages] is in production or not"
  default     = ""
}

variable "irp_eventhub_namespace_no_outgoing_messages" {
  description = "Define the IRP for monitor [eventhub_namespace_no_outgoing_messages]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_eventhub_namespace_no_outgoing_messages" {
  description = "Define severity for monitor [eventhub_namespace_no_outgoing_messages]"
  default     = "4"
}

variable "category_eventhub_namespace_no_outgoing_messages" {
  description = "Define category for monitor [eventhub_namespace_no_outgoing_messages]"
  default     = "228"
}

variable "timeframe_eventhub_namespace_no_outgoing_messages" {
  description = "Monitor timeframe for monitor [eventhub_namespace_no_outgoing_messages] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_eventhub_namespace_no_outgoing_messages" {
  description = "Type for monitor [eventhub_namespace_no_outgoing_messages] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_eventhub_namespace_no_outgoing_messages" {
  description = "Extra tags for monitor [eventhub_namespace_no_outgoing_messages]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_eventhub_namespace_no_outgoing_messages" {
  description = "No data timeframe in minutes for monitor [eventhub_namespace_no_outgoing_messages]"
  default     = 1440
}

variable "notify_no_data_eventhub_namespace_no_outgoing_messages" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_eventhub_namespace_no_outgoing_messages" {
  description = "Monitor [eventhub_namespace_no_outgoing_messages] critical threshold"
  default     = "50"
}

variable "threshold_critical_recovery_eventhub_namespace_no_outgoing_messages" {
  description = "Monitor [eventhub_namespace_no_outgoing_messages] critical recovery threshold"
  default     = "49"
}

variable "tolerance_rate_eventhub_namespace_no_outgoing_messages" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_eventhub_namespace_no_outgoing_messages" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## eventhub_namespace_status

variable "activated_eventhub_namespace_status" {
  description = "If the monitor [eventhub_namespace_status] is activated"
  type        = string
  default     = "true"
}

variable "message_eventhub_namespace_status" {
  description = "Custom message for monitor [eventhub_namespace_status]"
  type        = string

  default = <<EOM
    Verify if the rate of user and server error is over the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_eventhub_namespace_status" {
  description = "Escalation message for monitor [eventhub_namespace_status]"
  type        = string
  default     = ""
}

variable "notify_eventhub_namespace_status" {
  description = "Define notification hooks for monitor [notify_eventhub_namespace_status]"
  default     = ""
}

variable "isprod_eventhub_namespace_status" {
  description = "Define whether the monitor [eventhub_namespace_status] is in production or not"
  default     = ""
}

variable "irp_eventhub_namespace_status" {
  description = "Define the IRP for monitor [eventhub_namespace_status]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_eventhub_namespace_status" {
  description = "Define severity for monitor [eventhub_namespace_status]"
  default     = "1"
}

variable "category_eventhub_namespace_status" {
  description = "Define category for monitor [eventhub_namespace_status]"
  default     = "228"
}

variable "timeframe_eventhub_namespace_status" {
  description = "Monitor timeframe for monitor [eventhub_namespace_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_eventhub_namespace_status" {
  description = "Type for monitor [eventhub_namespace_status] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_eventhub_namespace_status" {
  description = "Extra tags for monitor [eventhub_namespace_status]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_eventhub_namespace_status" {
  description = "No data timeframe in minutes for monitor [eventhub_namespace_status]"
  default     = 1440
}

variable "notify_no_data_eventhub_namespace_status" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_eventhub_namespace_status" {
  description = "Monitor [eventhub_namespace_status] critical threshold"
  default     = "90"
}

variable "threshold_critical_recovery_eventhub_namespace_status" {
  description = "Monitor [eventhub_namespace_status] critical recovery threshold"
  default     = "70"
}

variable "tolerance_rate_eventhub_namespace_status" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_eventhub_namespace_status" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## eventhub_namespace_throttling_requests

variable "activated_eventhub_namespace_throttling_requests" {
  description = "If the monitor [eventhub_namespace_throttling_requests] is activated"
  type        = string
  default     = "true"
}

variable "message_eventhub_namespace_throttling_requests" {
  description = "Custom message for monitor [eventhub_namespace_throttling_requests]"
  type        = string

  default = <<EOM
    Verify if the number of throttling request was greater than defined threshold during last check period.
    Unit: request.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_eventhub_namespace_throttling_requests" {
  description = "Escalation message for monitor [eventhub_namespace_throttling_requests]"
  type        = string
  default     = ""
}

variable "notify_eventhub_namespace_throttling_requests" {
  description = "Define notification hooks for monitor [notify_eventhub_namespace_throttling_requests]"
  default     = ""
}

variable "isprod_eventhub_namespace_throttling_requests" {
  description = "Define whether the monitor [eventhub_namespace_throttling_requests] is in production or not"
  default     = ""
}

variable "irp_eventhub_namespace_throttling_requests" {
  description = "Define the IRP for monitor [eventhub_namespace_throttling_requests]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_eventhub_namespace_throttling_requests" {
  description = "Define severity for monitor [eventhub_namespace_throttling_requests]"
  default     = "4"
}

variable "category_eventhub_namespace_throttling_requests" {
  description = "Define category for monitor [eventhub_namespace_throttling_requests]"
  default     = "228"
}

variable "timeframe_eventhub_namespace_throttling_requests" {
  description = "Monitor timeframe for monitor [eventhub_namespace_throttling_requests] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_eventhub_namespace_throttling_requests" {
  description = "Type for monitor [eventhub_namespace_throttling_requests] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_eventhub_namespace_throttling_requests" {
  description = "Extra tags for monitor [eventhub_namespace_throttling_requests]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_eventhub_namespace_throttling_requests" {
  description = "No data timeframe in minutes for monitor [eventhub_namespace_throttling_requests]"
  default     = 1440
}

variable "notify_no_data_eventhub_namespace_throttling_requests" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_eventhub_namespace_throttling_requests" {
  description = "Monitor [eventhub_namespace_throttling_requests] critical threshold"
  default     = "50"
}

variable "threshold_critical_recovery_eventhub_namespace_throttling_requests" {
  description = "Monitor [eventhub_namespace_throttling_requests] critical recovery threshold"
  default     = "49"
}

variable "scope_eventhub_namespace_throttling_requests" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

##
