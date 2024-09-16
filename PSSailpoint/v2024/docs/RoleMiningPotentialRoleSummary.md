# RoleMiningPotentialRoleSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the potential role | [optional] 
**Name** | **String** | Name of the potential role | [optional] 
**PotentialRoleRef** | [**RoleMiningPotentialRoleRef**](RoleMiningPotentialRoleRef.md) |  | [optional] 
**IdentityCount** | **Int32** | The number of identities in a potential role. | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements in a potential role. | [optional] 
**IdentityGroupStatus** | **String** | The status for this identity group which can be &quot;&quot;REQUESTED&quot;&quot; or &quot;&quot;OBTAINED&quot;&quot; | [optional] 
**ProvisionState** | [**RoleMiningPotentialRoleProvisionState**](RoleMiningPotentialRoleProvisionState.md) |  | [optional] 
**RoleId** | **String** | ID of the provisioned role in IIQ or IDN.  Null if this potential role has not been provisioned. | [optional] 
**Density** | **Int32** | The density metric (0-100) of this potential role. Higher density values indicate higher similarity amongst the identities. | [optional] 
**Freshness** | **Int32** | The freshness metric (0-100) of this potential role. Higher freshness values indicate this potential role is more distinctive compared to existing roles. | [optional] 
**Quality** | **Int32** | The quality metric (0-100) of this potential role. Higher quality values indicate this potential role has high density and freshness. | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 
**CreatedBy** | [**RoleMiningPotentialRoleSummaryCreatedBy**](RoleMiningPotentialRoleSummaryCreatedBy.md) |  | [optional] 
**CreatedDate** | **System.DateTime** | The date-time when this potential role was created. | [optional] 
**Saved** | **Boolean** | The potential role&#39;s saved status | [optional] [default to $false]
**Description** | **String** | Description of the potential role | [optional] 
**Session** | [**RoleMiningSessionParametersDto**](RoleMiningSessionParametersDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleSummary = Initialize-PSSailpoint.V2024RoleMiningPotentialRoleSummary  -Id e0cc5d7d-bf7f-4f81-b2af-8885b09d9923 `
 -Name Potential Role - e0cc5d `
 -PotentialRoleRef null `
 -IdentityCount 25 `
 -EntitlementCount 15 `
 -IdentityGroupStatus OBTAINED `
 -ProvisionState null `
 -RoleId 2a4be6fbcf3c4e66b95a0c15ffd591 `
 -Density 90 `
 -Freshness 70 `
 -Quality 80 `
 -Type null `
 -CreatedBy null `
 -CreatedDate null `
 -Saved true `
 -Description null `
 -Session null
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

