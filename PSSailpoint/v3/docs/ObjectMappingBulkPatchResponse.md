# ObjectMappingBulkPatchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PatchedObjects** | [**ObjectMappingResponse[]**](ObjectMappingResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectMappingBulkPatchResponse = Initialize-PSSailpoint.V3ObjectMappingBulkPatchResponse  -PatchedObjects null
```

- Convert the resource to JSON
```powershell
$ObjectMappingBulkPatchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

