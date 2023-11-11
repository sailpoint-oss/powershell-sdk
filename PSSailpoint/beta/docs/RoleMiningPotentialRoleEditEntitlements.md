# RoleMiningPotentialRoleEditEntitlements
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **String[]** | The list of entitlement ids to be edited | [optional] 
**Exclude** | **Boolean** | If true, add ids to be exclusion list. If false, remove ids from the exclusion list. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleEditEntitlements = Initialize-BetaRoleMiningPotentialRoleEditEntitlements  -Ids null `
 -Exclude null
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleEditEntitlements | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

