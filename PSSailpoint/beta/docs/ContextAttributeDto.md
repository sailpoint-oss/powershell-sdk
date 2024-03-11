# ContextAttributeDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the attribute | [optional] 
**Value** | [**ContextAttributeDtoValue**](ContextAttributeDtoValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContextAttributeDto = Initialize-PSSailpointBetaContextAttributeDto  -Attribute location `
 -Value null
```

- Convert the resource to JSON
```powershell
$ContextAttributeDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

