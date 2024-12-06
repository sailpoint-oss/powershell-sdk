# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SearchApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Search-V2024Aggregate**](V2024SearchApi.md#Search-V2024Aggregate) | **POST** /search/aggregate | Perform a Search Query Aggregation
[**Search-V2024Count**](V2024SearchApi.md#Search-V2024Count) | **POST** /search/count | Count Documents Satisfying a Query
[**Search-V2024Get**](V2024SearchApi.md#Search-V2024Get) | **GET** /search/{index}/{id} | Get a Document by ID
[**Search-V2024Post**](V2024SearchApi.md#Search-V2024Post) | **POST** /search | Perform Search


<a id="Search-V2024Aggregate"></a>
# **Search-V2024Aggregate**
> AggregationResult Search-V2024Aggregate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Perform a Search Query Aggregation

Performs a search query aggregation and returns the aggregation result. By default, you can page a maximum of 10,000 search result records.  To page past 10,000 records, you can use searchAfter paging.  Refer to [Paginating Search Queries](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-search-queries) for more information about how to implement searchAfter paging. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InnerHit = Initialize-InnerHit -Query "source.name:\"Active Directory\"" -Type "access"
$Query = Initialize-Query -Query "name:a*" -Fields "[firstName,lastName,email]" -TimeZone "America/Chicago" -InnerHit $InnerHit

$TextQuery = Initialize-TextQuery -Terms "MyTerms" -Fields "MyFields" -MatchAny $false -Contains $true
$TypeAheadQuery = Initialize-TypeAheadQuery -Query "Work" -Field "source.name" -NestedType "access" -MaxExpansions 10 -Size 100 -Sort "asc" -SortByValue $true
$QueryResultFilter = Initialize-QueryResultFilter -Includes "MyIncludes" -Excludes "MyExcludes"

$NestedAggregation = Initialize-NestedAggregation -Name "id" -Type "access"
$MetricAggregation = Initialize-MetricAggregation -Name "Access Name Count" -Type "COUNT" -Field "@access.name"
$FilterAggregation = Initialize-FilterAggregation -Name "Entitlements" -Type "TERM" -Field "access.type" -Value "ENTITLEMENT"
$BucketAggregation = Initialize-BucketAggregation -Name "Identity Locations" -Type "TERMS" -Field "attributes.city" -Size 100 -MinDocCount 2

$Aggregations = Initialize-Aggregations -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation

$SubSearchAggregationSpecification = Initialize-SubSearchAggregationSpecification -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation -SubAggregation $Aggregations

$SearchAggregationSpecification = Initialize-SearchAggregationSpecification -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation -SubAggregation $SubSearchAggregationSpecification

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$ModelFilter = Initialize-ModelFilter -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$Search = Initialize-Search -Indices "accessprofiles" -QueryType "DSL" -QueryVersion $String -Query $Query -QueryDsl  -TextQuery $TextQuery -TypeAheadQuery $TypeAheadQuery -IncludeNested $true -QueryResultFilter $QueryResultFilter -AggregationType "DSL" -AggregationsVersion $String -AggregationsDsl  -Aggregations $SearchAggregationSpecification -Sort "MySort" -SearchAfter "MySearchAfter" -Filters @{ key_example = $ModelFilter } # Search | 
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Perform a Search Query Aggregation
try {
    $Result = Search-V2024Aggregate -Search $Search -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Search-V2024Aggregate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Search** | [**Search**](Search.md)|  | 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**AggregationResult**](AggregationResult.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024Count"></a>
# **Search-V2024Count**
> void Search-V2024Count<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <PSCustomObject><br>

Count Documents Satisfying a Query

Performs a search with a provided query and returns the count of results in the X-Total-Count header.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InnerHit = Initialize-InnerHit -Query "source.name:\"Active Directory\"" -Type "access"
$Query = Initialize-Query -Query "name:a*" -Fields "[firstName,lastName,email]" -TimeZone "America/Chicago" -InnerHit $InnerHit

$TextQuery = Initialize-TextQuery -Terms "MyTerms" -Fields "MyFields" -MatchAny $false -Contains $true
$TypeAheadQuery = Initialize-TypeAheadQuery -Query "Work" -Field "source.name" -NestedType "access" -MaxExpansions 10 -Size 100 -Sort "asc" -SortByValue $true
$QueryResultFilter = Initialize-QueryResultFilter -Includes "MyIncludes" -Excludes "MyExcludes"

$NestedAggregation = Initialize-NestedAggregation -Name "id" -Type "access"
$MetricAggregation = Initialize-MetricAggregation -Name "Access Name Count" -Type "COUNT" -Field "@access.name"
$FilterAggregation = Initialize-FilterAggregation -Name "Entitlements" -Type "TERM" -Field "access.type" -Value "ENTITLEMENT"
$BucketAggregation = Initialize-BucketAggregation -Name "Identity Locations" -Type "TERMS" -Field "attributes.city" -Size 100 -MinDocCount 2

$Aggregations = Initialize-Aggregations -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation

$SubSearchAggregationSpecification = Initialize-SubSearchAggregationSpecification -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation -SubAggregation $Aggregations

$SearchAggregationSpecification = Initialize-SearchAggregationSpecification -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation -SubAggregation $SubSearchAggregationSpecification

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$ModelFilter = Initialize-ModelFilter -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$Search = Initialize-Search -Indices "accessprofiles" -QueryType "DSL" -QueryVersion $String -Query $Query -QueryDsl  -TextQuery $TextQuery -TypeAheadQuery $TypeAheadQuery -IncludeNested $true -QueryResultFilter $QueryResultFilter -AggregationType "DSL" -AggregationsVersion $String -AggregationsDsl  -Aggregations $SearchAggregationSpecification -Sort "MySort" -SearchAfter "MySearchAfter" -Filters @{ key_example = $ModelFilter } # Search | 

# Count Documents Satisfying a Query
try {
    $Result = Search-V2024Count -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Search-V2024Count: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Search** | [**Search**](Search.md)|  | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024Get"></a>
# **Search-V2024Get**
> SystemCollectionsHashtable Search-V2024Get<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Index] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Document by ID

Fetches a single document from the specified index, using the specified document ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Index = "accounts" # String | The index from which to fetch the specified document.  The currently supported index names are: *accessprofiles*, *accountactivities*, *entitlements*, *events*, *identities*, and *roles*. 
$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Get a Document by ID
try {
    $Result = Search-V2024Get -Index $Index -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Search-V2024Get: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Index** | **String**| The index from which to fetch the specified document.  The currently supported index names are: *accessprofiles*, *accountactivities*, *entitlements*, *events*, *identities*, and *roles*.  | 
 **Id** | **String**| ID of the requested document. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024Post"></a>
# **Search-V2024Post**
> SystemCollectionsHashtable[] Search-V2024Post<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Perform Search

Perform a search with the provided query and return a matching result collection. To page past 10,000 records, you can use `searchAfter` paging.  Refer to [Paginating Search Queries](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-search-queries) for more information about how to implement `searchAfter` paging. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InnerHit = Initialize-InnerHit -Query "source.name:\"Active Directory\"" -Type "access"
$Query = Initialize-Query -Query "name:a*" -Fields "[firstName,lastName,email]" -TimeZone "America/Chicago" -InnerHit $InnerHit

$TextQuery = Initialize-TextQuery -Terms "MyTerms" -Fields "MyFields" -MatchAny $false -Contains $true
$TypeAheadQuery = Initialize-TypeAheadQuery -Query "Work" -Field "source.name" -NestedType "access" -MaxExpansions 10 -Size 100 -Sort "asc" -SortByValue $true
$QueryResultFilter = Initialize-QueryResultFilter -Includes "MyIncludes" -Excludes "MyExcludes"

$NestedAggregation = Initialize-NestedAggregation -Name "id" -Type "access"
$MetricAggregation = Initialize-MetricAggregation -Name "Access Name Count" -Type "COUNT" -Field "@access.name"
$FilterAggregation = Initialize-FilterAggregation -Name "Entitlements" -Type "TERM" -Field "access.type" -Value "ENTITLEMENT"
$BucketAggregation = Initialize-BucketAggregation -Name "Identity Locations" -Type "TERMS" -Field "attributes.city" -Size 100 -MinDocCount 2

$Aggregations = Initialize-Aggregations -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation

$SubSearchAggregationSpecification = Initialize-SubSearchAggregationSpecification -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation -SubAggregation $Aggregations

$SearchAggregationSpecification = Initialize-SearchAggregationSpecification -Nested $NestedAggregation -Metric $MetricAggregation -VarFilter $FilterAggregation -Bucket $BucketAggregation -SubAggregation $SubSearchAggregationSpecification

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$ModelFilter = Initialize-ModelFilter -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$Search = Initialize-Search -Indices "accessprofiles" -QueryType "DSL" -QueryVersion $String -Query $Query -QueryDsl  -TextQuery $TextQuery -TypeAheadQuery $TypeAheadQuery -IncludeNested $true -QueryResultFilter $QueryResultFilter -AggregationType "DSL" -AggregationsVersion $String -AggregationsDsl  -Aggregations $SearchAggregationSpecification -Sort "MySort" -SearchAfter "MySearchAfter" -Filters @{ key_example = $ModelFilter } # Search | 
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 10000 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Perform Search
try {
    $Result = Search-V2024Post -Search $Search -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Search-V2024Post: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Search** | [**Search**](Search.md)|  | 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

