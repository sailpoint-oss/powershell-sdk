# ContextAttributeDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the attribute | [optional] 
**Value** | [**ContextAttributeDtoValue**](ContextAttributeDtoValue.md) |  | [optional] 
**Derived** | **Boolean** | True if the attribute was derived. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ContextAttributeDto = Initialize-Tm.BetaContextAttributeDto  -Attribute location `
 -Value null `
 -Derived false
```

- Convert the resource to JSON
```powershell
$ContextAttributeDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

