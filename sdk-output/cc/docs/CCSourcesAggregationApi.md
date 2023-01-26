# PSSailpointCC.PSSailpointCC/Api.CCSourcesAggregationApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CCLoadAccounts**](CCSourcesAggregationApi.md#Invoke-CCLoadAccounts) | **POST** /cc/api/source/loadAccounts/{id} | Account Aggregation (File)


<a name="Invoke-CCLoadAccounts"></a>
# **Invoke-CCLoadAccounts**
> void Invoke-CCLoadAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableOptimization] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Account Aggregation (File)

Aggregates a delimited file for the given source.  This only works for file-based sources.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | 
$ContentType = "application/x-www-form-urlencoded" # String |  (optional)
$DisableOptimization = $true # Boolean |  (optional)
$File =  # System.IO.FileInfo |  (optional)

# Account Aggregation (File)
try {
    $Result = Invoke-CCLoadAccounts -Id $Id -ContentType $ContentType -DisableOptimization $DisableOptimization -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-CCLoadAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **ContentType** | **String**|  | [optional] 
 **DisableOptimization** | **Boolean**|  | [optional] 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

