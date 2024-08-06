# ExpressionChildrenInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | **String** | Operator for the expression | [optional] 
**Attribute** | **String** | Name for the attribute | [optional] 
**Value** | [**Value**](Value.md) |  | [optional] 
**Children** | **String** | There cannot be anymore nested children. This will always be null. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExpressionChildrenInner = Initialize-PSSailpointV2024ExpressionChildrenInner  -Operator EQUALS `
 -Attribute location `
 -Value null `
 -Children null
```

- Convert the resource to JSON
```powershell
$ExpressionChildrenInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

