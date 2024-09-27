# PSSailpoint.V3.PSSailpoint.V3\Api.MFAConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-MFAConfig**](MFAConfigurationApi.md#Remove-MFAConfig) | **DELETE** /mfa/{method}/delete | Delete MFA method configuration
[**Get-MFADuoConfig**](MFAConfigurationApi.md#Get-MFADuoConfig) | **GET** /mfa/duo-web/config | Configuration of Duo MFA method
[**Get-MFAKbaConfig**](MFAConfigurationApi.md#Get-MFAKbaConfig) | **GET** /mfa/kba/config | Configuration of KBA MFA method
[**Get-MFAOktaConfig**](MFAConfigurationApi.md#Get-MFAOktaConfig) | **GET** /mfa/okta-verify/config | Configuration of Okta MFA method
[**Set-MFADuoConfig**](MFAConfigurationApi.md#Set-MFADuoConfig) | **PUT** /mfa/duo-web/config | Set Duo MFA configuration
[**Set-MFAKBAConfig**](MFAConfigurationApi.md#Set-MFAKBAConfig) | **POST** /mfa/kba/config/answers | Set MFA KBA configuration
[**Set-MFAOktaConfig**](MFAConfigurationApi.md#Set-MFAOktaConfig) | **PUT** /mfa/okta-verify/config | Set Okta MFA configuration
[**Test-MFAConfig**](MFAConfigurationApi.md#Test-MFAConfig) | **GET** /mfa/{method}/test | MFA method&#39;s test configuration


<a id="Remove-MFAConfig"></a>
# **Remove-MFAConfig**
> MfaOktaConfig Remove-MFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

Delete MFA method configuration

This API removes the configuration for the specified MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

# Delete MFA method configuration
try {
    $Result = Remove-MFAConfig -Method $Method
} catch {
    Write-Host ("Exception occurred when calling Remove-MFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| The name of the MFA method. The currently supported method names are &#39;okta-verify&#39; and &#39;duo-web&#39;. | 

### Return type

[**MfaOktaConfig**](MfaOktaConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MFADuoConfig"></a>
# **Get-MFADuoConfig**
> MfaDuoConfig Get-MFADuoConfig<br>

Configuration of Duo MFA method

This API returns the configuration of an Duo MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Configuration of Duo MFA method
try {
    $Result = Get-MFADuoConfig
} catch {
    Write-Host ("Exception occurred when calling Get-MFADuoConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MfaDuoConfig**](MfaDuoConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MFAKbaConfig"></a>
# **Get-MFAKbaConfig**
> KbaQuestion[] Get-MFAKbaConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllLanguages] <System.Nullable[Boolean]><br>

Configuration of KBA MFA method

This API returns the KBA configuration for MFA.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AllLanguages = $false # Boolean | Indicator whether the question text should be returned in all configured languages    * If true, the question text is returned in all languages that it is configured in.    * If false, the question text is returned in the user locale if available, else for the default locale.     * If not passed, it behaves the same way as passing this parameter as false (optional)

# Configuration of KBA MFA method
try {
    $Result = Get-MFAKbaConfig -AllLanguages $AllLanguages
} catch {
    Write-Host ("Exception occurred when calling Get-MFAKbaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MFAOktaConfig"></a>
# **Get-MFAOktaConfig**
> MfaOktaConfig Get-MFAOktaConfig<br>

Configuration of Okta MFA method

This API returns the configuration of an Okta MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Configuration of Okta MFA method
try {
    $Result = Get-MFAOktaConfig
} catch {
    Write-Host ("Exception occurred when calling Get-MFAOktaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MfaOktaConfig**](MfaOktaConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-MFADuoConfig"></a>
# **Set-MFADuoConfig**
> MfaDuoConfig Set-MFADuoConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaDuoConfig] <PSCustomObject><br>

Set Duo MFA configuration

This API sets the configuration of an Duo MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MfaDuoConfig = Initialize-MfaDuoConfig -MfaMethod "duo-web" -Enabled $true -VarHost "example.com" -AccessKey "qw123Y3QlA5UqocYpdU3rEkzrK2D497y" -IdentityAttribute "email" -ConfigProperties @{ key_example =  } # MfaDuoConfig | 

# Set Duo MFA configuration
try {
    $Result = Set-MFADuoConfig -MfaDuoConfig $MfaDuoConfig
} catch {
    Write-Host ("Exception occurred when calling Set-MFADuoConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-MFAKBAConfig"></a>
# **Set-MFAKBAConfig**
> KbaAnswerResponseItem[] Set-MFAKBAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KbaAnswerRequestItem] <PSCustomObject[]><br>

Set MFA KBA configuration

This API sets answers to challenge questions.  Any configured questions omitted from the request are removed from user KBA configuration.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$KbaAnswerRequestItem = Initialize-KbaAnswerRequestItem -Id "c54fee53-2d63-4fc5-9259-3e93b9994135" -Answer "Your answer" # KbaAnswerRequestItem[] | 

# Set MFA KBA configuration
try {
    $Result = Set-MFAKBAConfig -KbaAnswerRequestItem $KbaAnswerRequestItem
} catch {
    Write-Host ("Exception occurred when calling Set-MFAKBAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-MFAOktaConfig"></a>
# **Set-MFAOktaConfig**
> MfaOktaConfig Set-MFAOktaConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaOktaConfig] <PSCustomObject><br>

Set Okta MFA configuration

This API sets the configuration of an Okta MFA method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MfaOktaConfig = Initialize-MfaOktaConfig -MfaMethod "okta-verify" -Enabled $true -VarHost "example.com" -AccessKey "qw123Y3QlA5UqocYpdU3rEkzrK2D497y" -IdentityAttribute "email" # MfaOktaConfig | 

# Set Okta MFA configuration
try {
    $Result = Set-MFAOktaConfig -MfaOktaConfig $MfaOktaConfig
} catch {
    Write-Host ("Exception occurred when calling Set-MFAOktaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-MFAConfig"></a>
# **Test-MFAConfig**
> MfaConfigTestResponse Test-MFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

MFA method's test configuration

This API validates that the configuration is valid and will properly authenticate with the MFA provider identified by the method path parameter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

# MFA method's test configuration
try {
    $Result = Test-MFAConfig -Method $Method
} catch {
    Write-Host ("Exception occurred when calling Test-MFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

