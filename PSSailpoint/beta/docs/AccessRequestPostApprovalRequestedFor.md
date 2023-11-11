# AccessRequestPostApprovalRequestedFor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of identity the access item is requested for. | 
**Id** | **String** | ID of identity the access item is requested for. | 
**Name** | **String** | Human-readable display name of identity the access item is requested for. | 

## Examples

- Prepare the resource
```powershell
$AccessRequestPostApprovalRequestedFor = Initialize-BetaAccessRequestPostApprovalRequestedFor  -Type IDENTITY `
 -Id 2c4180a46faadee4016fb4e018c20626 `
 -Name Robert Robinson
```

- Convert the resource to JSON
```powershell
$AccessRequestPostApprovalRequestedFor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

