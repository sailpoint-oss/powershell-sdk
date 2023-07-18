# FormDefinitionInput
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description is the description for this form input value | [optional] 
**Id** | **String** | ID is a unique identifier | [optional] 
**Label** | **String** | Label is the name for this form input value | [optional] 
**Type** | **String** | Type is a FormDefinitionInputType value STRING FormDefinitionInputTypeString | [optional] 

## Examples

- Prepare the resource
```powershell
$FormDefinitionInput = Initialize-PSSailpointBetaFormDefinitionInput  -Description A single dynamic scalar value (i.e. number, string, date, etc.) that can be passed into the form for use in conditional logic `
 -Id 00000000-0000-0000-0000-000000000000 `
 -Label input1 `
 -Type STRING
```

- Convert the resource to JSON
```powershell
$FormDefinitionInput | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

