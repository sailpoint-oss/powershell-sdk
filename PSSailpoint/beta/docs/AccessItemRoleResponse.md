# AccessItemRoleResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessType** | **String** | the access item type. role in this case | [optional] 
**Id** | **String** | the access item id | [optional] 
**DisplayName** | **String** | the role display name | [optional] 
**Description** | **String** | the description for the role | [optional] 
**SourceName** | **String** | the associated source name if it exists | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemRoleResponse = Initialize-BetaAccessItemRoleResponse  -AccessType role `
 -Id 2c918087763e69d901763e72e97f006f `
 -DisplayName sample `
 -Description Role - Workday/Citizenship access `
 -SourceName Source Name
```

- Convert the resource to JSON
```powershell
$AccessItemRoleResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

