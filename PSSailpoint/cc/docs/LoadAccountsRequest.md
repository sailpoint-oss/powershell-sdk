# LoadAccountsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisableOptimization** | **Boolean** |  | [optional] 
**File** | **System.IO.FileInfo** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadAccountsRequest = Initialize-CCLoadAccountsRequest  -DisableOptimization true `
 -File null
```

- Convert the resource to JSON
```powershell
$LoadAccountsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

