# RoleMiningPotentialRoleExportResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MinEntitlementPopularity** | **Int32** | The minimum popularity among identities in the role which an entitlement must have to be included in the report | [optional] 
**IncludeCommonAccess** | **Boolean** | If false, do not include entitlements that are highly popular among the entire orginization | [optional] 
**ExportId** | **String** | ID used to reference this export | [optional] 
**Status** | [**RoleMiningPotentialRoleExportState**](RoleMiningPotentialRoleExportState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleExportResponse = Initialize-PSSailpoint.BetaRoleMiningPotentialRoleExportResponse  -MinEntitlementPopularity 0 `
 -IncludeCommonAccess true `
 -ExportId 0c6cdb76-1227-4aaf-af21-192dbdfbfa04 `
 -Status null
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleExportResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

