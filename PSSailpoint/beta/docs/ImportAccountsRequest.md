# ImportAccountsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | The CSV file containing the source accounts to aggregate. | [optional] 
**DisableOptimization** | **Boolean** | Use this flag to reprocess every account whether or not the data has changed. | [optional] [default to $false]

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

