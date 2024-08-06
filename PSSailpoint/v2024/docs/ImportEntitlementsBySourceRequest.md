# ImportEntitlementsBySourceRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CsvFile** | **System.IO.FileInfo** | The CSV file containing the source entitlements to aggregate. | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportEntitlementsBySourceRequest = Initialize-PSSailpointV2024ImportEntitlementsBySourceRequest  -CsvFile null
```

- Convert the resource to JSON
```powershell
$ImportEntitlementsBySourceRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

