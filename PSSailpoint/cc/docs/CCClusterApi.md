# PSSailpointCC.PSSailpointCC/Api.CCClusterApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update-CCCluster**](CCClusterApi.md#Update-CCCluster) | **POST** /cc/api/cluster/update/ | Update Cluster


<a name="Update-CCCluster"></a>
# **Update-CCCluster**
> void Update-CCCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClusterRequest] <PSCustomObject><br>

Update Cluster

Updates a Managed Cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$UpdateClusterRequest = Initialize-UpdateClusterRequest -Id "1092" -GmtOffset "-6" # UpdateClusterRequest | body to update the managed cluster with

# Update Cluster
try {
    $Result = Update-CCCluster -UpdateClusterRequest $UpdateClusterRequest
} catch {
    Write-Host ("Exception occurred when calling Update-CCCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateClusterRequest** | [**UpdateClusterRequest**](UpdateClusterRequest.md)| body to update the managed cluster with | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

