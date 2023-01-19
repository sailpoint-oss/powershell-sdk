# PSSailpoint.PSSailpoint/Api.PasswordManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-PasswordChangeStatus**](PasswordManagementApi.md#Get-PasswordChangeStatus) | **GET** /password-change-status/{id} | Get Password Change Request Status
[**Invoke-QueryPasswordInfo**](PasswordManagementApi.md#Invoke-QueryPasswordInfo) | **POST** /query-password-info | Query Password Info
[**Set-Password**](PasswordManagementApi.md#Set-Password) | **POST** /set-password | Set Identity&#39;s Password


<a name="Get-PasswordChangeStatus"></a>
# **Get-PasswordChangeStatus**
> PasswordStatus Get-PasswordChangeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Change Request Status

This API returns the status of a password change request. A token with identity owner or trusted API client application authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "089899f13a8f4da7824996191587bab9" # String | Password change request ID

# Get Password Change Request Status
try {
    $Result = Get-PasswordChangeStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordChangeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Password change request ID | 

### Return type

[**PasswordStatus**](PasswordStatus.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-QueryPasswordInfo"></a>
# **Invoke-QueryPasswordInfo**
> PasswordInfo Invoke-QueryPasswordInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordInfoQueryDTO] <PSCustomObject><br>

Query Password Info

This API is used to query password related information.   A token with [API authority](https://developer.sailpoint.com/idn/api/authentication#client-credentials-grant-flow)  is required to call this API.  ""API authority"" refers to a token that only has the ""client_credentials""  grant type, and therefore no user context. A [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens)  or a token generated with the [authorization_code](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow)  grant type will **NOT** work on this endpoint, and a `403 Forbidden` response  will be returned. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordInfoQueryDTO = Initialize-PasswordInfoQueryDTO -UserName "Abby.Smith" -SourceName "My-AD" # PasswordInfoQueryDTO | 

# Query Password Info
try {
    $Result = Invoke-QueryPasswordInfo -PasswordInfoQueryDTO $PasswordInfoQueryDTO
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryPasswordInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordInfoQueryDTO** | [**PasswordInfoQueryDTO**](PasswordInfoQueryDTO.md)|  | 

### Return type

[**PasswordInfo**](PasswordInfo.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-Password"></a>
# **Set-Password**
> PasswordChangeResponse Set-Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordChangeRequest] <PSCustomObject><br>

Set Identity's Password

This API is used to set a password for an identity.   An identity can change their own password if they use a token generated by their IDN user, such as a [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens) or [""authorization_code"" derived OAuth token](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow).  A token with [API authority](https://developer.sailpoint.com/idn/api/authentication#client-credentials-grant-flow) can be used to change **any** identity's password.  ""API authority"" refers to a token that only has the ""client_credentials"" grant type. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordChangeRequest = Initialize-PasswordChangeRequest -IdentityId "8a807d4c73c545510173c545f0a002ff" -EncryptedPassword "XzN+YwKgr2C+InkMYFMBG3UtjMEw5ZIql/XFlXo8cJNeslmkplx6vn4kd4/43IF9STBk5RnzR6XmjpEO+FwHDoiBwYZAkAZK/Iswxk4OdybG6Y4MStJCOCiK8osKr35IMMSV/mbO4wAeltoCk7daTWzTGLiI6UaT5tf+F2EgdjJZ7YqM8W8r7aUWsm3p2Xt01Y46ZRx0QaM91QruiIx2rECFT2pUO0wr+7oQ77jypATyGWRtADsu3YcvCk/6U5MqCnXMzKBcRas7NnZdSL/d5H1GglVGz3VLPMaivG4/oL4chOMmFCRl/zVsGxZ9RhN8rxsRGFFKn+rhExTi+bax3A==" -PublicKeyId "YWQ2NjQ4MTItZjY0NC00MWExLWFjMjktOGNmMzU3Y2VlNjk2" -AccountId "CN=Abby Smith,OU=Austin,OU=Americas,OU=Demo,DC=seri,DC=acme,DC=com" -SourceId "8a807d4c73c545510173c545d4b60246" # PasswordChangeRequest | 

# Set Identity's Password
try {
    $Result = Set-Password -PasswordChangeRequest $PasswordChangeRequest
} catch {
    Write-Host ("Exception occurred when calling Set-Password: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordChangeRequest** | [**PasswordChangeRequest**](PasswordChangeRequest.md)|  | 

### Return type

[**PasswordChangeResponse**](PasswordChangeResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

