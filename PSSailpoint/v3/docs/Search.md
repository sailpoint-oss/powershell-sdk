# Search
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Indices** | [**Index[]**](Index.md) | The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched. | [optional] 
**QueryType** | [**QueryType**](QueryType.md) |  | [optional] 
**QueryVersion** | **String** |  | [optional] 
**Query** | [**Query**](Query.md) |  | [optional] 
**QueryDsl** | [**SystemCollectionsHashtable**](.md) | The search query using the Elasticsearch [Query DSL](https://www.elastic.co/guide/en/elasticsearch/reference/7.10/query-dsl.html) syntax. | [optional] 
**TextQuery** | [**TextQuery**](TextQuery.md) |  | [optional] 
**TypeAheadQuery** | [**TypeAheadQuery**](TypeAheadQuery.md) |  | [optional] 
**IncludeNested** | **Boolean** | Indicates whether nested objects from returned search results should be included. | [optional] [default to $true]
**QueryResultFilter** | [**QueryResultFilter**](QueryResultFilter.md) |  | [optional] 
**AggregationType** | [**AggregationType**](AggregationType.md) |  | [optional] 
**AggregationsVersion** | **String** |  | [optional] 
**AggregationsDsl** | [**SystemCollectionsHashtable**](.md) | The aggregation search query using Elasticsearch [Aggregations](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/search-aggregations.html) syntax. | [optional] 
**Aggregations** | [**SearchAggregationSpecification**](SearchAggregationSpecification.md) |  | [optional] 
**Sort** | **String[]** | The fields to be used to sort the search results. Use + or - to specify the sort direction. | [optional] 
**SearchAfter** | **String[]** | Used to begin the search window at the values specified. This parameter consists of the last values of the sorted fields in the current record set. This is used to expand the Elasticsearch limit of 10K records by shifting the 10K window to begin at this value. It is recommended that you always include the ID of the object in addition to any other fields on this parameter in order to ensure you don&#39;t get duplicate results while paging. For example, when searching for identities, if you are sorting by displayName you will also want to include ID, for example [&quot;&quot;displayName&quot;&quot;, &quot;&quot;id&quot;&quot;].  If the last identity ID in the search result is 2c91808375d8e80a0175e1f88a575221 and the last displayName is &quot;&quot;John Doe&quot;&quot;, then using that displayName and ID will start a new search after this identity. The searchAfter value will look like [&quot;&quot;John Doe&quot;&quot;,&quot;&quot;2c91808375d8e80a0175e1f88a575221&quot;&quot;] | [optional] 
**Filters** | [**System.Collections.Hashtable**](ModelFilter.md) | The filters to be applied for each filtered field name. | [optional] 

## Examples

- Prepare the resource
```powershell
$Search = Initialize-Search  -Indices [identities] `
 -QueryType null `
 -QueryVersion null `
 -Query null `
 -QueryDsl {match&#x3D;{name&#x3D;john.doe}} `
 -TextQuery null `
 -TypeAheadQuery null `
 -IncludeNested true `
 -QueryResultFilter null `
 -AggregationType null `
 -AggregationsVersion null `
 -AggregationsDsl {} `
 -Aggregations null `
 -Sort [displayName, +id] `
 -SearchAfter [John Doe, 2c91808375d8e80a0175e1f88a575221] `
 -Filters {}
```

- Convert the resource to JSON
```powershell
$Search | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

