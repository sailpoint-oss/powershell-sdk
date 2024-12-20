# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024PasswordManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024DigitToken**](V2024PasswordManagementApi.md#New-V2024DigitToken) | **POST** /generate-password-reset-token/digit | Generate a digit token
[**Get-V2024PasswordChangeStatus**](V2024PasswordManagementApi.md#Get-V2024PasswordChangeStatus) | **GET** /password-change-status/{id} | Get Password Change Request Status
[**Search-V2024PasswordInfo**](V2024PasswordManagementApi.md#Search-V2024PasswordInfo) | **POST** /query-password-info | Query Password Info
[**Set-V2024Password**](V2024PasswordManagementApi.md#Set-V2024Password) | **POST** /set-password | Set Identity&#39;s Password


<a id="New-V2024DigitToken"></a>
# **New-V2024DigitToken**
> PasswordDigitToken New-V2024DigitToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordDigitTokenReset] <PSCustomObject><br>

Generate a digit token

This API is used to generate a digit token for password management. Requires authorization scope of ""idn:password-digit-token:create"".

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$PasswordDigitTokenReset = Initialize-PasswordDigitTokenReset -UserId "Abby.Smith" -Length 8 -DurationMinutes 5 # PasswordDigitTokenReset | 

# Generate a digit token
try {
    $Result = New-V2024DigitToken -XSailPointExperimental $XSailPointExperimental -PasswordDigitTokenReset $PasswordDigitTokenReset
} catch {
    Write-Host ("Exception occurred when calling New-V2024DigitToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **PasswordDigitTokenReset** | [**PasswordDigitTokenReset**](PasswordDigitTokenReset.md)|  | 

### Return type

[**PasswordDigitToken**](PasswordDigitToken.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PasswordChangeStatus"></a>
# **Get-V2024PasswordChangeStatus**
> PasswordStatus Get-V2024PasswordChangeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Change Request Status

This API returns the status of a password change request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "089899f13a8f4da7824996191587bab9" # String | Password change request ID

# Get Password Change Request Status
try {
    $Result = Get-V2024PasswordChangeStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PasswordChangeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024PasswordInfo"></a>
# **Search-V2024PasswordInfo**
> PasswordInfo Search-V2024PasswordInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordInfoQueryDTO] <PSCustomObject><br>

Query Password Info

This API is used to query password related information.  

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordInfoQueryDTO = Initialize-PasswordInfoQueryDTO -UserName "Abby.Smith" -SourceName "My-AD" # PasswordInfoQueryDTO | 

# Query Password Info
try {
    $Result = Search-V2024PasswordInfo -PasswordInfoQueryDTO $PasswordInfoQueryDTO
} catch {
    Write-Host ("Exception occurred when calling Search-V2024PasswordInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024Password"></a>
# **Set-V2024Password**
> PasswordChangeResponse Set-V2024Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordChangeRequest] <PSCustomObject><br>

Set Identity's Password

This API is used to set a password for an identity.   An identity can change their own password (as well as any of their accounts' passwords) if they use a token generated by their ISC user, such as a [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens) or [""authorization_code"" derived OAuth token](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow).  >**Note: If you want to set an identity's source account password, you must enable `PASSWORD` as one of the source's features. You can use the [PATCH Source endpoint](https://developer.sailpoint.com/docs/api/v3/update-source) to add the `PASSWORD` feature.**  To generate the encryptedPassword (RSA encrypted using publicKey) for the request body, run the following command:  ```bash echo -n ""myPassword"" | openssl pkeyutl -encrypt -inkey public_key.pem -pubin | base64 ```  In this example, myPassword is the plain text password being set and encrypted, and public_key.pem is the path to the public key file. You can retrieve the required publicKey, along with other information like identityId, sourceId, publicKeyId, accounts, and policies, using the Query Password Info endpoint.  To successfully run this command, you must have OpenSSL installed on your machine. If OpenSSL is unavailable, consider using the Virtual Appliance (VA), which has OpenSSL pre-installed and configured.  If you are using a Windows machine, refer to this [guide](https://tecadmin.net/install-openssl-on-windows/) for instructions on installing OpenSSL.  You can then use [Get Password Change Request Status](https://developer.sailpoint.com/idn/api/v3/get-password-change-status) to check the password change request status. To do so, you must provide the `requestId` from your earlier request to set the password.  

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordChangeRequest = Initialize-PasswordChangeRequest -IdentityId "8a807d4c73c545510173c545f0a002ff" -EncryptedPassword "XzN+YwKgr2C+InkMYFMBG3UtjMEw5ZIql/XFlXo8cJNeslmkplx6vn4kd4/43IF9STBk5RnzR6XmjpEO+FwHDoiBwYZAkAZK/Iswxk4OdybG6Y4MStJCOCiK8osKr35IMMSV/mbO4wAeltoCk7daTWzTGLiI6UaT5tf+F2EgdjJZ7YqM8W8r7aUWsm3p2Xt01Y46ZRx0QaM91QruiIx2rECFT2pUO0wr+7oQ77jypATyGWRtADsu3YcvCk/6U5MqCnXMzKBcRas7NnZdSL/d5H1GglVGz3VLPMaivG4/oL4chOMmFCRl/zVsGxZ9RhN8rxsRGFFKn+rhExTi+bax3A==" -PublicKeyId "YWQ2NjQ4MTItZjY0NC00MWExLWFjMjktOGNmMzU3Y2VlNjk2" -AccountId "CN=Abby Smith,OU=Austin,OU=Americas,OU=Demo,DC=seri,DC=acme,DC=com" -SourceId "8a807d4c73c545510173c545d4b60246" # PasswordChangeRequest | 

# Set Identity's Password
try {
    $Result = Set-V2024Password -PasswordChangeRequest $PasswordChangeRequest
} catch {
    Write-Host ("Exception occurred when calling Set-V2024Password: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

