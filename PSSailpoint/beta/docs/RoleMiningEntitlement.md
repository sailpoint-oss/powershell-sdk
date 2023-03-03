# RoleMiningEntitlement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntitlementRef** | [**RoleMiningEntitlementRef**](RoleMiningEntitlementRef.md) |  | [optional] 
**Name** | **String** | Name of the entitlement | [optional] 
**ApplicationName** | **String** | Application name of the entitlement | [optional] 
**IdentityCount** | **Int32** | The number of identities with this entitlement in a role. | [optional] 
**Popularity** | **Int32** | The % popularity of this entitlement in a role. | [optional] 
**PopularityInOrg** | **Int32** | TThe % popularity of this entitlement in the org. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningEntitlement = Initialize-PSSailpointBetaRoleMiningEntitlement  -EntitlementRef null `
 -Name null `
 -ApplicationName null `
 -IdentityCount 45 `
 -Popularity 65 `
 -PopularityInOrg 35
```

- Convert the resource to JSON
```powershell
$RoleMiningEntitlement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

