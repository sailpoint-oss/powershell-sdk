# AccessRequestConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalsMustBeExternal** | **Boolean** | If true, then approvals must be processed by external system. | [optional] 
**AutoApprovalEnabled** | **Boolean** | If true and requester and reviewer are the same, then automatically approve the approval. | [optional] 
**RequestOnBehalfOfConfig** | [**RequestOnBehalfOfConfig**](RequestOnBehalfOfConfig.md) |  | [optional] 
**ApprovalReminderAndEscalationConfig** | [**ApprovalReminderAndEscalationConfig**](ApprovalReminderAndEscalationConfig.md) |  | [optional] 
**EntitlementRequestConfig** | [**EntitlementRequestConfig1**](EntitlementRequestConfig1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestConfig = Initialize-BetaAccessRequestConfig  -ApprovalsMustBeExternal true `
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

