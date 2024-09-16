# IdentityDocumentAllOfSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of identity&#39;s source. | [optional] 
**Name** | **String** | Display name of identity&#39;s source. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDocumentAllOfSource = Initialize-PSSailpoint.V3IdentityDocumentAllOfSource  -Id 2c91808b6e9e6fb8016eec1a2b6f7b5f `
 -Name ODS-HR-Employees
```

- Convert the resource to JSON
```powershell
$IdentityDocumentAllOfSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

