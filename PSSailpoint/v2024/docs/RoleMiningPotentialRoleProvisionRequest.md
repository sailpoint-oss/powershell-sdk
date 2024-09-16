# RoleMiningPotentialRoleProvisionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleName** | **String** | Name of the new role being created | [optional] 
**RoleDescription** | **String** | Short description of the new role being created | [optional] 
**OwnerId** | **String** | ID of the identity that will own this role | [optional] 
**IncludeIdentities** | **Boolean** | When true, create access requests for the identities associated with the potential role | [optional] [default to $false]
**DirectlyAssignedEntitlements** | **Boolean** | When true, assign entitlements directly to the role; otherwise, create access profiles containing the entitlements | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleProvisionRequest = Initialize-PSSailpoint.V2024RoleMiningPotentialRoleProvisionRequest  -RoleName Finance - Accounting `
 -RoleDescription General access for accounting department `
 -OwnerId 2b568c65bc3c4c57a43bd97e3a8e41 `
 -IncludeIdentities true `
 -DirectlyAssignedEntitlements false
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleProvisionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

