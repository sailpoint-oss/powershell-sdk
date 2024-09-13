# RoleIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the Identity | [optional] 
**AliasName** | **String** | The alias / username of the Identity | [optional] 
**Name** | **String** | The human-readable display name of the Identity | [optional] 
**Email** | **String** | Email address of the Identity | [optional] 
**RoleAssignmentSource** | [**RoleAssignmentSourceType**](RoleAssignmentSourceType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleIdentity = Initialize-PSSailpoint.BetaRoleIdentity  -Id 2c9180a46faadee4016fb4e018c20639 `
 -AliasName t.edison `
 -Name Thomas Edison `
 -Email t.edison@identitynow.com `
 -RoleAssignmentSource null
```

- Convert the resource to JSON
```powershell
$RoleIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

