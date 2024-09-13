# TemplateSlackAutoApprovalData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsAutoApproved** | **String** |  | [optional] 
**ItemId** | **String** |  | [optional] 
**ItemType** | **String** |  | [optional] 
**AutoApprovalMessageJSON** | **String** |  | [optional] 
**AutoApprovalTitle** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateSlackAutoApprovalData = Initialize-PSSailpoint.V2024TemplateSlackAutoApprovalData  -IsAutoApproved null `
 -ItemId null `
 -ItemType null `
 -AutoApprovalMessageJSON null `
 -AutoApprovalTitle null
```

- Convert the resource to JSON
```powershell
$TemplateSlackAutoApprovalData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

