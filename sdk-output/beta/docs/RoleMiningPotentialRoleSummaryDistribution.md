# RoleMiningPotentialRoleSummaryDistribution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityDistribution** | [**RoleMiningIdentityDistribution[]**](RoleMiningIdentityDistribution.md) | Identity attribute distribution | [optional] 
**PotentialRoleRef** | [**RoleMiningPotentialRoleRef**](RoleMiningPotentialRoleRef.md) |  | [optional] 
**IdentityCount** | **Int32** | The number of identities in a potential role. | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements in a potential role. | [optional] 
**IdentityGroupStatus** | **String** | The status for this identity group which can be &quot;&quot;REQUESTED&quot;&quot; or &quot;&quot;OBTAINED&quot;&quot; | [optional] 
**ProvisionState** | [**RoleMiningPotentialRoleProvisionState**](RoleMiningPotentialRoleProvisionState.md) |  | [optional] 
**RoleId** | **String** | ID of the provisioned role in IIQ or IDN.  Null if this potential role has not been provisioned. | [optional] 
**Density** | **Int32** | The density metric (0-100) of this potential role. Higher density values indicate higher similarity amongst the identities. | [optional] 
**Freshness** | **Int32** | The freshness metric (0-100) of this potential role. Higher freshness values indicate this potential role is more distinctive compared to existing roles. | [optional] 
**Quality** | **Int32** | The quality metric (0-100) of this potential role. Higher quality values indicate this potential role has high density and freshness. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleSummaryDistribution = Initialize-PSSailpointBetaRoleMiningPotentialRoleSummaryDistribution  -IdentityDistribution null `
 -PotentialRoleRef null `
 -IdentityCount 25 `
 -EntitlementCount 15 `
 -IdentityGroupStatus OBTAINED `
 -ProvisionState null `
 -RoleId 2a4be6fbcf3c4e66b95a0c15ffd591 `
 -Density 90 `
 -Freshness 70 `
 -Quality 80
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleSummaryDistribution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

