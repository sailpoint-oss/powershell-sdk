# BaseEntitlement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | The human readable name of the referenced object. | [optional] 
**Description** | **String** | A description of the entitlement | [optional] 
**Attribute** | **String** | The name of the entitlement attribute | [optional] 
**Value** | **String** | The value of the entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseEntitlement = Initialize-BaseEntitlement  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Description The admin privilege `
 -Attribute admin `
 -Value true
```

- Convert the resource to JSON
```powershell
$BaseEntitlement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

