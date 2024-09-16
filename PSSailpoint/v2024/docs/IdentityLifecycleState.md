# IdentityLifecycleState
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StateName** | **String** | The name of the lifecycle state | 
**ManuallyUpdated** | **Boolean** | Whether the lifecycle state has been manually or automatically set | 

## Examples

- Prepare the resource
```powershell
$IdentityLifecycleState = Initialize-PSSailpoint.V2024IdentityLifecycleState  -StateName active `
 -ManuallyUpdated true
```

- Convert the resource to JSON
```powershell
$IdentityLifecycleState | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

