# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SuggestedEntitlementDescriptionApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024SedBatchStats**](V2024SuggestedEntitlementDescriptionApi.md#Get-V2024SedBatchStats) | **GET** /suggested-entitlement-description-batches/{batchId}/stats | Submit Sed Batch Stats Request
[**Get-V2024SedBatches**](V2024SuggestedEntitlementDescriptionApi.md#Get-V2024SedBatches) | **GET** /suggested-entitlement-description-batches | List Sed Batch Request
[**Get-V2024Seds**](V2024SuggestedEntitlementDescriptionApi.md#Get-V2024Seds) | **GET** /suggested-entitlement-descriptions | List Suggested Entitlement Description
[**Update-V2024Sed**](V2024SuggestedEntitlementDescriptionApi.md#Update-V2024Sed) | **PATCH** /suggested-entitlement-descriptions | Patch Suggested Entitlement Description
[**Submit-V2024SedApproval**](V2024SuggestedEntitlementDescriptionApi.md#Submit-V2024SedApproval) | **POST** /suggested-entitlement-description-approvals | Submit Bulk Approval Request
[**Submit-V2024SedAssignment**](V2024SuggestedEntitlementDescriptionApi.md#Submit-V2024SedAssignment) | **POST** /suggested-entitlement-description-assignments | Submit Sed Assignment Request
[**Submit-V2024SedBatchRequest**](V2024SuggestedEntitlementDescriptionApi.md#Submit-V2024SedBatchRequest) | **POST** /suggested-entitlement-description-batches | Submit Sed Batch Request


<a id="Get-V2024SedBatchStats"></a>
# **Get-V2024SedBatchStats**
> SedBatchStats Get-V2024SedBatchStats<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BatchId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Submit Sed Batch Stats Request
try {
    $Result = Get-V2024SedBatchStats -BatchId $BatchId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SedBatchStats: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BatchId** | **String**| Batch Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SedBatchStats**](SedBatchStats.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SedBatches"></a>
# **Get-V2024SedBatches**
> SedBatchStatus Get-V2024SedBatches<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List Sed Batch Request
try {
    $Result = Get-V2024SedBatches -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SedBatches: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SedBatchStatus**](SedBatchStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Seds"></a>
# **Get-V2024Seds**
> Sed[] Get-V2024Seds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = limit=0 # Int64 | Integer specifying the maximum number of records to return in a single API call.  The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional)
$Filters = "displayName co "Read and Write"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **batchId**: *eq*  **status**: *eq, ne, in*  **displayName**: *eq, co* (optional)
$Count = $false # Boolean | If `true` it will populate the `X-Total-Count` response header with the number of results that would be returned if `limit` and `offset` were ignored.  The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). Since requesting a total count can have a performance impact, it is recommended not to send `count=true` if that value will not be used. (optional)
$CountOnly = $false # Boolean | If `true` it will populate the `X-Total-Count` response header with the number of results that would be returned if `limit` and `offset` were ignored. This parameter differs from the Coun parameter in that this one skip executing the actual query and always return an empty array. (optional)
$RequestedByAnyone = $false # Boolean | By default, the ListSeds API will only return items that you have requested to be generated.   This option will allow you to see all items that have been requested (optional)
$ShowPendingStatusOnly = $false # Boolean | Will limit records to items that are in ""suggested"" or ""approved"" status (optional)

# List Suggested Entitlement Description
try {
    $Result = Get-V2024Seds -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Filters $Filters -Count $Count -CountOnly $CountOnly -RequestedByAnyone $RequestedByAnyone -ShowPendingStatusOnly $ShowPendingStatusOnly
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Seds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
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

<a id="Update-V2024Sed"></a>
# **Update-V2024Sed**
> Sed Update-V2024Sed<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SedPatch = Initialize-SedPatch -Op "replace" -Path "status" -Value # SedPatch[] | Sed Patch Request

# Patch Suggested Entitlement Description
try {
    $Result = Update-V2024Sed -Id $Id -XSailPointExperimental $XSailPointExperimental -SedPatch $SedPatch
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Sed: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| id is sed id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SedPatch** | [**SedPatch[]**](SedPatch.md)| Sed Patch Request | 

### Return type

[**Sed**](Sed.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-V2024SedApproval"></a>
# **Submit-V2024SedApproval**
> SedApprovalStatus[] Submit-V2024SedApproval<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SedApproval = Initialize-SedApproval -Items "MyItems" # SedApproval[] | Sed Approval

# Submit Bulk Approval Request
try {
    $Result = Submit-V2024SedApproval -XSailPointExperimental $XSailPointExperimental -SedApproval $SedApproval
} catch {
    Write-Host ("Exception occurred when calling Submit-V2024SedApproval: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SedApproval** | [**SedApproval[]**](SedApproval.md)| Sed Approval | 

### Return type

[**SedApprovalStatus[]**](SedApprovalStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-V2024SedAssignment"></a>
# **Submit-V2024SedAssignment**
> SedAssignmentResponse Submit-V2024SedAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SedAssignee = Initialize-SedAssignee -Type "IDENTITY" -Value "016629d1-1d25-463f-97f3-c6686846650"
$SedAssignment = Initialize-SedAssignment -Assignee $SedAssignee -Items "016629d1-1d25-463f-97f3-0c6686846650" # SedAssignment | Sed Assignment Request

# Submit Sed Assignment Request
try {
    $Result = Submit-V2024SedAssignment -XSailPointExperimental $XSailPointExperimental -SedAssignment $SedAssignment
} catch {
    Write-Host ("Exception occurred when calling Submit-V2024SedAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SedAssignment** | [**SedAssignment**](SedAssignment.md)| Sed Assignment Request | 

### Return type

[**SedAssignmentResponse**](SedAssignmentResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-V2024SedBatchRequest"></a>
# **Submit-V2024SedBatchRequest**
> SedBatchResponse Submit-V2024SedBatchRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SedBatchRequest] <PSCustomObject><br>

Submit Sed Batch Request

Submit Sed Batch Request. Request body has one of the following: - a list of entitlement Ids - a list of SED Ids that user wants to have description generated by LLM. API responses with batchId that groups Ids together

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SedBatchRequest = Initialize-SedBatchRequest -Entitlements "016629d1-1d25-463f-97f3-c6686846650" -Seds "016629d1-1d25-463f-97f3-c6686846650" # SedBatchRequest | Sed Batch Request (optional)

# Submit Sed Batch Request
try {
    $Result = Submit-V2024SedBatchRequest -XSailPointExperimental $XSailPointExperimental -SedBatchRequest $SedBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-V2024SedBatchRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SedBatchRequest** | [**SedBatchRequest**](SedBatchRequest.md)| Sed Batch Request | [optional] 

### Return type

[**SedBatchResponse**](SedBatchResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

