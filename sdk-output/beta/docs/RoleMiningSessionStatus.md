# RoleMiningSessionStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** | The role mining session status. Can be one of these states - CREATED|UPDATED|IDENTITIES_OBTAINED|PRUNE_THRESHOLD_OBTAINED|POTENTIAL_ROLES_PROCESSING|POTENTIAL_ROLES_CREATED | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionStatus = Initialize-PSSailpointBetaRoleMiningSessionStatus  -State CREATED
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

