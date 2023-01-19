# PSSailpointBeta.PSSailpointBeta/Api.BetaPasswordManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaDigitToken**](BetaPasswordManagementApi.md#New-BetaDigitToken) | **POST** /generate-password-reset-token/digit | Generate a digit token
[**Get-BetaPasswordChangeStatus**](BetaPasswordManagementApi.md#Get-BetaPasswordChangeStatus) | **GET** /password-change-status/{id} | Get Password Change Request Status
[**Invoke-BetaQueryPasswordInfo**](BetaPasswordManagementApi.md#Invoke-BetaQueryPasswordInfo) | **POST** /query-password-info | Query Password Info
[**Set-BetaPassword**](BetaPasswordManagementApi.md#Set-BetaPassword) | **POST** /set-password | Set Identity&#39;s Password


<a name="New-BetaDigitToken"></a>
# **New-BetaDigitToken**
> PasswordDigitToken New-BetaDigitToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordDigitTokenReset] <PSCustomObject><br>

Generate a digit token

This API is used to generate a digit token for password management. Requires authorization scope of ""idn:password-digit-token:create"".

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordDigitTokenReset = Initialize-PasswordDigitTokenReset -UserId "Abby.Smith" -Length 8 -DurationMinutes 5 # PasswordDigitTokenReset | 

# Generate a digit token
try {
    $Result = New-BetaDigitToken -PasswordDigitTokenReset $PasswordDigitTokenReset
} catch {
    Write-Host ("Exception occurred when calling New-BetaDigitToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordDigitTokenReset** | [**PasswordDigitTokenReset**](PasswordDigitTokenReset.md)|  | 

### Return type

[**PasswordDigitToken**](PasswordDigitToken.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaPasswordChangeStatus"></a>
# **Get-BetaPasswordChangeStatus**
> PasswordStatus Get-BetaPasswordChangeStatus<br>
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

$Id = "MyId" # String | 

# Get Password Change Request Status
try {
    $Result = Get-BetaPasswordChangeStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaPasswordChangeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**PasswordStatus**](PasswordStatus.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaQueryPasswordInfo"></a>
# **Invoke-BetaQueryPasswordInfo**
> PasswordInfo Invoke-BetaQueryPasswordInfo<br>
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
    $Result = Invoke-BetaQueryPasswordInfo -PasswordInfoQueryDTO $PasswordInfoQueryDTO
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaQueryPasswordInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-BetaPassword"></a>
# **Set-BetaPassword**
> PasswordChangeResponse Set-BetaPassword<br>
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
    $Result = Set-BetaPassword -PasswordChangeRequest $PasswordChangeRequest
} catch {
    Write-Host ("Exception occurred when calling Set-BetaPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

