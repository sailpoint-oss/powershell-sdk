# PSSailpointCC.PSSailpointCC/Api.CCUserApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-CCIdentity**](CCUserApi.md#Get-CCIdentity) | **GET** /cc/api/user/get/{id} | Get Single Identity
[**Update-CCUserPermissions**](CCUserApi.md#Update-CCUserPermissions) | **POST** /cc/api/user/updatePermissions | Update User Permissions


<a name="Get-CCIdentity"></a>
# **Get-CCIdentity**
> GetIdentity200Response Get-CCIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Single Identity

### Example
```powershell
$Id = "5433236" # String | 

# Get Single Identity
try {
    $Result = Get-CCIdentity -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CCIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**GetIdentity200Response**](GetIdentity200Response.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-CCUserPermissions"></a>
# **Update-CCUserPermissions**
> void Update-CCUserPermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateUserPermissionsRequest] <PSCustomObject><br>

Update User Permissions

### Example
```powershell
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

