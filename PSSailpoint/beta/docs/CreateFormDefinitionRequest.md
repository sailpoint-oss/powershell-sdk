# CreateFormDefinitionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description is the form definition description | [optional] 
**FormConditions** | [**FormCondition[]**](FormCondition.md) | FormConditions is the conditional logic that modify the form dynamically modify the form as the recipient is interacting out the form | [optional] 
**FormElements** | [**FormElement[]**](FormElement.md) | FormElements is a list of nested form elements | [optional] 
**FormInput** | [**FormDefinitionInput[]**](FormDefinitionInput.md) | FormInput is a list of form inputs that are required when creating a form-instance object | [optional] 
**Name** | **String** | Name is the form definition name | 
**Owner** | [**FormOwner**](FormOwner.md) |  | 
**UsedBy** | [**FormUsedBy[]**](FormUsedBy.md) | UsedBy is a list of objects where when any system uses a particular form it reaches out to the form service to record it is currently being used | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateFormDefinitionRequest = Initialize-BetaCreateFormDefinitionRequest  -Description My form description `
 -FormConditions null `
 -FormElements null `
 -FormInput null `
 -Name My form `
 -Owner null `
 -UsedBy null
```

- Convert the resource to JSON
```powershell
$CreateFormDefinitionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

