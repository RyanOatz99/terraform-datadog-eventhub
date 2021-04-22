# Datadog enventhub module

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | >=2.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | >=2.25.0 |

## Usage

```hcl
module "datadog_eventhub" {
  source        = "linkbynet/eventhub/datadog"
  customer_name = "mycustomer"
  customer_id   = 1234
  asset_lbnref  = 1234
  asset_name    = myeventhub
}
```
## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.eventhub_namespace_failed_requests](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.eventhub_namespace_no_outgoing_messages](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.eventhub_namespace_status](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.eventhub_namespace_throttling_requests](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activated_eventhub_namespace_failed_requests"></a> [activated\_eventhub\_namespace\_failed\_requests](#input\_activated\_eventhub\_namespace\_failed\_requests) | If the monitor [eventhub\_namespace\_failed\_requests] is activated | `string` | `"true"` | no |
| <a name="input_activated_eventhub_namespace_no_outgoing_messages"></a> [activated\_eventhub\_namespace\_no\_outgoing\_messages](#input\_activated\_eventhub\_namespace\_no\_outgoing\_messages) | If the monitor [eventhub\_namespace\_no\_outgoing\_messages] is activated | `string` | `"true"` | no |
| <a name="input_activated_eventhub_namespace_status"></a> [activated\_eventhub\_namespace\_status](#input\_activated\_eventhub\_namespace\_status) | If the monitor [eventhub\_namespace\_status] is activated | `string` | `"true"` | no |
| <a name="input_activated_eventhub_namespace_throttling_requests"></a> [activated\_eventhub\_namespace\_throttling\_requests](#input\_activated\_eventhub\_namespace\_throttling\_requests) | If the monitor [eventhub\_namespace\_throttling\_requests] is activated | `string` | `"true"` | no |
| <a name="input_asset_lbnref"></a> [asset\_lbnref](#input\_asset\_lbnref) | Asset lbnref | `any` | n/a | yes |
| <a name="input_asset_name"></a> [asset\_name](#input\_asset\_name) | Asset name | `any` | n/a | yes |
| <a name="input_category"></a> [category](#input\_category) | Category of the monitors | `string` | `"228"` | no |
| <a name="input_category_eventhub_namespace_failed_requests"></a> [category\_eventhub\_namespace\_failed\_requests](#input\_category\_eventhub\_namespace\_failed\_requests) | Define category for monitor [eventhub\_namespace\_failed\_requests] | `string` | `"228"` | no |
| <a name="input_category_eventhub_namespace_no_outgoing_messages"></a> [category\_eventhub\_namespace\_no\_outgoing\_messages](#input\_category\_eventhub\_namespace\_no\_outgoing\_messages) | Define category for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `string` | `"228"` | no |
| <a name="input_category_eventhub_namespace_status"></a> [category\_eventhub\_namespace\_status](#input\_category\_eventhub\_namespace\_status) | Define category for monitor [eventhub\_namespace\_status] | `string` | `"228"` | no |
| <a name="input_category_eventhub_namespace_throttling_requests"></a> [category\_eventhub\_namespace\_throttling\_requests](#input\_category\_eventhub\_namespace\_throttling\_requests) | Define category for monitor [eventhub\_namespace\_throttling\_requests] | `string` | `"228"` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | map of custom tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | ID of the client in Idefix | `any` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | Client name as in Idefix | `any` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | map of default tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_escalation_message"></a> [escalation\_message](#input\_escalation\_message) | Default escalation message | `string` | `""` | no |
| <a name="input_escalation_message_eventhub_namespace_failed_requests"></a> [escalation\_message\_eventhub\_namespace\_failed\_requests](#input\_escalation\_message\_eventhub\_namespace\_failed\_requests) | Escalation message for monitor [eventhub\_namespace\_failed\_requests] | `string` | `""` | no |
| <a name="input_escalation_message_eventhub_namespace_no_outgoing_messages"></a> [escalation\_message\_eventhub\_namespace\_no\_outgoing\_messages](#input\_escalation\_message\_eventhub\_namespace\_no\_outgoing\_messages) | Escalation message for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `string` | `""` | no |
| <a name="input_escalation_message_eventhub_namespace_status"></a> [escalation\_message\_eventhub\_namespace\_status](#input\_escalation\_message\_eventhub\_namespace\_status) | Escalation message for monitor [eventhub\_namespace\_status] | `string` | `""` | no |
| <a name="input_escalation_message_eventhub_namespace_throttling_requests"></a> [escalation\_message\_eventhub\_namespace\_throttling\_requests](#input\_escalation\_message\_eventhub\_namespace\_throttling\_requests) | Escalation message for monitor [eventhub\_namespace\_throttling\_requests] | `string` | `""` | no |
| <a name="input_evaluation_delay"></a> [evaluation\_delay](#input\_evaluation\_delay) | Delay in seconds for the metric evaluation | `number` | `15` | no |
| <a name="input_extra_tags_eventhub_namespace_failed_requests"></a> [extra\_tags\_eventhub\_namespace\_failed\_requests](#input\_extra\_tags\_eventhub\_namespace\_failed\_requests) | Extra tags for monitor [eventhub\_namespace\_failed\_requests] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_eventhub_namespace_no_outgoing_messages"></a> [extra\_tags\_eventhub\_namespace\_no\_outgoing\_messages](#input\_extra\_tags\_eventhub\_namespace\_no\_outgoing\_messages) | Extra tags for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_eventhub_namespace_status"></a> [extra\_tags\_eventhub\_namespace\_status](#input\_extra\_tags\_eventhub\_namespace\_status) | Extra tags for monitor [eventhub\_namespace\_status] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_eventhub_namespace_throttling_requests"></a> [extra\_tags\_eventhub\_namespace\_throttling\_requests](#input\_extra\_tags\_eventhub\_namespace\_throttling\_requests) | Extra tags for monitor [eventhub\_namespace\_throttling\_requests] | `list(string)` | `[]` | no |
| <a name="input_include_tags"></a> [include\_tags](#input\_include\_tags) | Include triggered event tags in title | `bool` | `false` | no |
| <a name="input_irp_eventhub_namespace_failed_requests"></a> [irp\_eventhub\_namespace\_failed\_requests](#input\_irp\_eventhub\_namespace\_failed\_requests) | Define the IRP for monitor [eventhub\_namespace\_failed\_requests] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_eventhub_namespace_no_outgoing_messages"></a> [irp\_eventhub\_namespace\_no\_outgoing\_messages](#input\_irp\_eventhub\_namespace\_no\_outgoing\_messages) | Define the IRP for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_eventhub_namespace_status"></a> [irp\_eventhub\_namespace\_status](#input\_irp\_eventhub\_namespace\_status) | Define the IRP for monitor [eventhub\_namespace\_status] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_eventhub_namespace_throttling_requests"></a> [irp\_eventhub\_namespace\_throttling\_requests](#input\_irp\_eventhub\_namespace\_throttling\_requests) | Define the IRP for monitor [eventhub\_namespace\_throttling\_requests] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_isprod"></a> [isprod](#input\_isprod) | activate the monitor on production on Sentinel | `string` | `"false"` | no |
| <a name="input_isprod_eventhub_namespace_failed_requests"></a> [isprod\_eventhub\_namespace\_failed\_requests](#input\_isprod\_eventhub\_namespace\_failed\_requests) | Define whether the monitor [eventhub\_namespace\_failed\_requests] is in production or not | `string` | `""` | no |
| <a name="input_isprod_eventhub_namespace_no_outgoing_messages"></a> [isprod\_eventhub\_namespace\_no\_outgoing\_messages](#input\_isprod\_eventhub\_namespace\_no\_outgoing\_messages) | Define whether the monitor [eventhub\_namespace\_no\_outgoing\_messages] is in production or not | `string` | `""` | no |
| <a name="input_isprod_eventhub_namespace_status"></a> [isprod\_eventhub\_namespace\_status](#input\_isprod\_eventhub\_namespace\_status) | Define whether the monitor [eventhub\_namespace\_status] is in production or not | `string` | `""` | no |
| <a name="input_isprod_eventhub_namespace_throttling_requests"></a> [isprod\_eventhub\_namespace\_throttling\_requests](#input\_isprod\_eventhub\_namespace\_throttling\_requests) | Define whether the monitor [eventhub\_namespace\_throttling\_requests] is in production or not | `string` | `""` | no |
| <a name="input_message_eventhub_namespace_failed_requests"></a> [message\_eventhub\_namespace\_failed\_requests](#input\_message\_eventhub\_namespace\_failed\_requests) | Custom message for monitor [eventhub\_namespace\_failed\_requests] | `string` | `"    Verify if the rate of failed requests on the eventhub is over the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_eventhub_namespace_no_outgoing_messages"></a> [message\_eventhub\_namespace\_no\_outgoing\_messages](#input\_message\_eventhub\_namespace\_no\_outgoing\_messages) | Custom message for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `string` | `"    Verify if incoming messages arriving but no outgoing messages during last check period.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_eventhub_namespace_status"></a> [message\_eventhub\_namespace\_status](#input\_message\_eventhub\_namespace\_status) | Custom message for monitor [eventhub\_namespace\_status] | `string` | `"    Verify if the rate of user and server error is over the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_eventhub_namespace_throttling_requests"></a> [message\_eventhub\_namespace\_throttling\_requests](#input\_message\_eventhub\_namespace\_throttling\_requests) | Custom message for monitor [eventhub\_namespace\_throttling\_requests] | `string` | `"    Verify if the number of throttling request was greater than defined threshold during last check period.\n    Unit: request.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_new_host_delay"></a> [new\_host\_delay](#input\_new\_host\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_no_data_timeframe_eventhub_namespace_failed_requests"></a> [no\_data\_timeframe\_eventhub\_namespace\_failed\_requests](#input\_no\_data\_timeframe\_eventhub\_namespace\_failed\_requests) | No data timeframe in minutes for monitor [eventhub\_namespace\_failed\_requests] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_eventhub_namespace_no_outgoing_messages"></a> [no\_data\_timeframe\_eventhub\_namespace\_no\_outgoing\_messages](#input\_no\_data\_timeframe\_eventhub\_namespace\_no\_outgoing\_messages) | No data timeframe in minutes for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_eventhub_namespace_status"></a> [no\_data\_timeframe\_eventhub\_namespace\_status](#input\_no\_data\_timeframe\_eventhub\_namespace\_status) | No data timeframe in minutes for monitor [eventhub\_namespace\_status] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_eventhub_namespace_throttling_requests"></a> [no\_data\_timeframe\_eventhub\_namespace\_throttling\_requests](#input\_no\_data\_timeframe\_eventhub\_namespace\_throttling\_requests) | No data timeframe in minutes for monitor [eventhub\_namespace\_throttling\_requests] | `number` | `1440` | no |
| <a name="input_notify_capacity"></a> [notify\_capacity](#input\_notify\_capacity) | to who notify capacity alerts | `string` | `""` | no |
| <a name="input_notify_eventhub_namespace_failed_requests"></a> [notify\_eventhub\_namespace\_failed\_requests](#input\_notify\_eventhub\_namespace\_failed\_requests) | Define notification hooks for monitor [notify\_eventhub\_namespace\_failed\_requests] | `string` | `""` | no |
| <a name="input_notify_eventhub_namespace_no_outgoing_messages"></a> [notify\_eventhub\_namespace\_no\_outgoing\_messages](#input\_notify\_eventhub\_namespace\_no\_outgoing\_messages) | Define notification hooks for monitor [notify\_eventhub\_namespace\_no\_outgoing\_messages] | `string` | `""` | no |
| <a name="input_notify_eventhub_namespace_status"></a> [notify\_eventhub\_namespace\_status](#input\_notify\_eventhub\_namespace\_status) | Define notification hooks for monitor [notify\_eventhub\_namespace\_status] | `string` | `""` | no |
| <a name="input_notify_eventhub_namespace_throttling_requests"></a> [notify\_eventhub\_namespace\_throttling\_requests](#input\_notify\_eventhub\_namespace\_throttling\_requests) | Define notification hooks for monitor [notify\_eventhub\_namespace\_throttling\_requests] | `string` | `""` | no |
| <a name="input_notify_no_data_eventhub_namespace_failed_requests"></a> [notify\_no\_data\_eventhub\_namespace\_failed\_requests](#input\_notify\_no\_data\_eventhub\_namespace\_failed\_requests) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_eventhub_namespace_no_outgoing_messages"></a> [notify\_no\_data\_eventhub\_namespace\_no\_outgoing\_messages](#input\_notify\_no\_data\_eventhub\_namespace\_no\_outgoing\_messages) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_eventhub_namespace_status"></a> [notify\_no\_data\_eventhub\_namespace\_status](#input\_notify\_no\_data\_eventhub\_namespace\_status) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_no_data_eventhub_namespace_throttling_requests"></a> [notify\_no\_data\_eventhub\_namespace\_throttling\_requests](#input\_notify\_no\_data\_eventhub\_namespace\_throttling\_requests) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_to"></a> [notify\_to](#input\_notify\_to) | Define notification hooks | `string` | `"@webhook-SGCProd @monitoring-teams"` | no |
| <a name="input_renotify_interval"></a> [renotify\_interval](#input\_renotify\_interval) | Delay in minutes before monitor is renotified | `number` | `40` | no |
| <a name="input_scope_eventhub_namespace_failed_requests"></a> [scope\_eventhub\_namespace\_failed\_requests](#input\_scope\_eventhub\_namespace\_failed\_requests) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_eventhub_namespace_no_outgoing_messages"></a> [scope\_eventhub\_namespace\_no\_outgoing\_messages](#input\_scope\_eventhub\_namespace\_no\_outgoing\_messages) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_eventhub_namespace_status"></a> [scope\_eventhub\_namespace\_status](#input\_scope\_eventhub\_namespace\_status) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_eventhub_namespace_throttling_requests"></a> [scope\_eventhub\_namespace\_throttling\_requests](#input\_scope\_eventhub\_namespace\_throttling\_requests) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_severity_eventhub_namespace_failed_requests"></a> [severity\_eventhub\_namespace\_failed\_requests](#input\_severity\_eventhub\_namespace\_failed\_requests) | Define severity for monitor [eventhub\_namespace\_failed\_requests] | `string` | `"4"` | no |
| <a name="input_severity_eventhub_namespace_no_outgoing_messages"></a> [severity\_eventhub\_namespace\_no\_outgoing\_messages](#input\_severity\_eventhub\_namespace\_no\_outgoing\_messages) | Define severity for monitor [eventhub\_namespace\_no\_outgoing\_messages] | `string` | `"4"` | no |
| <a name="input_severity_eventhub_namespace_status"></a> [severity\_eventhub\_namespace\_status](#input\_severity\_eventhub\_namespace\_status) | Define severity for monitor [eventhub\_namespace\_status] | `string` | `"1"` | no |
| <a name="input_severity_eventhub_namespace_throttling_requests"></a> [severity\_eventhub\_namespace\_throttling\_requests](#input\_severity\_eventhub\_namespace\_throttling\_requests) | Define severity for monitor [eventhub\_namespace\_throttling\_requests] | `string` | `"4"` | no |
| <a name="input_team_in_charge"></a> [team\_in\_charge](#input\_team\_in\_charge) | Define the team in charge | `string` | `"Undefined"` | no |
| <a name="input_template"></a> [template](#input\_template) | Template name | `string` | `"azure-eventhub_namespaces"` | no |
| <a name="input_threshold_critical_eventhub_namespace_failed_requests"></a> [threshold\_critical\_eventhub\_namespace\_failed\_requests](#input\_threshold\_critical\_eventhub\_namespace\_failed\_requests) | Monitor [eventhub\_namespace\_failed\_requests] critical threshold | `string` | `"10"` | no |
| <a name="input_threshold_critical_eventhub_namespace_no_outgoing_messages"></a> [threshold\_critical\_eventhub\_namespace\_no\_outgoing\_messages](#input\_threshold\_critical\_eventhub\_namespace\_no\_outgoing\_messages) | Monitor [eventhub\_namespace\_no\_outgoing\_messages] critical threshold | `string` | `"50"` | no |
| <a name="input_threshold_critical_eventhub_namespace_status"></a> [threshold\_critical\_eventhub\_namespace\_status](#input\_threshold\_critical\_eventhub\_namespace\_status) | Monitor [eventhub\_namespace\_status] critical threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_eventhub_namespace_throttling_requests"></a> [threshold\_critical\_eventhub\_namespace\_throttling\_requests](#input\_threshold\_critical\_eventhub\_namespace\_throttling\_requests) | Monitor [eventhub\_namespace\_throttling\_requests] critical threshold | `string` | `"50"` | no |
| <a name="input_threshold_critical_recovery_eventhub_namespace_failed_requests"></a> [threshold\_critical\_recovery\_eventhub\_namespace\_failed\_requests](#input\_threshold\_critical\_recovery\_eventhub\_namespace\_failed\_requests) | Monitor [eventhub\_namespace\_failed\_requests] critical recovery threshold | `string` | `"5"` | no |
| <a name="input_threshold_critical_recovery_eventhub_namespace_no_outgoing_messages"></a> [threshold\_critical\_recovery\_eventhub\_namespace\_no\_outgoing\_messages](#input\_threshold\_critical\_recovery\_eventhub\_namespace\_no\_outgoing\_messages) | Monitor [eventhub\_namespace\_no\_outgoing\_messages] critical recovery threshold | `string` | `"49"` | no |
| <a name="input_threshold_critical_recovery_eventhub_namespace_status"></a> [threshold\_critical\_recovery\_eventhub\_namespace\_status](#input\_threshold\_critical\_recovery\_eventhub\_namespace\_status) | Monitor [eventhub\_namespace\_status] critical recovery threshold | `string` | `"70"` | no |
| <a name="input_threshold_critical_recovery_eventhub_namespace_throttling_requests"></a> [threshold\_critical\_recovery\_eventhub\_namespace\_throttling\_requests](#input\_threshold\_critical\_recovery\_eventhub\_namespace\_throttling\_requests) | Monitor [eventhub\_namespace\_throttling\_requests] critical recovery threshold | `string` | `"49"` | no |
| <a name="input_timeframe_eventhub_namespace_failed_requests"></a> [timeframe\_eventhub\_namespace\_failed\_requests](#input\_timeframe\_eventhub\_namespace\_failed\_requests) | Monitor timeframe for monitor [eventhub\_namespace\_failed\_requests] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_eventhub_namespace_no_outgoing_messages"></a> [timeframe\_eventhub\_namespace\_no\_outgoing\_messages](#input\_timeframe\_eventhub\_namespace\_no\_outgoing\_messages) | Monitor timeframe for monitor [eventhub\_namespace\_no\_outgoing\_messages] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_eventhub_namespace_status"></a> [timeframe\_eventhub\_namespace\_status](#input\_timeframe\_eventhub\_namespace\_status) | Monitor timeframe for monitor [eventhub\_namespace\_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_eventhub_namespace_throttling_requests"></a> [timeframe\_eventhub\_namespace\_throttling\_requests](#input\_timeframe\_eventhub\_namespace\_throttling\_requests) | Monitor timeframe for monitor [eventhub\_namespace\_throttling\_requests] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_tolerance_rate_eventhub_namespace_failed_requests"></a> [tolerance\_rate\_eventhub\_namespace\_failed\_requests](#input\_tolerance\_rate\_eventhub\_namespace\_failed\_requests) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_tolerance_rate_eventhub_namespace_no_outgoing_messages"></a> [tolerance\_rate\_eventhub\_namespace\_no\_outgoing\_messages](#input\_tolerance\_rate\_eventhub\_namespace\_no\_outgoing\_messages) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_tolerance_rate_eventhub_namespace_status"></a> [tolerance\_rate\_eventhub\_namespace\_status](#input\_tolerance\_rate\_eventhub\_namespace\_status) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_type_eventhub_namespace_failed_requests"></a> [type\_eventhub\_namespace\_failed\_requests](#input\_type\_eventhub\_namespace\_failed\_requests) | Type for monitor [eventhub\_namespace\_failed\_requests] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_eventhub_namespace_no_outgoing_messages"></a> [type\_eventhub\_namespace\_no\_outgoing\_messages](#input\_type\_eventhub\_namespace\_no\_outgoing\_messages) | Type for monitor [eventhub\_namespace\_no\_outgoing\_messages] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_eventhub_namespace_status"></a> [type\_eventhub\_namespace\_status](#input\_type\_eventhub\_namespace\_status) | Type for monitor [eventhub\_namespace\_status] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_eventhub_namespace_throttling_requests"></a> [type\_eventhub\_namespace\_throttling\_requests](#input\_type\_eventhub\_namespace\_throttling\_requests) | Type for monitor [eventhub\_namespace\_throttling\_requests] among incident, information | `string` | `"incident"` | no |

## Outputs

No outputs.
