# AccessRequestConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalsMustBeExternal** | **Boolean** | If this is true, approvals must be processed by an external system. Also, if this is true, it blocks Request Center access requests and returns an error for any user who isn&#39;t an org admin. | [optional] [default to $false]
**AutoApprovalEnabled** | **Boolean** | If this is true and the requester and reviewer are the same, the request is automatically approved. | [optional] [default to $false]
**RequestOnBehalfOfConfig** | [**RequestOnBehalfOfConfig**](RequestOnBehalfOfConfig.md) |  | [optional] 
**ApprovalReminderAndEscalationConfig** | [**ApprovalReminderAndEscalationConfig**](ApprovalReminderAndEscalationConfig.md) |  | [optional] 
**EntitlementRequestConfig** | [**EntitlementRequestConfig**](EntitlementRequestConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestConfig = Initialize-Tm.V3AccessRequestConfig  -ApprovalsMustBeExternal true `
 -AutoApprovalEnabled true `
 -RequestOnBehalfOfConfig null `
 -ApprovalReminderAndEscalationConfig null `
 -EntitlementRequestConfig null
```

- Convert the resource to JSON
```powershell
$AccessRequestConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

