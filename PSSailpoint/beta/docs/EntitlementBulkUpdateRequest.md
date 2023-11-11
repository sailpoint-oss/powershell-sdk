# EntitlementBulkUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntitlementIds** | **String[]** | List of entitlement ids to update | 
**JsonPatch** | [**JsonPatchOperation[]**](JsonPatchOperation.md) |  | 

## Examples

- Prepare the resource
```powershell
$EntitlementBulkUpdateRequest = Initialize-BetaEntitlementBulkUpdateRequest  -EntitlementIds [2c91808a7624751a01762f19d665220d, 2c91808a7624751a01762f19d67c220e, 2c91808a7624751a01762f19d692220f] `
 -JsonPatch [{op&#x3D;replace, path&#x3D;/privileged, value&#x3D;false}, {op&#x3D;replace, path&#x3D;/requestable, value&#x3D;false}]
```

- Convert the resource to JSON
```powershell
$EntitlementBulkUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

