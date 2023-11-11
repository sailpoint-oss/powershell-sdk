# RoleMiningPotentialRoleProvisionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleName** | **String** | Name of the new role being created | [optional] 
**RoleDescription** | **String** | Short description of the new role being created | [optional] 
**OwnerId** | **String** | ID of the identity that will own this role | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleProvisionRequest = Initialize-BetaRoleMiningPotentialRoleProvisionRequest  -RoleName Finance - Accounting `
 -RoleDescription General access for accounting department `
 -OwnerId 2b568c65bc3c4c57a43bd97e3a8e41
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleProvisionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

