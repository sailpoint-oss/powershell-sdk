# SavedSearchDetailFilters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**FilterType**](FilterType.md) |  | [optional] 
**Range** | [**Range**](Range.md) |  | [optional] 
**Terms** | **String[]** | The terms to be filtered. | [optional] 
**Exclude** | **Boolean** | Indicates if the filter excludes results. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SavedSearchDetailFilters = Initialize-PSSailpoint.V2024SavedSearchDetailFilters  -Type null `
 -Range null `
 -Terms null `
 -Exclude false
```

- Convert the resource to JSON
```powershell
$SavedSearchDetailFilters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

