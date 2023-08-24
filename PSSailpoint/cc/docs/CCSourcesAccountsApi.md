# PSSailpointCC.PSSailpointCC/Api.CCSourcesAccountsApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Export-CCAccountFeed**](CCSourcesAccountsApi.md#Export-CCAccountFeed) | **GET** /cc/api/source/exportAccountFeed/{id} | Export Account Feed


<a name="Export-CCAccountFeed"></a>
# **Export-CCAccountFeed**
> void Export-CCAccountFeed<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Export Account Feed

Exports a CSV of the accounts for a particular source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | 

# Export Account Feed
try {
    $Result = Export-CCAccountFeed -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-CCAccountFeed: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

