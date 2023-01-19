# RoleMiningPotentialRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreateDate** | **String[]** | The creation date for a potential role | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements in a potential role. | [optional] 
**ExcludedEntitlements** | **String[]** | The list of entitlement ids to be excluded. | [optional] 
**Id** | **String** | Id of the potential role | [optional] 
**IdentityCount** | **Int32** | The number of identities in a potential role. | [optional] 
**IdentityDistribution** | [**RoleMiningIdentityDistribution[]**](RoleMiningIdentityDistribution.md) | Identity attribute distribution | [optional] 
**IdentityIds** | **String[]** | The list of ids in a potential role. | [optional] 
**ModifiedDate** | **String[]** | The modified date for a potential role | [optional] 
**Name** | **String** | Name of the potential role | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRole = Initialize-PSSailpointBetaRoleMiningPotentialRole  -CreateDate null `
 -EntitlementCount 25 `
 -ExcludedEntitlements null `
 -Id null `
 -IdentityCount 25 `
 -IdentityDistribution null `
 -IdentityIds null `
 -ModifiedDate null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

