# SavedSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The saved search ID.  | [optional] 
**Owner** | [**TypedReference**](TypedReference.md) |  | [optional] 
**Name** | **String** | The name of the saved search.  | [optional] 
**Description** | **String** | The description of the saved search.  | [optional] 
**Public** | **Boolean** | Indicates if the saved search is public.  | [optional] [default to $false]
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Indices** | [**Index[]**](Index.md) | The names of the Elasticsearch indices in which to search.  | 
**Columns** | [**System.Collections.Hashtable**](Array.md) | The columns to be returned (specifies the order in which they will be presented) for each document type.  The currently supported document types are: _accessprofile_, _accountactivity_, _account_, _aggregation_, _entitlement_, _event_, _identity_, and _role_.  | [optional] 
**Query** | **String** | The search query using Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL.  | 
**Fields** | **String[]** | The fields to be searched against in a multi-field query.  | [optional] 
**Sort** | **String[]** | The fields to be used to sort the search results.  | [optional] 
**Filters** | [**SavedSearchDetailFilters**](SavedSearchDetailFilters.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SavedSearch = Initialize-SavedSearch  -Id 0de46054-fe90-434a-b84e-c6b3359d0c64 `
 -Owner null `
 -Name Disabled accounts `
 -Description Disabled accounts `
 -Public false `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Indices [identities] `
 -Columns {identity&#x3D;[{field&#x3D;displayName, header&#x3D;Display Name}, {field&#x3D;e-mail, header&#x3D;Work Email}]} `
 -Query @accounts(disabled:true) `
 -Fields [disabled] `
 -Sort [displayName] `
 -Filters null
```

- Convert the resource to JSON
```powershell
$SavedSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

