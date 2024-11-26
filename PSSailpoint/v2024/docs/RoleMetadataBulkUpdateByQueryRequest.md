# RoleMetadataBulkUpdateByQueryRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | [**SystemCollectionsHashtable**](.md) | query the identities to be updated | 
**Operation** | **String** | The operation to be performed | 
**ReplaceScope** | **String** | The choice of update scope. | [optional] 
**Values** | [**RoleMetadataBulkUpdateByQueryRequestValuesInner[]**](RoleMetadataBulkUpdateByQueryRequestValuesInner.md) | The metadata to be updated, including attribute key and value. | 

## Examples

- Prepare the resource
```powershell
$RoleMetadataBulkUpdateByQueryRequest = Initialize-PSSailpoint.V2024RoleMetadataBulkUpdateByQueryRequest  -Query {query&quot;&#x3D;{indices&#x3D;[roles], queryType&#x3D;TEXT, textQuery&#x3D;{terms&#x3D;[test123], fields&#x3D;[id], matchAny&#x3D;false, contains&#x3D;true}, includeNested&#x3D;false}} `
 -Operation REPLACE `
 -ReplaceScope ALL `
 -Values null
```

- Convert the resource to JSON
```powershell
$RoleMetadataBulkUpdateByQueryRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

