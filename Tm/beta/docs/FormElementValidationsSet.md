# FormElementValidationsSet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ValidationType** | **String** | The type of data validation that you wish to enforce, e.g., a required field, a minimum length, etc. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormElementValidationsSet = Initialize-Tm.BetaFormElementValidationsSet  -ValidationType REQUIRED
```

- Convert the resource to JSON
```powershell
$FormElementValidationsSet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

