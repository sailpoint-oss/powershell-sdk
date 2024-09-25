# MultiHostIntegrationsManagementWorkgroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Management workgroup ID. | [optional] 
**Name** | **String** | Management workgroup&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsManagementWorkgroup = Initialize-PSSailpoint.BetaMultiHostIntegrationsManagementWorkgroup  -Type GOVERNANCE_GROUP `
 -Id 2c91808568c529c60168cca6f90c2222 `
 -Name My Management Workgroup
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsManagementWorkgroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

