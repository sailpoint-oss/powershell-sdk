# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024IconsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-V2024Icon**](V2024IconsApi.md#Remove-V2024Icon) | **DELETE** /icons/{objectType}/{objectId} | Delete an icon
[**Set-V2024Icon**](V2024IconsApi.md#Set-V2024Icon) | **PUT** /icons/{objectType}/{objectId} | Update an icon


<a id="Remove-V2024Icon"></a>
# **Remove-V2024Icon**
> void Remove-V2024Icon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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

$ObjectType = "application" # String | Object type. Available options ['application']
$ObjectId = "a291e870-48c3-4953-b656-fb5ce2a93169" # String | Object id.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete an icon
try {
    $Result = Remove-V2024Icon -ObjectType $ObjectType -ObjectId $ObjectId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Icon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ObjectType** | **String**| Object type. Available options [&#39;application&#39;] | 
 **ObjectId** | **String**| Object id. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024Icon"></a>
# **Set-V2024Icon**
> SetIcon200Response Set-V2024Icon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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

$ObjectType = "application" # String | Object type. Available options ['application']
$ObjectId = "a291e870-48c3-4953-b656-fb5ce2a93169" # String | Object id.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Image =  # System.IO.FileInfo | file with icon. Allowed mime-types ['image/png', 'image/jpeg']

# Update an icon
try {
    $Result = Set-V2024Icon -ObjectType $ObjectType -ObjectId $ObjectId -XSailPointExperimental $XSailPointExperimental -Image $Image
} catch {
    Write-Host ("Exception occurred when calling Set-V2024Icon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ObjectType** | **String**| Object type. Available options [&#39;application&#39;] | 
 **ObjectId** | **String**| Object id. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Image** | **System.IO.FileInfo****System.IO.FileInfo**| file with icon. Allowed mime-types [&#39;image/png&#39;, &#39;image/jpeg&#39;] | 

### Return type

[**SetIcon200Response**](SetIcon200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

