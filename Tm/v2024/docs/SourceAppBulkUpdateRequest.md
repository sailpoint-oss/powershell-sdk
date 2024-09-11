# SourceAppBulkUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppIds** | **String[]** | List of source app ids to update | 
**JsonPatch** | [**JsonPatchOperation[]**](JsonPatchOperation.md) | The JSONPatch payload used to update the source app. | 

## Examples

- Prepare the resource
```powershell
$SourceAppBulkUpdateRequest = Initialize-Tm.V2024SourceAppBulkUpdateRequest  -AppIds [2c91808a7624751a01762f19d665220d, 2c91808a7624751a01762f19d67c220e, 2c91808a7624751a01762f19d692220f] `
 -JsonPatch [{op&#x3D;replace, path&#x3D;/enabled, value&#x3D;false}, {op&#x3D;replace, path&#x3D;/matchAllAccounts, value&#x3D;false}]
```

- Convert the resource to JSON
```powershell
$SourceAppBulkUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

