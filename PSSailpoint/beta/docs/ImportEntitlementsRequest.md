# ImportEntitlementsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CsvFile** | **System.IO.FileInfo** |  | 

## Examples

- Prepare the resource
```powershell
$ImportEntitlementsRequest = Initialize-PSSailpointBetaImportEntitlementsRequest  -CsvFile null
```

- Convert the resource to JSON
```powershell
$ImportEntitlementsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

