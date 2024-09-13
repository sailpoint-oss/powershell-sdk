# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024MFAConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024MFADuoConfig**](V2024MFAConfigurationApi.md#Get-V2024MFADuoConfig) | **GET** /mfa/duo-web/config | Configuration of Duo MFA method
[**Get-V2024MFAKbaConfig**](V2024MFAConfigurationApi.md#Get-V2024MFAKbaConfig) | **GET** /mfa/kba/config | Configuration of KBA MFA method
[**Get-V2024MFAOktaConfig**](V2024MFAConfigurationApi.md#Get-V2024MFAOktaConfig) | **GET** /mfa/okta-verify/config | Configuration of Okta MFA method
[**Set-V2024MFADuoConfig**](V2024MFAConfigurationApi.md#Set-V2024MFADuoConfig) | **PUT** /mfa/duo-web/config | Set Duo MFA configuration
[**Set-V2024MFAKBAConfig**](V2024MFAConfigurationApi.md#Set-V2024MFAKBAConfig) | **POST** /mfa/kba/config/answers | Set MFA KBA configuration
[**Set-V2024MFAOktaConfig**](V2024MFAConfigurationApi.md#Set-V2024MFAOktaConfig) | **PUT** /mfa/okta-verify/config | Set Okta MFA configuration
[**Test-V2024MFAConfig**](V2024MFAConfigurationApi.md#Test-V2024MFAConfig) | **GET** /mfa/{method}/test | MFA method&#39;s test configuration


<a id="Get-V2024MFADuoConfig"></a>
# **Get-V2024MFADuoConfig**
> MfaDuoConfig Get-V2024MFADuoConfig<br>

Configuration of Duo MFA method

This API returns the configuration of an Duo MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Configuration of Duo MFA method
try {
    $Result = Get-V2024MFADuoConfig
} catch {
    Write-Host ("Exception occurred when calling Get-V2024MFADuoConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MfaDuoConfig**](MfaDuoConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024MFAKbaConfig"></a>
# **Get-V2024MFAKbaConfig**
> KbaQuestion[] Get-V2024MFAKbaConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllLanguages] <System.Nullable[Boolean]><br>

Configuration of KBA MFA method

This API returns the KBA configuration for MFA. A token with USER or ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AllLanguages = $false # Boolean | Indicator whether the question text should be returned in all configured languages    * If true, the question text is returned in all languages that it is configured in.    * If false, the question text is returned in the user locale if available, else for the default locale.     * If not passed, it behaves the same way as passing this parameter as false (optional)

# Configuration of KBA MFA method
try {
    $Result = Get-V2024MFAKbaConfig -AllLanguages $AllLanguages
} catch {
    Write-Host ("Exception occurred when calling Get-V2024MFAKbaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AllLanguages** | **Boolean**| Indicator whether the question text should be returned in all configured languages    * If true, the question text is returned in all languages that it is configured in.    * If false, the question text is returned in the user locale if available, else for the default locale.     * If not passed, it behaves the same way as passing this parameter as false | [optional] 

### Return type

[**KbaQuestion[]**](KbaQuestion.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024MFAOktaConfig"></a>
# **Get-V2024MFAOktaConfig**
> MfaOktaConfig Get-V2024MFAOktaConfig<br>

Configuration of Okta MFA method

This API returns the configuration of an Okta MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Configuration of Okta MFA method
try {
    $Result = Get-V2024MFAOktaConfig
} catch {
    Write-Host ("Exception occurred when calling Get-V2024MFAOktaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MfaOktaConfig**](MfaOktaConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024MFADuoConfig"></a>
# **Set-V2024MFADuoConfig**
> MfaDuoConfig Set-V2024MFADuoConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaDuoConfig] <PSCustomObject><br>

Set Duo MFA configuration

This API sets the configuration of an Duo MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MfaDuoConfig = Initialize-MfaDuoConfig -MfaMethod "duo-web" -Enabled $true -VarHost "example.com" -AccessKey "qw123Y3QlA5UqocYpdU3rEkzrK2D497y" -IdentityAttribute "email" -ConfigProperties @{ key_example =  } # MfaDuoConfig | 

# Set Duo MFA configuration
try {
    $Result = Set-V2024MFADuoConfig -MfaDuoConfig $MfaDuoConfig
} catch {
    Write-Host ("Exception occurred when calling Set-V2024MFADuoConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MfaDuoConfig** | [**MfaDuoConfig**](MfaDuoConfig.md)|  | 

### Return type

[**MfaDuoConfig**](MfaDuoConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024MFAKBAConfig"></a>
# **Set-V2024MFAKBAConfig**
> KbaAnswerResponseItem[] Set-V2024MFAKBAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KbaAnswerRequestItem] <PSCustomObject[]><br>

Set MFA KBA configuration

This API sets answers to challenge questions.  Any configured questions omitted from the request are removed from user KBA configuration. A token with USER authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$KbaAnswerRequestItem = Initialize-KbaAnswerRequestItem -Id "c54fee53-2d63-4fc5-9259-3e93b9994135" -Answer "Your answer" # KbaAnswerRequestItem[] | 

# Set MFA KBA configuration
try {
    $Result = Set-V2024MFAKBAConfig -KbaAnswerRequestItem $KbaAnswerRequestItem
} catch {
    Write-Host ("Exception occurred when calling Set-V2024MFAKBAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KbaAnswerRequestItem** | [**KbaAnswerRequestItem[]**](KbaAnswerRequestItem.md)|  | 

### Return type

[**KbaAnswerResponseItem[]**](KbaAnswerResponseItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024MFAOktaConfig"></a>
# **Set-V2024MFAOktaConfig**
> MfaOktaConfig Set-V2024MFAOktaConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaOktaConfig] <PSCustomObject><br>

Set Okta MFA configuration

This API sets the configuration of an Okta MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MfaOktaConfig = Initialize-MfaOktaConfig -MfaMethod "okta-verify" -Enabled $true -VarHost "example.com" -AccessKey "qw123Y3QlA5UqocYpdU3rEkzrK2D497y" -IdentityAttribute "email" # MfaOktaConfig | 

# Set Okta MFA configuration
try {
    $Result = Set-V2024MFAOktaConfig -MfaOktaConfig $MfaOktaConfig
} catch {
    Write-Host ("Exception occurred when calling Set-V2024MFAOktaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MfaOktaConfig** | [**MfaOktaConfig**](MfaOktaConfig.md)|  | 

### Return type

[**MfaOktaConfig**](MfaOktaConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-V2024MFAConfig"></a>
# **Test-V2024MFAConfig**
> MfaConfigTestResponse Test-V2024MFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

MFA method's test configuration

This API validates that the configuration is valid and will properly authenticate with the MFA provider identified by the method path parameter. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

# MFA method's test configuration
try {
    $Result = Test-V2024MFAConfig -Method $Method
} catch {
    Write-Host ("Exception occurred when calling Test-V2024MFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| The name of the MFA method. The currently supported method names are &#39;okta-verify&#39; and &#39;duo-web&#39;. | 

### Return type

[**MfaConfigTestResponse**](MfaConfigTestResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

