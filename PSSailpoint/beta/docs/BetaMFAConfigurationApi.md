# PSSailpointBeta.PSSailpointBeta/Api.BetaMFAConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaMFAConfig**](BetaMFAConfigurationApi.md#Get-BetaMFAConfig) | **GET** /mfa/{method}/config | Configuration of a MFA method
[**Set-BetaMFAConfig**](BetaMFAConfigurationApi.md#Set-BetaMFAConfig) | **PUT** /mfa/{method}/config | Set MFA method configuration
[**Test-BetaMFAConfig**](BetaMFAConfigurationApi.md#Test-BetaMFAConfig) | **GET** /mfa/{method}/test | MFA method&#39;s test configuration


<a name="Get-BetaMFAConfig"></a>
# **Get-BetaMFAConfig**
> MfaConfig Get-BetaMFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

Configuration of a MFA method

This API returns the configuration of a given MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method name is okta-verify.

# Configuration of a MFA method
try {
    $Result = Get-BetaMFAConfig -Method $Method
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| The name of the MFA method. The currently supported method name is okta-verify. | 

### Return type

[**MfaConfig**](MfaConfig.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-BetaMFAConfig"></a>
# **Set-BetaMFAConfig**
> MfaConfig Set-BetaMFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaConfig] <PSCustomObject><br>

Set MFA method configuration

This API sets the configuration of a given MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method name is okta-verify.
$MfaConfig = Initialize-MfaConfig -Enabled $false -VarHost "example.com" -AccessKey "MyAccessKey" -IdentityAttribute "email" # MfaConfig | 

# Set MFA method configuration
try {
    $Result = Set-BetaMFAConfig -Method $Method -MfaConfig $MfaConfig
} catch {
    Write-Host ("Exception occurred when calling Set-BetaMFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| The name of the MFA method. The currently supported method name is okta-verify. | 
 **MfaConfig** | [**MfaConfig**](MfaConfig.md)|  | 

### Return type

[**MfaConfig**](MfaConfig.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BetaMFAConfig"></a>
# **Test-BetaMFAConfig**
> MfaConfigTestResponse Test-BetaMFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

MFA method's test configuration

This API validates that the configuration is valid and will properly authenticate with the MFA provider identified by the method path parameter. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Method = "okta-verify" # String | The name of the MFA method. The currently supported method name is okta-verify.

# MFA method's test configuration
try {
    $Result = Test-BetaMFAConfig -Method $Method
} catch {
    Write-Host ("Exception occurred when calling Test-BetaMFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Method** | **String**| The name of the MFA method. The currently supported method name is okta-verify. | 

### Return type

[**MfaConfigTestResponse**](MfaConfigTestResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

