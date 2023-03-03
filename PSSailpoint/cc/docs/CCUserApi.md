# PSSailpointCC.PSSailpointCC/Api.CCUserApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update-CCUserPermissions**](CCUserApi.md#Update-CCUserPermissions) | **POST** /cc/api/user/updatePermissions | Update User Permissions


<a name="Update-CCUserPermissions"></a>
# **Update-CCUserPermissions**
> void Update-CCUserPermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateUserPermissionsRequest] <PSCustomObject><br>

Update User Permissions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$UpdateUserPermissionsRequest = Initialize-UpdateUserPermissionsRequest -Ids "71624,71625" -IsAdmin "1" -AdminType "ADMIN" # UpdateUserPermissionsRequest |  (optional)

# Update User Permissions
try {
    $Result = Update-CCUserPermissions -UpdateUserPermissionsRequest $UpdateUserPermissionsRequest
} catch {
    Write-Host ("Exception occurred when calling Update-CCUserPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateUserPermissionsRequest** | [**UpdateUserPermissionsRequest**](UpdateUserPermissionsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

