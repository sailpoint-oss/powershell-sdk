# LoadAccountsTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | The status of the result | [optional] [default to $true]
**Task** | [**LoadAccountsTaskTask**](LoadAccountsTaskTask.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadAccountsTask = Initialize-PSSailpoint.V2024LoadAccountsTask  -Success true `
 -Task null
```

- Convert the resource to JSON
```powershell
$LoadAccountsTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

