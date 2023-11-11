# DeleteNonEmployeeRecordsInBulkRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **String[]** | List of non-employee ids. | 

## Examples

- Prepare the resource
```powershell
$DeleteNonEmployeeRecordsInBulkRequest = Initialize-DeleteNonEmployeeRecordsInBulkRequest  -Ids [2b838de9-db9b-abcf-e646-d4f274ad4238, 2d838de9-db9b-abcf-e646-d4f274ad4238]
```

- Convert the resource to JSON
```powershell
$DeleteNonEmployeeRecordsInBulkRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

