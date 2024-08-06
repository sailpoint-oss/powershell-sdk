# PSSailpointV2024.PSSailpointV2024\Api.V2024AccessRequestIdentityMetricsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024AccessRequestIdentityMetrics**](V2024AccessRequestIdentityMetricsApi.md#Get-V2024AccessRequestIdentityMetrics) | **GET** /access-request-identity-metrics/{identityId}/requested-objects/{requestedObjectId}/type/{type} | Return access request identity metrics


<a id="Get-V2024AccessRequestIdentityMetrics"></a>
# **Get-V2024AccessRequestIdentityMetrics**
> SystemCollectionsHashtable Get-V2024AccessRequestIdentityMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedObjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Return access request identity metrics

Use this API to return information access metrics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "7025c863-c270-4ba6-beea-edf3cb091573" # String | Manager's identity ID.
$RequestedObjectId = "2db501be-f0fb-4cc5-a695-334133c52891" # String | Requested access item's ID.
$Type = "ENTITLEMENT" # String | Requested access item's type.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Return access request identity metrics
try {
    $Result = Get-V2024AccessRequestIdentityMetrics -IdentityId $IdentityId -RequestedObjectId $RequestedObjectId -Type $Type -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AccessRequestIdentityMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| Manager&#39;s identity ID. | 
 **RequestedObjectId** | **String**| Requested access item&#39;s ID. | 
 **Type** | **String**| Requested access item&#39;s type. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

