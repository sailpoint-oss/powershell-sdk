# RoleDocumentAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessProfiles** | [**Reference1[]**](Reference1.md) |  | [optional] 
**AccessProfileCount** | **Int32** |  | [optional] 
**Tags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleDocumentAllOf = Initialize-RoleDocumentAllOf  -AccessProfiles null `
 -AccessProfileCount null `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$RoleDocumentAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

