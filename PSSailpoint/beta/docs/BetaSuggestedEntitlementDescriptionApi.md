# PSSailpointBeta.PSSailpointBeta\Api.BetaSuggestedEntitlementDescriptionApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaSedBatchStats**](BetaSuggestedEntitlementDescriptionApi.md#Get-BetaSedBatchStats) | **GET** /suggested-entitlement-description-batches/{batchId}/stats | Submit Sed Batch Stats Request
[**Get-BetaSedBatches**](BetaSuggestedEntitlementDescriptionApi.md#Get-BetaSedBatches) | **GET** /suggested-entitlement-description-batches | List Sed Batch Request
[**Get-BetaSeds**](BetaSuggestedEntitlementDescriptionApi.md#Get-BetaSeds) | **GET** /suggested-entitlement-descriptions | List Suggested Entitlement Description
[**Update-BetaSed**](BetaSuggestedEntitlementDescriptionApi.md#Update-BetaSed) | **PATCH** /suggested-entitlement-descriptions | Patch Suggested Entitlement Description
[**Submit-BetaSedApproval**](BetaSuggestedEntitlementDescriptionApi.md#Submit-BetaSedApproval) | **POST** /suggested-entitlement-description-approvals | Submit Bulk Approval Request
[**Submit-BetaSedAssignment**](BetaSuggestedEntitlementDescriptionApi.md#Submit-BetaSedAssignment) | **POST** /suggested-entitlement-description-assignments | Submit Sed Assignment Request
[**Submit-BetaSedBatchRequest**](BetaSuggestedEntitlementDescriptionApi.md#Submit-BetaSedBatchRequest) | **POST** /suggested-entitlement-description-batches | Submit Sed Batch Request


<a id="Get-BetaSedBatchStats"></a>
# **Get-BetaSedBatchStats**
> SedBatchStats Get-BetaSedBatchStats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BatchId] <String><br>

Submit Sed Batch Stats Request

Submit Sed Batch Stats Request. Submits batchId in the path param (e.g. {batchId}/stats). API responses with stats of the batchId.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$BatchId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | Batch Id

# Submit Sed Batch Stats Request
try {
    $Result = Get-BetaSedBatchStats -BatchId $BatchId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSedBatchStats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BatchId** | **String**| Batch Id | 

### Return type

[**SedBatchStats**](SedBatchStats.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSedBatches"></a>
# **Get-BetaSedBatches**
> SedBatchStatus Get-BetaSedBatches<br>

List Sed Batch Request

List Sed Batches. API responses with Sed Batch Status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Sed Batch Request
try {
    $Result = Get-BetaSedBatches
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSedBatches: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SedBatchStatus**](SedBatchStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSeds"></a>
# **Get-BetaSeds**
> Sed[] Get-BetaSeds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CountOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedByAnyone] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShowPendingStatusOnly] <System.Nullable[Boolean]><br>

List Suggested Entitlement Description

List of Suggested Entitlement Description

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = limit=0 # Int64 | Integer specifying the maximum number of records to return in a single API call.  The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional)
$Filters = "displayName co "Read and Write"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **batchId**: *eq*  **status**: *eq, ne, in*  **displayName**: *eq, co* (optional)
$Count = $false # Boolean | If `true` it will populate the `X-Total-Count` response header with the number of results that would be returned if `limit` and `offset` were ignored.  The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). Since requesting a total count can have a performance impact, it is recommended not to send `count=true` if that value will not be used. (optional)
$CountOnly = $false # Boolean | If `true` it will populate the `X-Total-Count` response header with the number of results that would be returned if `limit` and `offset` were ignored. This parameter differs from the Coun parameter in that this one skip executing the actual query and always return an empty array. (optional)
$RequestedByAnyone = $false # Boolean | By default, the ListSeds API will only return items that you have requested to be generated.   This option will allow you to see all items that have been requested (optional)
$ShowPendingStatusOnly = $false # Boolean | Will limit records to items that are in ""suggested"" or ""approved"" status (optional)

# List Suggested Entitlement Description
try {
    $Result = Get-BetaSeds -Limit $Limit -Filters $Filters -Count $Count -CountOnly $CountOnly -RequestedByAnyone $RequestedByAnyone -ShowPendingStatusOnly $ShowPendingStatusOnly
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSeds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int64**| Integer specifying the maximum number of records to return in a single API call.  The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **batchId**: *eq*  **status**: *eq, ne, in*  **displayName**: *eq, co* | [optional] 
 **Count** | **Boolean**| If &#x60;true&#x60; it will populate the &#x60;X-Total-Count&#x60; response header with the number of results that would be returned if &#x60;limit&#x60; and &#x60;offset&#x60; were ignored.  The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). Since requesting a total count can have a performance impact, it is recommended not to send &#x60;count&#x3D;true&#x60; if that value will not be used. | [optional] 
 **CountOnly** | **Boolean**| If &#x60;true&#x60; it will populate the &#x60;X-Total-Count&#x60; response header with the number of results that would be returned if &#x60;limit&#x60; and &#x60;offset&#x60; were ignored. This parameter differs from the Coun parameter in that this one skip executing the actual query and always return an empty array. | [optional] 
 **RequestedByAnyone** | **Boolean**| By default, the ListSeds API will only return items that you have requested to be generated.   This option will allow you to see all items that have been requested | [optional] 
 **ShowPendingStatusOnly** | **Boolean**| Will limit records to items that are in &quot;&quot;suggested&quot;&quot; or &quot;&quot;approved&quot;&quot; status | [optional] 

### Return type

[**Sed[]**](Sed.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaSed"></a>
# **Update-BetaSed**
> Sed Update-BetaSed<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SedPatch] <PSCustomObject[]><br>

Patch Suggested Entitlement Description

Patch Suggested Entitlement Description

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ebab396f-0af1-4050-89b7-dafc63ec70e7" # String | id is sed id
$SedPatch = Initialize-SedPatch -Op "replace" -Path "status" -Value # SedPatch[] | Sed Patch Request

# Patch Suggested Entitlement Description
try {
    $Result = Update-BetaSed -Id $Id -SedPatch $SedPatch
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSed: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| id is sed id | 
 **SedPatch** | [**SedPatch[]**](SedPatch.md)| Sed Patch Request | 

### Return type

[**Sed**](Sed.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BetaSedApproval"></a>
# **Submit-BetaSedApproval**
> SedApprovalStatus[] Submit-BetaSedApproval<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SedApproval] <PSCustomObject[]><br>

Submit Bulk Approval Request

Submit Bulk Approval Request for SED. Request body takes list of SED Ids. API responses with list of SED Approval Status

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SedApproval = Initialize-SedApproval -Items "MyItems" # SedApproval[] | Sed Approval

# Submit Bulk Approval Request
try {
    $Result = Submit-BetaSedApproval -SedApproval $SedApproval
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaSedApproval: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SedApproval** | [**SedApproval[]**](SedApproval.md)| Sed Approval | 

### Return type

[**SedApprovalStatus[]**](SedApprovalStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BetaSedAssignment"></a>
# **Submit-BetaSedAssignment**
> SedAssignmentResponse Submit-BetaSedAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SedAssignment] <PSCustomObject><br>

Submit Sed Assignment Request

Submit Assignment Request. Request body has an assignee, and list of SED Ids that are assigned to that assignee API responses with batchId that groups all approval requests together

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SedAssignee = Initialize-SedAssignee -Type "IDENTITY" -Value "016629d1-1d25-463f-97f3-c6686846650"
$SedAssignment = Initialize-SedAssignment -Assignee $SedAssignee -Items "016629d1-1d25-463f-97f3-0c6686846650" # SedAssignment | Sed Assignment Request

# Submit Sed Assignment Request
try {
    $Result = Submit-BetaSedAssignment -SedAssignment $SedAssignment
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaSedAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SedAssignment** | [**SedAssignment**](SedAssignment.md)| Sed Assignment Request | 

### Return type

[**SedAssignmentResponse**](SedAssignmentResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BetaSedBatchRequest"></a>
# **Submit-BetaSedBatchRequest**
> SedBatchResponse Submit-BetaSedBatchRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SedBatchRequest] <PSCustomObject><br>

Submit Sed Batch Request

Submit Sed Batch Request. Request body has a list of entitlement Ids that user wants to have description generated by LLM. API responses with batchId that groups Ids together

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SedBatchRequest = Initialize-SedBatchRequest -Entitlements "016629d1-1d25-463f-97f3-c6686846650" # SedBatchRequest | Sed Batch Request (optional)

# Submit Sed Batch Request
try {
    $Result = Submit-BetaSedBatchRequest -SedBatchRequest $SedBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaSedBatchRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SedBatchRequest** | [**SedBatchRequest**](SedBatchRequest.md)| Sed Batch Request | [optional] 

### Return type

[**SedBatchResponse**](SedBatchResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

