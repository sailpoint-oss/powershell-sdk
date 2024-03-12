# ImportEntitlementCsvRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CsvFile** | **System.IO.FileInfo** |  | 

## Examples

- Prepare the resource
```powershell
$ImportEntitlementCsvRequest = Initialize-PSSailpointBetaImportEntitlementCsvRequest  -CsvFile null
```

- Convert the resource to JSON
```powershell
$ImportEntitlementCsvRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

