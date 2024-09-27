# RoleMetadataBulkUpdateByIdRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | **String[]** | Roles&#39; Id to be updated | 
**Operation** | **String** | The operation to be performed | 
**ReplaceScope** | **String** | The choice of update scope. | [optional] 
**Values** | [**RoleMetadataBulkUpdateByIdRequestValuesInner[]**](RoleMetadataBulkUpdateByIdRequestValuesInner.md) | The metadata to be updated, including attribute key and value. | 

## Examples

- Prepare the resource
```powershell
$RoleMetadataBulkUpdateByIdRequest = Initialize-PSSailpoint.V2024RoleMetadataBulkUpdateByIdRequest  -Roles [b1db89554cfa431cb8b9921ea38d9367] `
 -Operation replace `
 -ReplaceScope ALL `
 -Values [{attribute&#x3D;iscFederalClassifications, values&#x3D;[topSecret]}]
```

- Convert the resource to JSON
```powershell
$RoleMetadataBulkUpdateByIdRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

