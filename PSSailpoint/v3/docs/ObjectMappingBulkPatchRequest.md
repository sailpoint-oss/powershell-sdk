# ObjectMappingBulkPatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Patches** | [**System.Collections.Hashtable**](Array.md) | Map of id of the object mapping to a JsonPatchOperation describing what to patch on that object mapping. | 

## Examples

- Prepare the resource
```powershell
$ObjectMappingBulkPatchRequest = Initialize-PSSailpoint.V3ObjectMappingBulkPatchRequest  -Patches {603b1a61-d03d-4ed1-864f-a508fbd1995d&#x3D;[{op&#x3D;replace, path&#x3D;/enabled, value&#x3D;true}], 00bece34-f50d-4227-8878-76f620b5a971&#x3D;[{op&#x3D;replace, path&#x3D;/targetValue, value&#x3D;New Target Value}]}
```

- Convert the resource to JSON
```powershell
$ObjectMappingBulkPatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

