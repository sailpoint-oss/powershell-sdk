# RoleMiningPotentialRoleApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the application | [optional] 
**Name** | **String** | Name of the application | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleApplication = Initialize-PSSailpoint.BetaRoleMiningPotentialRoleApplication  -Id {id&#x3D;2c9180877212632a017228d5a796292b} `
 -Name {name&#x3D;Slack}
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

