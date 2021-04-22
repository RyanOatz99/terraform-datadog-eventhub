terraform {
  required_version = ">= 0.13"
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = ">= 2.25.0"
    }
  }
}

resource "datadog_monitor" "eventhub_namespace_failed_requests" {
  name  = "[eventhub_namespace service][${var.asset_lbnref}] Failed requests over threshold"
  type  = "query alert"
  count = var.activated_eventhub_namespace_failed_requests == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_eventhub_namespace_failed_requests,
    var.notify_eventhub_namespace_failed_requests != "" ? var.notify_eventhub_namespace_failed_requests : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_eventhub_namespace_failed_requests != "" ? var.escalation_message_eventhub_namespace_failed_requests : var.escalation_message,
  )

  query = "avg(${var.timeframe_eventhub_namespace_failed_requests}):( default_zero(avg:azure.eventhub_namespaces.failed_requests{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_failed_requests}} by {entityname}) / ( default_zero(avg:azure.eventhub_namespaces.failed_requests{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_failed_requests}} by {entityname}) + default_zero(avg:azure.eventhub_namespaces.successful_requests{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_failed_requests}} by {entityname}.as_count()) + ${var.tolerance_rate_eventhub_namespace_failed_requests}) ) * 100 >= ${var.threshold_critical_eventhub_namespace_failed_requests}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_eventhub_namespace_failed_requests
    critical          = var.threshold_critical_eventhub_namespace_failed_requests
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_eventhub_namespace_failed_requests
  notify_no_data    = var.notify_no_data_eventhub_namespace_failed_requests
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:eventhub_namespace_failed_requests",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_eventhub_namespace_failed_requests != "" ? var.isprod_eventhub_namespace_failed_requests : var.isprod,
      )}",
      "severity:${var.severity_eventhub_namespace_failed_requests}",
      "category:${var.category_eventhub_namespace_failed_requests}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_eventhub_namespace_failed_requests}",
      "irp:${var.irp_eventhub_namespace_failed_requests}",
    ],
    var.extra_tags_eventhub_namespace_failed_requests,
  )
}

resource "datadog_monitor" "eventhub_namespace_no_outgoing_messages" {
  name  = "[eventhub_namespace service][${var.asset_lbnref}] No outgoing message during last check period"
  type  = "query alert"
  count = var.activated_eventhub_namespace_no_outgoing_messages == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_eventhub_namespace_no_outgoing_messages,
    var.notify_eventhub_namespace_no_outgoing_messages != "" ? var.notify_eventhub_namespace_no_outgoing_messages : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_eventhub_namespace_no_outgoing_messages != "" ? var.escalation_message_eventhub_namespace_no_outgoing_messages : var.escalation_message,
  )

  query = "min(${var.timeframe_eventhub_namespace_no_outgoing_messages}):( ( default_zero(avg:azure.eventhub_namespaces.incoming_messages{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_no_outgoing_messages}} by {entityname}.as_count()) - default_zero(avg:azure.eventhub_namespaces.outgoing_messages{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_no_outgoing_messages}} by {entityname}.as_count()) ) / ( default_zero(avg:azure.eventhub_namespaces.incoming_messages{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_no_outgoing_messages}} by {entityname}.as_count()) + ${var.tolerance_rate_eventhub_namespace_no_outgoing_messages} ) ) * 100 > ${var.threshold_critical_eventhub_namespace_no_outgoing_messages}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_eventhub_namespace_no_outgoing_messages
    critical          = var.threshold_critical_eventhub_namespace_no_outgoing_messages
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_eventhub_namespace_no_outgoing_messages
  notify_no_data    = var.notify_no_data_eventhub_namespace_no_outgoing_messages
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:eventhub_namespace_no_outgoing_messages",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_eventhub_namespace_no_outgoing_messages != "" ? var.isprod_eventhub_namespace_no_outgoing_messages : var.isprod,
      )}",
      "severity:${var.severity_eventhub_namespace_no_outgoing_messages}",
      "category:${var.category_eventhub_namespace_no_outgoing_messages}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_eventhub_namespace_no_outgoing_messages}",
      "irp:${var.irp_eventhub_namespace_no_outgoing_messages}",
    ],
    var.extra_tags_eventhub_namespace_no_outgoing_messages,
  )
}

# Create a new Datadog eventhub namespace monitor
resource "datadog_monitor" "eventhub_namespace_status" {
  name  = "[eventhub_namespace service][${var.asset_lbnref}] User and Server error rate over threshold"
  type  = "query alert"
  count = var.activated_eventhub_namespace_status == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_eventhub_namespace_status,
    var.notify_eventhub_namespace_status != "" ? var.notify_eventhub_namespace_status : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_eventhub_namespace_status != "" ? var.escalation_message_eventhub_namespace_status : var.escalation_message,
  )

  query = "avg(${var.timeframe_eventhub_namespace_status}):( (default_zero(avg:azure.eventhub_namespaces.user_errors.{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_status}} by {entityname}.as_count()) + avg:azure.eventhub_namespaces.server_errors.{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_status}} by {entityname}.as_count()) / ( avg:azure.eventhub_namespaces.successful_requests{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_status}} by {entityname}.as_count() + default_zero(avg:azure.eventhub_namespaces.user_errors.{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_status}} by {entityname}.as_count()) + default_zero(avg:azure.eventhub_namespaces.server_errors.{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_status}} by {entityname}.as_count()) + ${var.tolerance_rate_eventhub_namespace_status} ) ) * 100 > ${var.threshold_critical_eventhub_namespace_status}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_eventhub_namespace_status
    critical          = var.threshold_critical_eventhub_namespace_status
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_eventhub_namespace_status
  notify_no_data    = var.notify_no_data_eventhub_namespace_status
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:eventhub_namespace_status",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_eventhub_namespace_status != "" ? var.isprod_eventhub_namespace_status : var.isprod,
      )}",
      "severity:${var.severity_eventhub_namespace_status}",
      "category:${var.category_eventhub_namespace_status}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_eventhub_namespace_status}",
      "irp:${var.irp_eventhub_namespace_status}",
    ],
    var.extra_tags_eventhub_namespace_status,
  )
}

resource "datadog_monitor" "eventhub_namespace_throttling_requests" {
  name  = "[eventhub_namespace service][${var.asset_lbnref}] Throttling requests over threshold"
  type  = "query alert"
  count = var.activated_eventhub_namespace_throttling_requests == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_eventhub_namespace_throttling_requests,
    var.notify_eventhub_namespace_throttling_requests != "" ? var.notify_eventhub_namespace_throttling_requests : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_eventhub_namespace_throttling_requests != "" ? var.escalation_message_eventhub_namespace_throttling_requests : var.escalation_message,
  )

  query = "avg(${var.timeframe_eventhub_namespace_throttling_requests}):default_zero(avg:azure.eventhub_namespaces.throttled_requests.{lbnid:${var.asset_lbnref}${var.scope_eventhub_namespace_throttling_requests}} by {entityname}) >= ${var.threshold_critical_eventhub_namespace_throttling_requests}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_eventhub_namespace_throttling_requests
    critical          = var.threshold_critical_eventhub_namespace_throttling_requests
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_eventhub_namespace_throttling_requests
  notify_no_data    = var.notify_no_data_eventhub_namespace_throttling_requests
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:eventhub_namespace_throttling_requests",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_eventhub_namespace_throttling_requests != "" ? var.isprod_eventhub_namespace_throttling_requests : var.isprod,
      )}",
      "severity:${var.severity_eventhub_namespace_throttling_requests}",
      "category:${var.category_eventhub_namespace_throttling_requests}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_eventhub_namespace_throttling_requests}",
      "irp:${var.irp_eventhub_namespace_throttling_requests}",
    ],
    var.extra_tags_eventhub_namespace_throttling_requests,
  )
}

