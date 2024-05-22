# PSSailpointBeta.PSSailpointBeta\Api.BetaSourcesUncorrelatedAccountsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Import-BetaUncorrelatedAccounts**](BetaSourcesUncorrelatedAccountsApi.md#Import-BetaUncorrelatedAccounts) | **POST** /sources/{id}/load-uncorrelated-accounts | Process Uncorrelated Accounts


<a id="Import-BetaUncorrelatedAccounts"></a>
# **Import-BetaUncorrelatedAccounts**
> LoadUncorrelatedAccountsTask Import-BetaUncorrelatedAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Process Uncorrelated Accounts

File is required for upload. You will also need to set the Content-Type header to `multipart/form-data`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "75dbec1ebe154d5785da27b95e1dd5d7" # String | Source Id
$File =  # System.IO.FileInfo |  (optional)

# Process Uncorrelated Accounts
try {
    $Result = Import-BetaUncorrelatedAccounts -Id $Id -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-BetaUncorrelatedAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

[**LoadUncorrelatedAccountsTask**](LoadUncorrelatedAccountsTask.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

