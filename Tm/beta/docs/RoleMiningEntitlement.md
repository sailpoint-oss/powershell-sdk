# RoleMiningEntitlement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntitlementRef** | [**RoleMiningEntitlementRef**](RoleMiningEntitlementRef.md) |  | [optional] 
**Name** | **String** | Name of the entitlement | [optional] 
**ApplicationName** | **String** | Application name of the entitlement | [optional] 
**IdentityCount** | **Int32** | The number of identities with this entitlement in a role. | [optional] 
**Popularity** | **Double** | The % popularity of this entitlement in a role. | [optional] 
**PopularityInOrg** | **Double** | The % popularity of this entitlement in the org. | [optional] 
**SourceId** | **String** | The ID of the source/application. | [optional] 
**ActivitySourceState** | **String** | The status of activity data for the source.   Value is complete or notComplete. | [optional] 
**SourceUsagePercent** | **Double** | The percentage of identities in the potential role that have usage of the source/application of this entitlement. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningEntitlement = Initialize-Tm.BetaRoleMiningEntitlement  -EntitlementRef null `
 -Name Add/modify/delete users `
 -ApplicationName AppName `
 -IdentityCount 45 `
 -Popularity 65.2 `
 -PopularityInOrg 35.8 `
 -SourceId 2c9180877620c1460176267f336a106f `
 -ActivitySourceState complete `
 -SourceUsagePercent 65.6
```

- Convert the resource to JSON
```powershell
$RoleMiningEntitlement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

