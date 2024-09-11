# AccessItemAccountResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessType** | **String** | the access item type. account in this case | [optional] 
**Id** | **String** | the access item id | [optional] 
**NativeIdentity** | **String** | the native identifier used to uniquely identify an acccount | [optional] 
**SourceName** | **String** | the name of the source | [optional] 
**SourceId** | **String** | the id of the source | [optional] 
**EntitlementCount** | **String** | the number of entitlements the account will create | [optional] 
**DisplayName** | **String** | the display name of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemAccountResponse = Initialize-Tm.BetaAccessItemAccountResponse  -AccessType account `
 -Id 2c918087763e69d901763e72e97f006f `
 -NativeIdentity dr.arden.ogahn.d `
 -SourceName DataScienceDataset `
 -SourceId 2793o32dwd `
 -EntitlementCount 12 `
 -DisplayName Dr. Arden Rogahn MD
```

- Convert the resource to JSON
```powershell
$AccessItemAccountResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

