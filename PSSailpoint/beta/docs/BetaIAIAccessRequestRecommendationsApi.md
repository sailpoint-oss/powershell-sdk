# PSSailpointBeta.PSSailpointBeta/Api.BetaIAIAccessRequestRecommendationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-BetaAccessRequestRecommendationsIgnoredItem**](BetaIAIAccessRequestRecommendationsApi.md#Add-BetaAccessRequestRecommendationsIgnoredItem) | **POST** /ai-access-request-recommendations/ignored-items | Notification of Ignored Access Request Recommendations
[**Add-BetaAccessRequestRecommendationsRequestedItem**](BetaIAIAccessRequestRecommendationsApi.md#Add-BetaAccessRequestRecommendationsRequestedItem) | **POST** /ai-access-request-recommendations/requested-items | Notification of Requested Access Request Recommendations
[**Add-BetaAccessRequestRecommendationsViewedItem**](BetaIAIAccessRequestRecommendationsApi.md#Add-BetaAccessRequestRecommendationsViewedItem) | **POST** /ai-access-request-recommendations/viewed-items | Notification of Viewed Access Request Recommendations
[**Add-BetaAccessRequestRecommendationsViewedItems**](BetaIAIAccessRequestRecommendationsApi.md#Add-BetaAccessRequestRecommendationsViewedItems) | **POST** /ai-access-request-recommendations/viewed-items/bulk-create | Notification of Viewed Access Request Recommendations in Bulk
[**Get-BetaAccessRequestRecommendations**](BetaIAIAccessRequestRecommendationsApi.md#Get-BetaAccessRequestRecommendations) | **GET** /ai-access-request-recommendations | Identity Access Request Recommendations
[**Get-BetaAccessRequestRecommendationsIgnoredItems**](BetaIAIAccessRequestRecommendationsApi.md#Get-BetaAccessRequestRecommendationsIgnoredItems) | **GET** /ai-access-request-recommendations/ignored-items | List of Ignored Access Request Recommendations
[**Get-BetaAccessRequestRecommendationsRequestedItems**](BetaIAIAccessRequestRecommendationsApi.md#Get-BetaAccessRequestRecommendationsRequestedItems) | **GET** /ai-access-request-recommendations/requested-items | List of Requested Access Request Recommendations
[**Get-BetaAccessRequestRecommendationsViewedItems**](BetaIAIAccessRequestRecommendationsApi.md#Get-BetaAccessRequestRecommendationsViewedItems) | **GET** /ai-access-request-recommendations/viewed-items | List of Viewed Access Request Recommendations
[**Get-BetaMessageCatalogs**](BetaIAIAccessRequestRecommendationsApi.md#Get-BetaMessageCatalogs) | **GET** /translation-catalogs/{catalog-id} | Get Message catalogs


<a name="Add-BetaAccessRequestRecommendationsIgnoredItem"></a>
# **Add-BetaAccessRequestRecommendationsIgnoredItem**
> AccessRequestRecommendationActionItemResponseDto Add-BetaAccessRequestRecommendationsIgnoredItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequestRecommendationActionItemDto] <PSCustomObject><br>

Notification of Ignored Access Request Recommendations

This API ignores a recommended access request item. Once an item is ignored, it will be marked as ignored=true if it is still a recommended item. The consumer can decide to hide ignored recommendations.

### Example
```powershell
$AccessRequestRecommendationItem = Initialize-AccessRequestRecommendationItem -Id "2c9180835d2e5168015d32f890ca1581" -Type "ACCESS_PROFILE"
$AccessRequestRecommendationActionItemDto = Initialize-AccessRequestRecommendationActionItemDto -IdentityId "2c91808570313110017040b06f344ec9" -Access $AccessRequestRecommendationItem # AccessRequestRecommendationActionItemDto | The recommended access item to ignore for an identity.

# Notification of Ignored Access Request Recommendations
try {
    $Result = Add-BetaAccessRequestRecommendationsIgnoredItem -AccessRequestRecommendationActionItemDto $AccessRequestRecommendationActionItemDto
} catch {
    Write-Host ("Exception occurred when calling Add-BetaAccessRequestRecommendationsIgnoredItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessRequestRecommendationActionItemDto** | [**AccessRequestRecommendationActionItemDto**](AccessRequestRecommendationActionItemDto.md)| The recommended access item to ignore for an identity. | 

### Return type

[**AccessRequestRecommendationActionItemResponseDto**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-BetaAccessRequestRecommendationsRequestedItem"></a>
# **Add-BetaAccessRequestRecommendationsRequestedItem**
> AccessRequestRecommendationActionItemResponseDto Add-BetaAccessRequestRecommendationsRequestedItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequestRecommendationActionItemDto] <PSCustomObject><br>

Notification of Requested Access Request Recommendations

This API consumes a notification that a recommended access request item was requested. This API does not actually make the request, it is just a notification. This will help provide feedback in order to improve our recommendations.

### Example
```powershell
$AccessRequestRecommendationItem = Initialize-AccessRequestRecommendationItem -Id "2c9180835d2e5168015d32f890ca1581" -Type "ACCESS_PROFILE"
$AccessRequestRecommendationActionItemDto = Initialize-AccessRequestRecommendationActionItemDto -IdentityId "2c91808570313110017040b06f344ec9" -Access $AccessRequestRecommendationItem # AccessRequestRecommendationActionItemDto | The recommended access item that was requested for an identity.

# Notification of Requested Access Request Recommendations
try {
    $Result = Add-BetaAccessRequestRecommendationsRequestedItem -AccessRequestRecommendationActionItemDto $AccessRequestRecommendationActionItemDto
} catch {
    Write-Host ("Exception occurred when calling Add-BetaAccessRequestRecommendationsRequestedItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessRequestRecommendationActionItemDto** | [**AccessRequestRecommendationActionItemDto**](AccessRequestRecommendationActionItemDto.md)| The recommended access item that was requested for an identity. | 

### Return type

[**AccessRequestRecommendationActionItemResponseDto**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-BetaAccessRequestRecommendationsViewedItem"></a>
# **Add-BetaAccessRequestRecommendationsViewedItem**
> AccessRequestRecommendationActionItemResponseDto Add-BetaAccessRequestRecommendationsViewedItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequestRecommendationActionItemDto] <PSCustomObject><br>

Notification of Viewed Access Request Recommendations

This API consumes a notification that a recommended access request item was viewed. Future recommendations with this item will be marked with viewed=true. This can be useful for the consumer to determine if there are any new/unviewed recommendations.

### Example
```powershell
$AccessRequestRecommendationItem = Initialize-AccessRequestRecommendationItem -Id "2c9180835d2e5168015d32f890ca1581" -Type "ACCESS_PROFILE"
$AccessRequestRecommendationActionItemDto = Initialize-AccessRequestRecommendationActionItemDto -IdentityId "2c91808570313110017040b06f344ec9" -Access $AccessRequestRecommendationItem # AccessRequestRecommendationActionItemDto | The recommended access that was viewed for an identity.

# Notification of Viewed Access Request Recommendations
try {
    $Result = Add-BetaAccessRequestRecommendationsViewedItem -AccessRequestRecommendationActionItemDto $AccessRequestRecommendationActionItemDto
} catch {
    Write-Host ("Exception occurred when calling Add-BetaAccessRequestRecommendationsViewedItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessRequestRecommendationActionItemDto** | [**AccessRequestRecommendationActionItemDto**](AccessRequestRecommendationActionItemDto.md)| The recommended access that was viewed for an identity. | 

### Return type

[**AccessRequestRecommendationActionItemResponseDto**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-BetaAccessRequestRecommendationsViewedItems"></a>
# **Add-BetaAccessRequestRecommendationsViewedItems**
> AccessRequestRecommendationActionItemResponseDto[] Add-BetaAccessRequestRecommendationsViewedItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequestRecommendationActionItemDto] <PSCustomObject[]><br>

Notification of Viewed Access Request Recommendations in Bulk

This API consumes a notification that a set of recommended access request item were viewed. Future recommendations with these items will be marked with viewed=true. This can be useful for the consumer to determine if there are any new/unviewed recommendations.

### Example
```powershell
$AccessRequestRecommendationItem = Initialize-AccessRequestRecommendationItem -Id "2c9180835d2e5168015d32f890ca1581" -Type "ACCESS_PROFILE"
$AccessRequestRecommendationActionItemDto = Initialize-AccessRequestRecommendationActionItemDto -IdentityId "2c91808570313110017040b06f344ec9" -Access $AccessRequestRecommendationItem # AccessRequestRecommendationActionItemDto[] | The recommended access items that were viewed for an identity.

# Notification of Viewed Access Request Recommendations in Bulk
try {
    $Result = Add-BetaAccessRequestRecommendationsViewedItems -AccessRequestRecommendationActionItemDto $AccessRequestRecommendationActionItemDto
} catch {
    Write-Host ("Exception occurred when calling Add-BetaAccessRequestRecommendationsViewedItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessRequestRecommendationActionItemDto** | [**AccessRequestRecommendationActionItemDto[]**](AccessRequestRecommendationActionItemDto.md)| The recommended access items that were viewed for an identity. | 

### Return type

[**AccessRequestRecommendationActionItemResponseDto[]**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaAccessRequestRecommendations"></a>
# **Get-BetaAccessRequestRecommendations**
> AccessRequestRecommendationItemDetail[] Get-BetaAccessRequestRecommendations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTranslationMessages] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Identity Access Request Recommendations

This API returns the access request recommendations for the specified identity. The default identity is *me* which indicates the current user.

### Example
```powershell
$IdentityId = "2c91808570313110017040b06f344ec9" # String | Get access request recommendations for an identityId. *me* indicates the current user. (optional) (default to "me")
$Limit = 56 # Int32 | Max number of results to return. (optional) (default to 15)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$IncludeTranslationMessages = $false # Boolean | If *true* it will populate a list of translation messages in the response. (optional) (default to $false)
$Filters = "access.name co "admin"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.name**: *co*  **access.type**: *eq, in*  **access.description**: *co, eq, in* (optional)
$Sorters = "MySorters" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.name, access.type**  By default the recommendations are sorted by highest confidence first. (optional)

# Identity Access Request Recommendations
try {
    $Result = Get-BetaAccessRequestRecommendations -IdentityId $IdentityId -Limit $Limit -Offset $Offset -Count $Count -IncludeTranslationMessages $IncludeTranslationMessages -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessRequestRecommendations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| Get access request recommendations for an identityId. *me* indicates the current user. | [optional] [default to &quot;me&quot;]
 **Limit** | **Int32**| Max number of results to return. | [optional] [default to 15]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **IncludeTranslationMessages** | **Boolean**| If *true* it will populate a list of translation messages in the response. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.name**: *co*  **access.type**: *eq, in*  **access.description**: *co, eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.name, access.type**  By default the recommendations are sorted by highest confidence first. | [optional] 

### Return type

[**AccessRequestRecommendationItemDetail[]**](AccessRequestRecommendationItemDetail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaAccessRequestRecommendationsIgnoredItems"></a>
# **Get-BetaAccessRequestRecommendationsIgnoredItems**
> AccessRequestRecommendationActionItemResponseDto[] Get-BetaAccessRequestRecommendationsIgnoredItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List of Ignored Access Request Recommendations

This API returns the list of ignored access request recommendations.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "identityId eq "2c9180846b0a0583016b299f210c1314"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.id**: *eq, in*  **access.type**: *eq, in*  **identityId**: *eq, in* (optional)
$Sorters = "access.id" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.id, access.type, identityId, timestamp** (optional)

# List of Ignored Access Request Recommendations
try {
    $Result = Get-BetaAccessRequestRecommendationsIgnoredItems -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessRequestRecommendationsIgnoredItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.id**: *eq, in*  **access.type**: *eq, in*  **identityId**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.id, access.type, identityId, timestamp** | [optional] 

### Return type

[**AccessRequestRecommendationActionItemResponseDto[]**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaAccessRequestRecommendationsRequestedItems"></a>
# **Get-BetaAccessRequestRecommendationsRequestedItems**
> AccessRequestRecommendationActionItemResponseDto[] Get-BetaAccessRequestRecommendationsRequestedItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List of Requested Access Request Recommendations

This API returns a list of requested access request recommendations.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "access.id eq "2c9180846b0a0583016b299f210c1314"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.id**: *eq, in*  **access.type**: *eq, in*  **identityId**: *eq, in* (optional)
$Sorters = "MySorters" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.id, access.type, identityId, timestamp** (optional)

# List of Requested Access Request Recommendations
try {
    $Result = Get-BetaAccessRequestRecommendationsRequestedItems -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessRequestRecommendationsRequestedItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.id**: *eq, in*  **access.type**: *eq, in*  **identityId**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.id, access.type, identityId, timestamp** | [optional] 

### Return type

[**AccessRequestRecommendationActionItemResponseDto[]**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaAccessRequestRecommendationsViewedItems"></a>
# **Get-BetaAccessRequestRecommendationsViewedItems**
> AccessRequestRecommendationActionItemResponseDto[] Get-BetaAccessRequestRecommendationsViewedItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List of Viewed Access Request Recommendations

This API returns the list of viewed access request recommendations.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "access.id eq "2c9180846b0a0583016b299f210c1314"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.id**: *eq, in*  **access.type**: *eq, in*  **identityId**: *eq, in* (optional)
$Sorters = "MySorters" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.id, access.type, identityId, timestamp** (optional)

# List of Viewed Access Request Recommendations
try {
    $Result = Get-BetaAccessRequestRecommendationsViewedItems -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessRequestRecommendationsViewedItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **access.id**: *eq, in*  **access.type**: *eq, in*  **identityId**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.id, access.type, identityId, timestamp** | [optional] 

### Return type

[**AccessRequestRecommendationActionItemResponseDto[]**](AccessRequestRecommendationActionItemResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaMessageCatalogs"></a>
# **Get-BetaMessageCatalogs**
> MessageCatalogDto[] Get-BetaMessageCatalogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CatalogId] <String><br>

Get Message catalogs

The getMessageCatalogs API returns message catalog based on the language headers in the requested object.

### Example
```powershell
$CatalogId = "recommender" # String | The ID of the message catalog.

# Get Message catalogs
try {
    $Result = Get-BetaMessageCatalogs -CatalogId $CatalogId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMessageCatalogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CatalogId** | **String**| The ID of the message catalog. | 

### Return type

[**MessageCatalogDto[]**](MessageCatalogDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

