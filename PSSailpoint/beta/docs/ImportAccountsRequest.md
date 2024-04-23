# ImportAccountsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** |  | [optional] 
**DisableOptimization** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportAccountsRequest = Initialize-PSSailpointBetaImportAccountsRequest  -File null `
 -DisableOptimization true
```

- Convert the resource to JSON
```powershell
$ImportAccountsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

