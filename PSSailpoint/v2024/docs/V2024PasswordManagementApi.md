# PSSailpointV2024.PSSailpointV2024\Api.V2024PasswordManagementApi

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
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PasswordChangeStatus"></a>
# **Get-V2024PasswordChangeStatus**
> PasswordStatus Get-V2024PasswordChangeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Change Request Status

This API returns the status of a password change request. A token with identity owner or trusted API client application authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024PasswordInfo"></a>
# **Search-V2024PasswordInfo**
> PasswordInfo Search-V2024PasswordInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordInfoQueryDTO] <PSCustomObject><br>

Query Password Info

This API is used to query password related information.   A token with [API authority](https://developer.sailpoint.com/idn/api/authentication#client-credentials-grant-flow)  is required to call this API.  ""API authority"" refers to a token that only has the ""client_credentials""  grant type, and therefore no user context. A [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens)  or a token generated with the [authorization_code](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow)  grant type will **NOT** work on this endpoint, and a `403 Forbidden` response  will be returned. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024Password"></a>
# **Set-V2024Password**
> PasswordChangeResponse Set-V2024Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordChangeRequest] <PSCustomObject><br>

Set Identity's Password

This API is used to set a password for an identity.   An identity can change their own password (as well as any of their accounts' passwords) if they use a token generated by their ISC user, such as a [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens) or [""authorization_code"" derived OAuth token](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow).  A token with [API authority](https://developer.sailpoint.com/idn/api/authentication#client-credentials-grant-flow) can be used to change **any** identity's password or the password of any of the identity's accounts.  ""API authority"" refers to a token that only has the ""client_credentials"" grant type.  >**Note: If you want to set an identity's source account password, you must enable `PASSWORD` as one of the source's features. You can use the [PATCH Source endpoint](https://developer.sailpoint.com/docs/api/v3/update-source) to add the `PASSWORD` feature.**  You can use this endpoint to generate an `encryptedPassword` (RSA encrypted using publicKey).  To do so, follow these steps:  1. Use [Query Password Info](https://developer.sailpoint.com/idn/api/v3/query-password-info) to get the following information: `identityId`, `sourceId`, `publicKeyId`, `publicKey`, `accounts`, and `policies`.   2. Choose an account from the previous response that you will provide as an `accountId` in your request to set an encrypted password.   3. Use [Set Identity's Password](https://developer.sailpoint.com/idn/api/v3/set-password) and provide the information you got from your earlier query. Then add this code to your request to get the encrypted password:  ```java import javax.crypto.Cipher; import java.security.KeyFactory; import java.security.PublicKey; import java.security.spec.X509EncodedKeySpec; import java util.Base64;  String encrypt(String publicKey, String toEncrypt) throws Exception {   byte[] publicKeyBytes = Base64.getDecoder().decode(publicKey);   byte[] encryptedBytes = encryptRsa(publicKeyBytes, toEncrypt.getBytes(""UTF-8""));   return Base64.getEncoder().encodeToString(encryptedBytes); }  private byte[] encryptRsa(byte[] publicKeyBytes, byte[] toEncryptBytes) throws Exception {   PublicKey key = KeyFactory.getInstance(""RSA"").generatePublic(new X509EncodedKeySpec(publicKeyBytes));   String transformation = ""RSA/ECB/PKCS1Padding"";   Cipher cipher = Cipher.getInstance(transformation);   cipher.init(1, key);   return cipher.doFinal(toEncryptBytes); } ```      In this example, `toEncrypt` refers to the plain text password you are setting and then encrypting, and the `publicKey` refers to the publicKey you got from the first request you sent.   You can then use [Get Password Change Request Status](https://developer.sailpoint.com/idn/api/v3/get-password-change-status) to check the password change request status. To do so, you must provide the `requestId` from your earlier request to set the password.  

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

