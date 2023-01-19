# Query
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **String** | The query using the Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL extended by SailPoint to support Nested queries. | [optional] 
**Fields** | **String[]** | The fields to which the specified query will be applied.  The available fields are dependent on the indice(s) being searched on.  Please refer to the response schema of this API for a list of available fields. | [optional] 
**TimeZone** | **String** | The time zone to be applied to any range query related to dates. | [optional] 
**InnerHit** | [**InnerHit**](InnerHit.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Query = Initialize-PSSailpointQuery  -Query name:a* `
 -Fields [name] `
 -TimeZone America/Chicago `
 -InnerHit null
```

- Convert the resource to JSON
```powershell
$Query | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

