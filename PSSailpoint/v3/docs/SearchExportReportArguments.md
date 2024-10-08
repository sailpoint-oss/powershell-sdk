# SearchExportReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Indices** | [**Index[]**](Index.md) | The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched. | [optional] 
**Query** | **String** | The query using the Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL extended by SailPoint to support Nested queries. | 
**Columns** | **String** | Comma separated string consisting of technical attribute names of fields to include in report.  Use &#x60;access.spread&#x60;, &#x60;apps.spread&#x60;, &#x60;accounts.spread&#x60; to include respective identity access details.  Use &#x60;accessProfiles.spread&#x60; to unclude access profile details.  Use &#x60;entitlements.spread&#x60; to include entitlement details.  | [optional] 
**Sort** | **String[]** | The fields to be used to sort the search results. Use + or - to specify the sort direction. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchExportReportArguments = Initialize-PSSailpoint.V3SearchExportReportArguments  -Indices [entitlements] `
 -Query name:a* `
 -Columns displayName,firstName,lastName,email,created,attributes.cloudLifecycleState `
 -Sort [displayName, +id]
```

- Convert the resource to JSON
```powershell
$SearchExportReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

