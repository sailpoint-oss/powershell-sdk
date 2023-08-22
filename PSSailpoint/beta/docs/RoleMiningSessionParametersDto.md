# RoleMiningSessionParametersDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MinNumIdentitiesInPotentialRole** | **Int32** | Minimum number of identities in a potential role | [optional] 
**Name** | **String** | The session&#39;s saved name | [optional] 
**PruneThreshold** | **Int32** | The prune threshold to be used or null to calculate prescribedPruneThreshold | [optional] 
**Saved** | **Boolean** | The session&#39;s saved status | [optional] [default to $true]
**Scope** | [**RoleMiningSessionScope**](RoleMiningSessionScope.md) |  | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 
**State** | [**RoleMiningSessionStatus**](RoleMiningSessionStatus.md) |  | [optional] 
**ScopingMethod** | [**RoleMiningSessionScopingMethod**](RoleMiningSessionScopingMethod.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionParametersDto = Initialize-PSSailpointBetaRoleMiningSessionParametersDto  -MinNumIdentitiesInPotentialRole 20 `
 -Name Saved RM Session - 07/10 `
 -PruneThreshold 5 `
 -Saved true `
 -Scope null `
 -Type null `
 -State null `
 -ScopingMethod null
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionParametersDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

