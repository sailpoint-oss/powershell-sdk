# AccessItemAssociatedAccessItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessType** | **String** | the access item type. role in this case | [optional] 
**Id** | **String** | the access item id | [optional] 
**Name** | **String** | the access profile name | [optional] 
**SourceName** | **String** | the associated source name if it exists | [optional] 
**SourceId** | **String** | the id of the source | [optional] 
**Description** | **String** | the description for the role | [optional] 
**DisplayName** | **String** | the role display name | [optional] 
**EntitlementCount** | **String** | the number of entitlements the account will create | [optional] 
**AppDisplayName** | **String** | the name of app | [optional] 
**NativeIdentity** | **String** | the native identifier used to uniquely identify an acccount | [optional] 
**Attribute** | **String** | the entitlement attribute | [optional] 
**Value** | **String** | the associated value | [optional] 
**EntitlementType** | **String** | the type of entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemAssociatedAccessItem = Initialize-BetaAccessItemAssociatedAccessItem  -AccessType role `
 -Id 2c918087763e69d901763e72e97f006f `
 -Name sample `
 -SourceName Source Name `
 -SourceId 2793o32dwd `
 -Description Role - Workday/Citizenship access `
 -DisplayName sample `
 -EntitlementCount 12 `
 -AppDisplayName AppName `
 -NativeIdentity dr.arden.ogahn.d `
 -Attribute groups `
 -Value Upward mobility access `
 -EntitlementType entitlement
```

- Convert the resource to JSON
```powershell
$AccessItemAssociatedAccessItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

