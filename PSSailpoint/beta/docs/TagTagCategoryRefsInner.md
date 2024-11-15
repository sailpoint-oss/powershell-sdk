# TagTagCategoryRefsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of the tagged object&#39;s category. | [optional] 
**Id** | **String** | Tagged object&#39;s ID. | [optional] 
**Name** | **String** | Tagged object&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$TagTagCategoryRefsInner = Initialize-PSSailpoint.BetaTagTagCategoryRefsInner  -Type ENTITLEMENT `
 -Id 2c91809773dee32014e13e122092014e `
 -Name CN&#x3D;entitlement.490efde5,OU&#x3D;OrgCo,OU&#x3D;ServiceDept,DC&#x3D;HQAD,DC&#x3D;local
```

- Convert the resource to JSON
```powershell
$TagTagCategoryRefsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

