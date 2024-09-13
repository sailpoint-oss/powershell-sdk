# SearchExportReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Indices** | [**Index[]**](Index.md) | The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched. | [optional] 
**Filters** | [**System.Collections.Hashtable**](ModelFilter.md) | The filters to be applied for each filtered field name. | [optional] 
**Query** | [**Query**](Query.md) |  | 
**IncludeNested** | **Boolean** | Indicates whether nested objects from returned search results should be included. | [optional] [default to $true]
**Sort** | **String[]** | The fields to be used to sort the search results. Use + or - to specify the sort direction. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchExportReportArguments = Initialize-PSSailpoint.V3SearchExportReportArguments  -Indices [entitlements] `
 -Filters {source.id&#x3D;{type&#x3D;TERMS, terms&#x3D;[2c9180897termsId780bd2920576]}, source.name.exact&#x3D;{type&#x3D;TERMS, terms&#x3D;[IdentityNow], exclude&#x3D;true}} `
 -Query null `
 -IncludeNested true `
 -Sort [displayName, +id]
```

- Convert the resource to JSON
```powershell
$SearchExportReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

