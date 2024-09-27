# RoleMetadataBulkUpdateByFilterRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filters** | **String** | Filtering is supported for the following fields and operators:  **id** : *eq, in*  **name** : *eq, sw*  **created** : *gt, lt, ge, le*  **modified** : *gt, lt, ge, le*  **owner.id** : *eq, in*  **requestable** : *eq* | 
**Operation** | **String** | The operation to be performed | 
**ReplaceScope** | **String** | The choice of update scope. | [optional] 
**Values** | [**RoleMetadataBulkUpdateByFilterRequestValuesInner[]**](RoleMetadataBulkUpdateByFilterRequestValuesInner.md) | The metadata to be updated, including attribute key and value. | 

## Examples

- Prepare the resource
```powershell
$RoleMetadataBulkUpdateByFilterRequest = Initialize-PSSailpoint.V2024RoleMetadataBulkUpdateByFilterRequest  -Filters  requestable eq false `
 -Operation replace `
 -ReplaceScope ALL `
 -Values [{attribute&#x3D;iscFederalClassifications, values&#x3D;[topSecret]}]
```

- Convert the resource to JSON
```powershell
$RoleMetadataBulkUpdateByFilterRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

