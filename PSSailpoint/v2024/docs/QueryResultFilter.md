# QueryResultFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Includes** | **String[]** | The list of field names to include in the result documents. | [optional] 
**Excludes** | **String[]** | The list of field names to exclude from the result documents. | [optional] 

## Examples

- Prepare the resource
```powershell
$QueryResultFilter = Initialize-PSSailpoint.V2024QueryResultFilter  -Includes [name, displayName] `
 -Excludes [stacktrace]
```

- Convert the resource to JSON
```powershell
$QueryResultFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

