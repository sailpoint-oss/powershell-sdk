# ServiceDeskIntegrationDtoAllOfBeforeProvisioningRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object being referenced | [optional] 
**Id** | **String** | ID of the rule | [optional] 
**Name** | **String** | Human-readable display name of the rule | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationDtoAllOfBeforeProvisioningRule = Initialize-PSSailpointBetaServiceDeskIntegrationDtoAllOfBeforeProvisioningRule  -Type RULE `
 -Id 2c91808568c529c60168cca6f90c1333 `
 -Name Example Rule
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationDtoAllOfBeforeProvisioningRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

