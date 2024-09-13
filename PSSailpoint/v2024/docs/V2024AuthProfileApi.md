# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024AuthProfileApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024ProfileConfig**](V2024AuthProfileApi.md#Get-V2024ProfileConfig) | **GET** /auth-profiles/{id} | Get Auth Profile.
[**Get-V2024ProfileConfigList**](V2024AuthProfileApi.md#Get-V2024ProfileConfigList) | **GET** /auth-profiles | Get list of Auth Profiles.
[**Update-V2024ProfileConfig**](V2024AuthProfileApi.md#Update-V2024ProfileConfig) | **PATCH** /auth-profiles/{id} | Patch a specified Auth Profile


<a id="Get-V2024ProfileConfig"></a>
# **Get-V2024ProfileConfig**
> AuthProfile Get-V2024ProfileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Auth Profile.

This API returns auth profile information.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Auth Profile.
try {
    $Result = Get-V2024ProfileConfig -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ProfileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**AuthProfile**](AuthProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ProfileConfigList"></a>
# **Get-V2024ProfileConfigList**
> AuthProfileSummary Get-V2024ProfileConfigList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get list of Auth Profiles.

This API returns a list of auth profiles.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get list of Auth Profiles.
try {
    $Result = Get-V2024ProfileConfigList -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ProfileConfigList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**AuthProfileSummary**](AuthProfileSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ProfileConfig"></a>
# **Update-V2024ProfileConfig**
> AuthProfile Update-V2024ProfileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a specified Auth Profile

This API updates an existing Auth Profile. The following fields are patchable: **offNetwork**, **untrustedGeography**, **applicationId**, **applicationName**, **type**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the Auth Profile to patch.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch a specified Auth Profile
try {
    $Result = Update-V2024ProfileConfig -Id $Id -XSailPointExperimental $XSailPointExperimental -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ProfileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Auth Profile to patch. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**AuthProfile**](AuthProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

