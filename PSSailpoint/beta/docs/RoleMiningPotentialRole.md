# RoleMiningPotentialRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedBy** | [**EntityCreatedByDTO**](EntityCreatedByDTO.md) |  | [optional] 
**Density** | **Int32** | The density of a potential role. | [optional] 
**Description** | **String** | The description of a potential role. | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements in a potential role. | [optional] 
**ExcludedEntitlements** | **String[]** | The list of entitlement ids to be excluded. | [optional] 
**Freshness** | **Int32** | The freshness of a potential role. | [optional] 
**IdentityCount** | **Int32** | The number of identities in a potential role. | [optional] 
**IdentityDistribution** | [**RoleMiningIdentityDistribution[]**](RoleMiningIdentityDistribution.md) | Identity attribute distribution. | [optional] 
**IdentityIds** | **String[]** | The list of ids in a potential role. | [optional] 
**Name** | **String** | Name of the potential role. | [optional] 
**ProvisionState** | [**RoleMiningPotentialRoleProvisionState**](RoleMiningPotentialRoleProvisionState.md) |  | [optional] 
**Quality** | **Int32** | The quality of a potential role. | [optional] 
**RoleId** | **String** | The roleId of a potential role. | [optional] 
**Saved** | **Boolean** | The potential role&#39;s saved status. | [optional] 
**Session** | [**RoleMiningSessionParametersDto**](RoleMiningSessionParametersDto.md) |  | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRole = Initialize-BetaRoleMiningPotentialRole  -CreatedBy null `
 -Density 75 `
 -Description Potential Role for Accounting dept `
 -EntitlementCount 25 `
 -ExcludedEntitlements [07a0b4e2, 13b4e2a0] `
 -Freshness 75 `
 -IdentityCount 25 `
 -IdentityDistribution null `
 -IdentityIds [07a0b4e2, 13b4e2a0] `
 -Name Saved Potential Role - 07/10 `
 -ProvisionState null `
 -Quality 100 `
 -RoleId 07a0b4e2-7a76-44fa-bd0b-c64654b66519 `
 -Saved true `
 -Session null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

