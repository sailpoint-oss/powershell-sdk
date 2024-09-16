# PSSailpoint.V3.PSSailpoint.V3\Api.MFAControllerApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SendToken**](MFAControllerApi.md#New-SendToken) | **POST** /mfa/token/send | Create and send user token
[**Ping-VerificationStatus**](MFAControllerApi.md#Ping-VerificationStatus) | **POST** /mfa/{method}/poll | Polling MFA method by VerificationPollRequest
[**Send-DuoVerifyRequest**](MFAControllerApi.md#Send-DuoVerifyRequest) | **POST** /mfa/duo-web/verify | Verifying authentication via Duo method
[**Send-KbaAnswers**](MFAControllerApi.md#Send-KbaAnswers) | **POST** /mfa/kba/authenticate | Authenticate KBA provided MFA method
[**Send-OktaVerifyRequest**](MFAControllerApi.md#Send-OktaVerifyRequest) | **POST** /mfa/okta-verify/verify | Verifying authentication via Okta method
[**Send-TokenAuthRequest**](MFAControllerApi.md#Send-TokenAuthRequest) | **POST** /mfa/token/authenticate | Authenticate Token provided MFA method


<a id="New-SendToken"></a>
# **New-SendToken**
> SendTokenResponse New-SendToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendTokenRequest] <PSCustomObject><br>

Create and send user token

This API send token request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SendTokenRequest = Initialize-SendTokenRequest -UserAlias "will.albin" -DeliveryType "SMS_PERSONAL" # SendTokenRequest | 

# Create and send user token
try {
    $Result = New-SendToken -SendTokenRequest $SendTokenRequest
} catch {
    Write-Host ("Exception occurred when calling New-SendToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SendTokenRequest** | [**SendTokenRequest**](SendTokenRequest.md)|  | 

### Return type

[**SendTokenResponse**](SendTokenResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Ping-VerificationStatus"></a>
# **Ping-VerificationStatus**
> VerificationResponse Ping-VerificationStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VerificationPollRequest] <PSCustomObject><br>

Polling MFA method by VerificationPollRequest

This API poll the VerificationPollRequest for the specified MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method names are 'okta-verify', 'duo-web', 'kba','token', 'rsa'
$VerificationPollRequest = Initialize-VerificationPollRequest -RequestId "089899f13a8f4da7824996191587bab9" # VerificationPollRequest | 

# Polling MFA method by VerificationPollRequest
try {
    $Result = Ping-VerificationStatus -Method $Method -VerificationPollRequest $VerificationPollRequest
} catch {
    Write-Host ("Exception occurred when calling Ping-VerificationStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| The name of the MFA method. The currently supported method names are &#39;okta-verify&#39;, &#39;duo-web&#39;, &#39;kba&#39;,&#39;token&#39;, &#39;rsa&#39; | 
 **VerificationPollRequest** | [**VerificationPollRequest**](VerificationPollRequest.md)|  | 

### Return type

[**VerificationResponse**](VerificationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-DuoVerifyRequest"></a>
# **Send-DuoVerifyRequest**
> VerificationResponse Send-DuoVerifyRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DuoVerificationRequest] <PSCustomObject><br>

Verifying authentication via Duo method

This API Authenticates the user via Duo-Web MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$DuoVerificationRequest = Initialize-DuoVerificationRequest -UserId "2c9180947f0ef465017f215cbcfd004b" -SignedResponse "AUTH|d2lsbC5hbGJpbnxESTZNMFpHSThKQVRWTVpZN0M5VXwxNzAxMjUzMDg5|f1f5f8ced5b340f3d303b05d0efa0e43b6a8f970:APP|d2lsbC5hbGJpbnxESTZNMFpHSThKQVRWTVpZN0M5VXwxNzAxMjU2NjE5|cb44cf44353f5127edcae31b1da0355f87357db2" # DuoVerificationRequest | 

# Verifying authentication via Duo method
try {
    $Result = Send-DuoVerifyRequest -DuoVerificationRequest $DuoVerificationRequest
} catch {
    Write-Host ("Exception occurred when calling Send-DuoVerifyRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DuoVerificationRequest** | [**DuoVerificationRequest**](DuoVerificationRequest.md)|  | 

### Return type

[**VerificationResponse**](VerificationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-KbaAnswers"></a>
# **Send-KbaAnswers**
> KbaAuthResponse Send-KbaAnswers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KbaAnswerRequestItem] <PSCustomObject[]><br>

Authenticate KBA provided MFA method

This API Authenticate user in KBA MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$KbaAnswerRequestItem = Initialize-KbaAnswerRequestItem -Id "c54fee53-2d63-4fc5-9259-3e93b9994135" -Answer "Your answer" # KbaAnswerRequestItem[] | 

# Authenticate KBA provided MFA method
try {
    $Result = Send-KbaAnswers -KbaAnswerRequestItem $KbaAnswerRequestItem
} catch {
    Write-Host ("Exception occurred when calling Send-KbaAnswers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KbaAnswerRequestItem** | [**KbaAnswerRequestItem[]**](KbaAnswerRequestItem.md)|  | 

### Return type

[**KbaAuthResponse**](KbaAuthResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-OktaVerifyRequest"></a>
# **Send-OktaVerifyRequest**
> VerificationResponse Send-OktaVerifyRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OktaVerificationRequest] <PSCustomObject><br>

Verifying authentication via Okta method

This API Authenticates the user via Okta-Verify MFA method. Request requires a header called 'slpt-forwarding', and it must contain a remote IP Address of caller.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OktaVerificationRequest = Initialize-OktaVerificationRequest -UserId "example@mail.com" # OktaVerificationRequest | 

# Verifying authentication via Okta method
try {
    $Result = Send-OktaVerifyRequest -OktaVerificationRequest $OktaVerificationRequest
} catch {
    Write-Host ("Exception occurred when calling Send-OktaVerifyRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OktaVerificationRequest** | [**OktaVerificationRequest**](OktaVerificationRequest.md)|  | 

### Return type

[**VerificationResponse**](VerificationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-TokenAuthRequest"></a>
# **Send-TokenAuthRequest**
> TokenAuthResponse Send-TokenAuthRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenAuthRequest] <PSCustomObject><br>

Authenticate Token provided MFA method

This API Authenticate user in Token MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TokenAuthRequest = Initialize-TokenAuthRequest -Token "12345" -UserAlias "will.albin" -DeliveryType "SMS_PERSONAL" # TokenAuthRequest | 

# Authenticate Token provided MFA method
try {
    $Result = Send-TokenAuthRequest -TokenAuthRequest $TokenAuthRequest
} catch {
    Write-Host ("Exception occurred when calling Send-TokenAuthRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TokenAuthRequest** | [**TokenAuthRequest**](TokenAuthRequest.md)|  | 

### Return type

[**TokenAuthResponse**](TokenAuthResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

