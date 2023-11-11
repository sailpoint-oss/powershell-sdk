# RoleMiningSessionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**RoleMiningSessionScope**](RoleMiningSessionScope.md) |  | [optional] 
**PruneThreshold** | **Int32** | The prune threshold to be used or null to calculate prescribedPruneThreshold | [optional] 
**PrescribedPruneThreshold** | **Int32** | The calculated prescribedPruneThreshold | [optional] 
**MinNumIdentitiesInPotentialRole** | **Int32** | Minimum number of identities in a potential role | [optional] 
**PotentialRoleCount** | **Int32** | Number of potential roles | [optional] 
**PotentialRolesReadyCount** | **Int32** | Number of potential roles ready | [optional] 
**Status** | [**RoleMiningSessionStatus**](RoleMiningSessionStatus.md) |  | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 
**EmailRecipientId** | **String** | The id of the user who will receive an email about the role mining session | [optional] 
**CreatedBy** | [**RoleMiningSessionDtoCreatedBy**](RoleMiningSessionDtoCreatedBy.md) |  | [optional] 
**IdentityCount** | **Int32** | Number of identities in the population which meet the search criteria or identity list provided | [optional] 
**Saved** | **Boolean** | The session&#39;s saved status | [optional] [default to $false]
**Name** | **String** | The session&#39;s saved name | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionDto = Initialize-BetaRoleMiningSessionDto  -Scope null `
 -PruneThreshold 5 `
 -PrescribedPruneThreshold 10 `
 -MinNumIdentitiesInPotentialRole 20 `
 -PotentialRoleCount 0 `
 -PotentialRolesReadyCount 0 `
 -Status null `
 -Type null `
 -EmailRecipientId 2c918090761a5aac0176215c46a62d58 `
 -CreatedBy null `
 -IdentityCount 0 `
 -Saved true `
 -Name Saved RM Session - 07/10
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

