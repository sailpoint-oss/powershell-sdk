# RoleMiningSessionParametersDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the role mining session | [optional] 
**Name** | **String** | The session&#39;s saved name | [optional] 
**MinNumIdentitiesInPotentialRole** | **Int32** | Minimum number of identities in a potential role | [optional] 
**PruneThreshold** | **Int32** | The prune threshold to be used or null to calculate prescribedPruneThreshold | [optional] 
**Saved** | **Boolean** | The session&#39;s saved status | [optional] [default to $true]
**Scope** | [**RoleMiningSessionScope**](RoleMiningSessionScope.md) |  | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 
**State** | [**RoleMiningSessionState**](RoleMiningSessionState.md) |  | [optional] 
**ScopingMethod** | [**RoleMiningSessionScopingMethod**](RoleMiningSessionScopingMethod.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionParametersDto = Initialize-BetaRoleMiningSessionParametersDto  -Id 9f36f5e5-1e81-4eca-b087-548959d91c71 `
 -Name Saved RM Session - 07/10 `
 -MinNumIdentitiesInPotentialRole 20 `
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

