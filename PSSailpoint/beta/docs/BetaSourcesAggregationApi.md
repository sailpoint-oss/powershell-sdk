# PSSailpointBeta.PSSailpointBeta\Api.BetaSourcesAggregationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Import-BetaAccounts**](BetaSourcesAggregationApi.md#Import-BetaAccounts) | **POST** /sources/{id}/load-accounts | Account Aggregation


<a id="Import-BetaAccounts"></a>
# **Import-BetaAccounts**
> LoadAccountsTask Import-BetaAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableOptimization] <System.Nullable[Boolean]><br>

Account Aggregation

Starts an account aggregation on the specified source.  If the target source is a direct connection, then the request body must be empty. If the target source is a delimited file source, then the CSV file needs to be included in the request body. You will also need to set the Content-Type header to `multipart/form-data`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Source Id
$File =  # System.IO.FileInfo |  (optional)
$DisableOptimization = $true # Boolean |  (optional)

# Account Aggregation
try {
    $Result = Import-BetaAccounts -Id $Id -File $File -DisableOptimization $DisableOptimization
} catch {
    Write-Host ("Exception occurred when calling Import-BetaAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 
 **DisableOptimization** | **Boolean**|  | [optional] 

### Return type

[**LoadAccountsTask**](LoadAccountsTask.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

