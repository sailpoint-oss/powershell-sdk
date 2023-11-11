# RoleMiningSessionDraftRoleDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Draft role description | [optional] 
**IdentityIds** | **String[]** | The list of identities for this role mining session. | [optional] 
**EntitlementIds** | **String[]** | The list of entitlement ids for this role mining session. | [optional] 
**ExcludedEntitlements** | **String[]** | The list of excluded entitlement ids. | [optional] 
**Modified** | **System.DateTime** | Last modified date | [optional] 
**Name** | **String** | Name of the draft role | [optional] 
**Type** | [**RoleMiningRoleType**](RoleMiningRoleType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionDraftRoleDto = Initialize-BetaRoleMiningSessionDraftRoleDto  -Description Person who develops software `
 -IdentityIds [2c918090761a5aac0176215c46a62d58, 2c918090761a5aac01722015c46a62d42] `
 -EntitlementIds [2c91808a7624751a01762f19d665220d, 2c91808a7624751a01762f19d67c220e] `
 -ExcludedEntitlements [07a0b4e2, 13b4e2a0] `
 -Modified 2020-09-16T18:49:32.150Z `
 -Name Saved RM Session - 07/10 `
 -Type null
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionDraftRoleDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

