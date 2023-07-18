# FormDefinitionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Created is the date the form definition was created | [optional] 
**Description** | **String** | Description is the form definition description | [optional] 
**FormConditions** | [**FormCondition[]**](FormCondition.md) | FormConditions is the conditional logic that modify the form dynamically modify the form as the recipient is interacting out the form | [optional] 
**FormElements** | [**FormElement[]**](FormElement.md) | FormElements is a list of nested form elements | [optional] 
**FormInput** | [**FormDefinitionInput[]**](FormDefinitionInput.md) | FormInput is a list of form inputs that are required when creating a form-instance object | [optional] 
**Id** | **String** | FormDefinitionID is a unique guid identifying this form definition | [optional] 
**Modified** | **System.DateTime** | Modified is the last date the form definition was modified | [optional] 
**Name** | **String** | Name is the form definition name | [optional] 
**Owner** | [**FormOwner**](FormOwner.md) |  | [optional] 
**UsedBy** | [**FormUsedBy[]**](FormUsedBy.md) | UsedBy is a list of objects where when any system uses a particular form it reaches out to the form service to record it is currently being used | [optional] 

## Examples

- Prepare the resource
```powershell
$FormDefinitionResponse = Initialize-PSSailpointBetaFormDefinitionResponse  -Created 2023-07-12T20:14:57.744860Z `
 -Description My form description `
 -FormConditions null `
 -FormElements null `
 -FormInput null `
 -Id 00000000-0000-0000-0000-000000000000 `
 -Modified 2023-07-12T20:14:57.744860Z `
 -Name My form `
 -Owner null `
 -UsedBy null
```

- Convert the resource to JSON
```powershell
$FormDefinitionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

