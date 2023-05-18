# ExceptionList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exceptions** | [**Exception[]**](Exception.md) | List of exceptions. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExceptionList = Initialize-PSSailpointExceptionList  -Exceptions null
```

- Convert the resource to JSON
```powershell
$ExceptionList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

