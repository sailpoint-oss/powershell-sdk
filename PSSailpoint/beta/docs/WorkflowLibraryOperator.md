# WorkflowLibraryOperator
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Operator ID. | [optional] 
**Name** | **String** | Operator friendly name | [optional] 
**Type** | **String** | Operator type | [optional] 
**Description** | **String** | Description of the operator | [optional] 
**FormFields** | [**WorkflowLibraryFormFields[]**](WorkflowLibraryFormFields.md) | One or more inputs that the operator accepts | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowLibraryOperator = Initialize-BetaWorkflowLibraryOperator  -Id sp:compare-boolean `
 -Name Compare Boolean Values `
 -Type OPERATOR `
 -Description Compare two boolean values and decide what happens based on the result. `
 -FormFields [{description&#x3D;Enter the JSONPath to a value from the input to compare to Variable B., helpText&#x3D;, label&#x3D;Variable A, name&#x3D;variableA.$, required&#x3D;true, type&#x3D;text}, {helpText&#x3D;Select an operation., label&#x3D;Operation, name&#x3D;operator, options&#x3D;[{label&#x3D;Equals, value&#x3D;BooleanEquals}], required&#x3D;true, type&#x3D;select}, {description&#x3D;Enter the JSONPath to a value from the input to compare to Variable A., helpText&#x3D;, label&#x3D;Variable B, name&#x3D;variableB.$, required&#x3D;false, type&#x3D;text}, {description&#x3D;Enter True or False., helpText&#x3D;, label&#x3D;Variable B, name&#x3D;variableB, required&#x3D;false, type&#x3D;text}]
```

- Convert the resource to JSON
```powershell
$WorkflowLibraryOperator | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

