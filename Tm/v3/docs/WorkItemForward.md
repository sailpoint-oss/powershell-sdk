# WorkItemForward
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetOwnerId** | **String** | The ID of the identity to forward this work item to. | 
**Comment** | **String** | Comments to send to the target owner | 
**SendNotifications** | **Boolean** | If true, send a notification to the target owner. | [optional] [default to $true]

## Examples

- Prepare the resource
```powershell
$WorkItemForward = Initialize-Tm.V3WorkItemForward  -TargetOwnerId 2c9180835d2e5168015d32f890ca1581 `
 -Comment I&#39;m going on vacation. `
 -SendNotifications true
```

- Convert the resource to JSON
```powershell
$WorkItemForward | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

