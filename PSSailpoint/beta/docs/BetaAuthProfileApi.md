# PSSailpointBeta.PSSailpointBeta\Api.BetaAuthProfileApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaProfileConfig**](BetaAuthProfileApi.md#New-BetaProfileConfig) | **POST** /auth-profiles/{id} | Create Auth Profile.
[**Remove-BetaProfileConfig**](BetaAuthProfileApi.md#Remove-BetaProfileConfig) | **DELETE** /auth-profiles/{id} | Delete the specified Auth Profile
[**Get-BetaProfileConfig**](BetaAuthProfileApi.md#Get-BetaProfileConfig) | **GET** /auth-profiles/{id} | Get Auth Profile.
[**Get-BetaProfileConfigList**](BetaAuthProfileApi.md#Get-BetaProfileConfigList) | **GET** /auth-profiles | Get list of Auth Profiles.
[**Update-BetaProfileConfig**](BetaAuthProfileApi.md#Update-BetaProfileConfig) | **PATCH** /auth-profiles/{id} | Patch a specified Auth Profile


<a id="New-BetaProfileConfig"></a>
# **New-BetaProfileConfig**
> AuthProfile New-BetaProfileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthProfileRequest] <PSCustomObject><br>

Create Auth Profile.

This API creates an auth profile.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AuthProfileRequest = Initialize-AuthProfileRequest -Name "EndToEnd-Profile" -OffNetwork $true -UntrustedGeography $true -ApplicationId "2c91808458ae7a4f0158b1bbf8af0628" -ApplicationName "EndToEnd-Source" -Type "BLOCK" -StrongAuthLogin $true # AuthProfileRequest | 

# Create Auth Profile.
try {
    $Result = New-BetaProfileConfig -AuthProfileRequest $AuthProfileRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaProfileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthProfileRequest** | [**AuthProfileRequest**](AuthProfileRequest.md)|  | 

### Return type

[**AuthProfile**](AuthProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaProfileConfig"></a>
# **Remove-BetaProfileConfig**
> void Remove-BetaProfileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete the specified Auth Profile

This API deletes an existing Auth Profile.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the Access Profile to delete

# Delete the specified Auth Profile
try {
    $Result = Remove-BetaProfileConfig -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaProfileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Access Profile to delete | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaProfileConfig"></a>
# **Get-BetaProfileConfig**
> AuthProfile Get-BetaProfileConfig<br>

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


# Get Auth Profile.
try {
    $Result = Get-BetaProfileConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaProfileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthProfile**](AuthProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaProfileConfigList"></a>
# **Get-BetaProfileConfigList**
> AuthProfileSummary Get-BetaProfileConfigList<br>

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


# Get list of Auth Profiles.
try {
    $Result = Get-BetaProfileConfigList
} catch {
    Write-Host ("Exception occurred when calling Get-BetaProfileConfigList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthProfileSummary**](AuthProfileSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaProfileConfig"></a>
# **Update-BetaProfileConfig**
> AuthProfile Update-BetaProfileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
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

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the Auth Profile to patch
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch a specified Auth Profile
try {
    $Result = Update-BetaProfileConfig -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaProfileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Auth Profile to patch | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**AuthProfile**](AuthProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

