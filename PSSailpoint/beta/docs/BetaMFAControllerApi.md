# PSSailpointBeta.PSSailpointBeta/Api.BetaMFAControllerApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSendToken**](BetaMFAControllerApi.md#New-BetaSendToken) | **POST** /mfa/token/send | Create and send user token
[**Ping-BetaVerificationStatus**](BetaMFAControllerApi.md#Ping-BetaVerificationStatus) | **POST** /mfa/{method}/poll | Polling MFA method by VerificationPollRequest
[**Send-BetaKbaAnswers**](BetaMFAControllerApi.md#Send-BetaKbaAnswers) | **POST** /mfa/kba/authenticate | Authenticate KBA provided MFA method
[**Send-BetaTokenAuthRequest**](BetaMFAControllerApi.md#Send-BetaTokenAuthRequest) | **POST** /mfa/token/authenticate | Authenticate Token provided MFA method


<a name="New-BetaSendToken"></a>
# **New-BetaSendToken**
> SendTokenResponse New-BetaSendToken<br>
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
    $Result = New-BetaSendToken -SendTokenRequest $SendTokenRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaSendToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Ping-BetaVerificationStatus"></a>
# **Ping-BetaVerificationStatus**
> VerificationResponse Ping-BetaVerificationStatus<br>
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
    $Result = Ping-BetaVerificationStatus -Method $Method -VerificationPollRequest $VerificationPollRequest
} catch {
    Write-Host ("Exception occurred when calling Ping-BetaVerificationStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Send-BetaKbaAnswers"></a>
# **Send-BetaKbaAnswers**
> KbaAuthResponse Send-BetaKbaAnswers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KbaAnswerRequest] <PSCustomObject><br>

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

$KbaAnswerRequestItem = Initialize-KbaAnswerRequestItem -QuestionId "089899f13a8f4da7824996191587bab9" -Answer "Your answer"
$KbaAnswerRequest = Initialize-KbaAnswerRequest -Answers $KbaAnswerRequestItem # KbaAnswerRequest | 

# Authenticate KBA provided MFA method
try {
    $Result = Send-BetaKbaAnswers -KbaAnswerRequest $KbaAnswerRequest
} catch {
    Write-Host ("Exception occurred when calling Send-BetaKbaAnswers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KbaAnswerRequest** | [**KbaAnswerRequest**](KbaAnswerRequest.md)|  | 

### Return type

[**KbaAuthResponse**](KbaAuthResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaTokenAuthRequest"></a>
# **Send-BetaTokenAuthRequest**
> TokenAuthResponse Send-BetaTokenAuthRequest<br>
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
    $Result = Send-BetaTokenAuthRequest -TokenAuthRequest $TokenAuthRequest
} catch {
    Write-Host ("Exception occurred when calling Send-BetaTokenAuthRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

