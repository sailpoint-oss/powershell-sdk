# PSSailpoint.PSSailpoint/Api.AuthUserApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AuthUser**](AuthUserApi.md#Get-AuthUser) | **GET** /auth-users/{id} | Auth User Details
[**Update-AuthUser**](AuthUserApi.md#Update-AuthUser) | **PATCH** /auth-users/{id} | Auth User Update


<a name="Get-AuthUser"></a>
# **Get-AuthUser**
> AuthUser Get-AuthUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Auth User Details

This API returns the specified user's authentication system details. Requires security scope of:  'sp:auth-user:read'

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Identity ID

# Auth User Details
try {
    $Result = Get-AuthUser -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AuthUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Identity ID | 

### Return type

[**AuthUser**](AuthUser.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-AuthUser"></a>
# **Update-AuthUser**
> AuthUser Update-AuthUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Auth User Update

Update an existing user in the authentication system with a PATCH request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Identity ID
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of auth user update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  PATCH can only be applied to the following fields:   *   ""capabilities""  A list of valid capabilities can be found using the GET ams/v3/authorization/authorization-capabilities/ endpoint. Capabilities can only be patched if they are administrator assignable, as indicated by the 'adminAssignable' field from the output of list authorization-capabilities. Capabilities that have a legacy group ('legacyGroup' field) need to be patched using the legacyGroup name (e.g. 'ORG_ADMIN'). Capabilities that are adminAssignable but do not have a legacyGroup can be patched using the ams id (e.g. 'cam:new-role').  A 400.1.1 Illegal update attempt detail code indicates that you attempted to PATCH a field that is not allowed.  Requires security scope of 'sp:auth-user:update' 

# Auth User Update
try {
    $Result = Update-AuthUser -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-AuthUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Identity ID | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of auth user update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  PATCH can only be applied to the following fields:   *   &quot;&quot;capabilities&quot;&quot;  A list of valid capabilities can be found using the GET ams/v3/authorization/authorization-capabilities/ endpoint. Capabilities can only be patched if they are administrator assignable, as indicated by the &#39;adminAssignable&#39; field from the output of list authorization-capabilities. Capabilities that have a legacy group (&#39;legacyGroup&#39; field) need to be patched using the legacyGroup name (e.g. &#39;ORG_ADMIN&#39;). Capabilities that are adminAssignable but do not have a legacyGroup can be patched using the ams id (e.g. &#39;cam:new-role&#39;).  A 400.1.1 Illegal update attempt detail code indicates that you attempted to PATCH a field that is not allowed.  Requires security scope of &#39;sp:auth-user:update&#39;  | 

### Return type

[**AuthUser**](AuthUser.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

