# SimIntegrationDetailsAllOfBeforeProvisioningRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Id** | **String** | ID of the rule | [optional] 
**Name** | **String** | Human-readable display name of the rule | [optional] 

## Examples

- Prepare the resource
```powershell
$SimIntegrationDetailsAllOfBeforeProvisioningRule = Initialize-Tm.BetaSimIntegrationDetailsAllOfBeforeProvisioningRule  -Type null `
 -Id 2c918085708c274401708c2a8a760001 `
 -Name Example Rule
```

- Convert the resource to JSON
```powershell
$SimIntegrationDetailsAllOfBeforeProvisioningRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

