# RoleMiningPotentialRoleExportResponseAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExportId** | **String** | ID used to reference this export | [optional] 
**Status** | [**RoleMiningPotentialRoleExportState**](RoleMiningPotentialRoleExportState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleExportResponseAllOf = Initialize-BetaRoleMiningPotentialRoleExportResponseAllOf  -ExportId 0c6cdb76-1227-4aaf-af21-192dbdfbfa04 `
 -Status null
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleExportResponseAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

