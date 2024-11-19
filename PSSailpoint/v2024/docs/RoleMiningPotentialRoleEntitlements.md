# RoleMiningPotentialRoleEntitlements
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the entitlement | [optional] 
**Name** | **String** | Name of the entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleEntitlements = Initialize-PSSailpoint.V2024RoleMiningPotentialRoleEntitlements  -Id {id&#x3D;2c9180877212632a017228d5a796292c} `
 -Name {name&#x3D;LauncherTest2}
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleEntitlements | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

