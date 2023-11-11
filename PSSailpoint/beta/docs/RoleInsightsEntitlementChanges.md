# RoleInsightsEntitlementChanges
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the entitlement | [optional] 
**Id** | **String** | Id of the entitlement | [optional] 
**Description** | **String** | Description for the entitlement | [optional] 
**Attribute** | **String** | Attribute for the entitlement | [optional] 
**Value** | **String** | Attribute value for the entitlement | [optional] 
**Source** | **String** | Source or the application for the entitlement | [optional] 
**Insight** | [**RoleInsightsInsight**](RoleInsightsInsight.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleInsightsEntitlementChanges = Initialize-BetaRoleInsightsEntitlementChanges  -Name null `
 -Id null `
 -Description null `
 -Attribute null `
 -Value null `
 -Source null `
 -Insight null
```

- Convert the resource to JSON
```powershell
$RoleInsightsEntitlementChanges | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

