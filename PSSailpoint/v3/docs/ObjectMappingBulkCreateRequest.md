# ObjectMappingBulkCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewObjectsMappings** | [**ObjectMappingRequest[]**](ObjectMappingRequest.md) |  | 

## Examples

- Prepare the resource
```powershell
$ObjectMappingBulkCreateRequest = Initialize-PSSailpoint.V3ObjectMappingBulkCreateRequest  -NewObjectsMappings null
```

- Convert the resource to JSON
```powershell
$ObjectMappingBulkCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

