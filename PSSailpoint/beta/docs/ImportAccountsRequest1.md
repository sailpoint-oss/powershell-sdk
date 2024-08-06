# ImportAccountsRequest1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisableOptimization** | **String** | Use this flag to reprocess every account whether or not the data has changed. | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportAccountsRequest1 = Initialize-PSSailpointBetaImportAccountsRequest1  -DisableOptimization true
```

- Convert the resource to JSON
```powershell
$ImportAccountsRequest1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

