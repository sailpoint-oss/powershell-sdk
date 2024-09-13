# ConfigType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Priority** | **Int32** |  | [optional] 
**InternalName** | [**ConfigTypeEnumCamel**](ConfigTypeEnumCamel.md) |  | [optional] 
**InternalNameCamel** | [**ConfigTypeEnum**](ConfigTypeEnum.md) |  | [optional] 
**DisplayName** | **String** | Human readable display name of the type to be shown on UI | [optional] 
**Description** | **String** | Description of the type of work to be reassigned, displayed by the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigType = Initialize-PSSailpoint.BetaConfigType  -Priority 1 `
 -InternalName null `
 -InternalNameCamel null `
 -DisplayName Access Requests `
 -Description Reassign Access Request Work Items for an identity
```

- Convert the resource to JSON
```powershell
$ConfigType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

