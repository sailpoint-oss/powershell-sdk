# PSSailpointBeta.PSSailpointBeta/Api.BetaPasswordDictionaryApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaPasswordDictionary**](BetaPasswordDictionaryApi.md#Get-BetaPasswordDictionary) | **GET** /password-dictionary | Get Password Dictionary
[**Update-BetaPasswordDictionary**](BetaPasswordDictionaryApi.md#Update-BetaPasswordDictionary) | **PUT** /password-dictionary | Update Password Dictionary


<a name="Get-BetaPasswordDictionary"></a>
# **Get-BetaPasswordDictionary**
> String Get-BetaPasswordDictionary<br>

Get Password Dictionary

This gets password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell

# Get Password Dictionary
try {
    $Result = Get-BetaPasswordDictionary
} catch {
    Write-Host ("Exception occurred when calling Get-BetaPasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaPasswordDictionary"></a>
# **Update-BetaPasswordDictionary**
> void Update-BetaPasswordDictionary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Update Password Dictionary

This updates password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$File =  # System.IO.FileInfo |  (optional)

# Update Password Dictionary
try {
    $Result = Update-BetaPasswordDictionary -File $File
} catch {
    Write-Host ("Exception occurred when calling Update-BetaPasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

