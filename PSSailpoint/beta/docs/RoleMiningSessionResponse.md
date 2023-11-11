# RoleMiningSessionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**RoleMiningSessionScope**](RoleMiningSessionScope.md) |  | [optional] 
**MinNumIdentitiesInPotentialRole** | **Int32** | Minimum number of identities in a potential role | [optional] 
**PrescribedPruneThreshold** | **Int32** | The computed (or prescribed) prune threshold for this session | [optional] 
**PruneThreshold** | **Int32** | The prune threshold to be used for this role mining session | [optional] 
**PotentialRoleCount** | **Int32** | The number of potential roles | [optional] 
**PotentialRolesReadyCount** | **Int32** | The number of potential roles which have completed processing | [optional] 
**Status** | [**RoleMiningSessionStatus**](RoleMiningSessionStatus.md) |  | [optional] 
**Id** | **String** | Session Id for this role mining session | [optional] 
**CreatedDate** | **System.DateTime** | The date-time when this role mining session was created. | [optional] 
**ModifiedDate** | **System.DateTime** | The date-time when this role mining session was completed. | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionResponse = Initialize-BetaRoleMiningSessionResponse  -Scope null `
 -MinNumIdentitiesInPotentialRole 20 `
 -PrescribedPruneThreshold 83 `
 -PruneThreshold 70 `
 -PotentialRoleCount 8 `
 -PotentialRolesReadyCount 4 `
 -Status null `
 -Id 8c190e67-87aa-4ed9-a90b-d9d5344523fb `
 -CreatedDate null `
 -ModifiedDate null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

