# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaIconsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-BetaIcon**](BetaIconsApi.md#Remove-BetaIcon) | **DELETE** /icons/{objectType}/{objectId} | Delete an icon
[**Set-BetaIcon**](BetaIconsApi.md#Set-BetaIcon) | **PUT** /icons/{objectType}/{objectId} | Update an icon


<a id="Remove-BetaIcon"></a>
# **Remove-BetaIcon**
> void Remove-BetaIcon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectId] <String><br>

Delete an icon

This API endpoint delete an icon by object type and object id. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ObjectType = "application" # String | Object type
$ObjectId = "a291e870-48c3-4953-b656-fb5ce2a93169" # String | Object id.

# Delete an icon
try {
    $Result = Remove-BetaIcon -ObjectType $ObjectType -ObjectId $ObjectId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaIcon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ObjectType** | **String**| Object type | 
 **ObjectId** | **String**| Object id. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-BetaIcon"></a>
# **Set-BetaIcon**
> SetIcon200Response Set-BetaIcon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Image] <System.IO.FileInfo><br>

Update an icon

This API endpoint updates an icon by object type and object id. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ObjectType = "application" # String | Object type
$ObjectId = "a291e870-48c3-4953-b656-fb5ce2a93169" # String | Object id.
$Image =  # System.IO.FileInfo | file with icon. Allowed mime-types ['image/png', 'image/jpeg']

# Update an icon
try {
    $Result = Set-BetaIcon -ObjectType $ObjectType -ObjectId $ObjectId -Image $Image
} catch {
    Write-Host ("Exception occurred when calling Set-BetaIcon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ObjectType** | **String**| Object type | 
 **ObjectId** | **String**| Object id. | 
 **Image** | **System.IO.FileInfo****System.IO.FileInfo**| file with icon. Allowed mime-types [&#39;image/png&#39;, &#39;image/jpeg&#39;] | 

### Return type

[**SetIcon200Response**](SetIcon200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

