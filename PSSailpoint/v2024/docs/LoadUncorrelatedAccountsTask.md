# LoadUncorrelatedAccountsTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | The status of the result | [optional] [default to $true]
**Task** | [**LoadUncorrelatedAccountsTaskTask**](LoadUncorrelatedAccountsTaskTask.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadUncorrelatedAccountsTask = Initialize-PSSailpoint.V2024LoadUncorrelatedAccountsTask  -Success true `
 -Task null
```

- Convert the resource to JSON
```powershell
$LoadUncorrelatedAccountsTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

