# AccessItemEntitlementResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessType** | **String** | the access item type. entitlement in this case | [optional] 
**Id** | **String** | the access item id | [optional] 
**Attribute** | **String** | the entitlement attribute | [optional] 
**Value** | **String** | the associated value | [optional] 
**EntitlementType** | **String** | the type of entitlement | [optional] 
**SourceName** | **String** | the name of the source | [optional] 
**SourceId** | **String** | the id of the source | [optional] 
**Description** | **String** | the description for the entitlment | [optional] 
**DisplayName** | **String** | the display name of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemEntitlementResponse = Initialize-BetaAccessItemEntitlementResponse  -AccessType entitlement `
 -Id 2c918087763e69d901763e72e97f006f `
 -Attribute groups `
 -Value Upward mobility access `
 -EntitlementType entitlement `
 -SourceName DataScienceDataset `
 -SourceId 2793o32dwd `
 -Description Entitlement - Workday/Citizenship access `
 -DisplayName Dr. Arden Rogahn MD
```

- Convert the resource to JSON
```powershell
$AccessItemEntitlementResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

