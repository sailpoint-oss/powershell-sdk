# AccessItemAccessProfileResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessType** | **String** | the access item type. accessProfile in this case | [optional] 
**Id** | **String** | the access item id | [optional] 
**Name** | **String** | the access profile name | [optional] 
**SourceName** | **String** | the name of the source | [optional] 
**SourceId** | **String** | the id of the source | [optional] 
**Description** | **String** | the description for the access profile | [optional] 
**DisplayName** | **String** | the display name of the identity | [optional] 
**EntitlementCount** | **String** | the number of entitlements the access profile will create | [optional] 
**AppDisplayName** | **String** | the name of app | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemAccessProfileResponse = Initialize-BetaAccessItemAccessProfileResponse  -AccessType accessProfile `
 -Id 2c918087763e69d901763e72e97f006f `
 -Name sample `
 -SourceName DataScienceDataset `
 -SourceId 2793o32dwd `
 -Description AccessProfile - Workday/Citizenship access `
 -DisplayName Dr. Arden Rogahn MD `
 -EntitlementCount 12 `
 -AppDisplayName AppName
```

- Convert the resource to JSON
```powershell
$AccessItemAccessProfileResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

