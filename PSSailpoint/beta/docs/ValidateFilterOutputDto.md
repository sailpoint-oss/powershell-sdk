# ValidateFilterOutputDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsValid** | **Boolean** | True if specified filter expression is valid against the input, false otherwise. | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidateFilterOutputDto = Initialize-PSSailpointBetaValidateFilterOutputDto  -IsValid null
```

- Convert the resource to JSON
```powershell
$ValidateFilterOutputDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

