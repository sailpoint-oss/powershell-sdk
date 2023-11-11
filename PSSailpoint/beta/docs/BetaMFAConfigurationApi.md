# PSSailpointBeta.PSSailpointBeta/Api.BetaMFAConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-BetaMFAConfig**](BetaMFAConfigurationApi.md#Remove-BetaMFAConfig) | **DELETE** /mfa/{method}/delete | Delete MFA method configuration
[**Get-BetaMFADuoConfig**](BetaMFAConfigurationApi.md#Get-BetaMFADuoConfig) | **GET** /mfa/duo-web/config | Configuration of Duo MFA method
[**Get-BetaMFAOktaConfig**](BetaMFAConfigurationApi.md#Get-BetaMFAOktaConfig) | **GET** /mfa/okta-verify/config | Configuration of Okta MFA method
[**Set-BetaMFADuoConfig**](BetaMFAConfigurationApi.md#Set-BetaMFADuoConfig) | **PUT** /mfa/duo-web/config | Set Duo MFA configuration
[**Set-BetaMFAOktaConfig**](BetaMFAConfigurationApi.md#Set-BetaMFAOktaConfig) | **PUT** /mfa/okta-verify/config | Set Okta MFA configuration
[**Test-BetaMFAConfig**](BetaMFAConfigurationApi.md#Test-BetaMFAConfig) | **GET** /mfa/{method}/test | MFA method&#39;s test configuration


<a name="Remove-BetaMFAConfig"></a>
# **Remove-BetaMFAConfig**
> MfaOktaConfig Remove-BetaMFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

Delete MFA method configuration

This API removes the configuration for the specified MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Method = "okta-verify" # String | The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

# Delete MFA method configuration
try {
    $Result = Remove-BetaMFAConfig -Method $Method
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaMFAConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaMFADuoConfig"></a>
# **Get-BetaMFADuoConfig**
> MfaDuoConfig Get-BetaMFADuoConfig<br>

Configuration of Duo MFA method

This API returns the configuration of an Duo MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell

# Configuration of Duo MFA method
try {
    $Result = Get-BetaMFADuoConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMFADuoConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BetaMFAOktaConfig"></a>
# **Get-BetaMFAOktaConfig**
> MfaOktaConfig Get-BetaMFAOktaConfig<br>

Configuration of Okta MFA method

This API returns the configuration of an Okta MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell

# Configuration of Okta MFA method
try {
    $Result = Get-BetaMFAOktaConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMFAOktaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-BetaMFADuoConfig"></a>
# **Set-BetaMFADuoConfig**
> MfaDuoConfig Set-BetaMFADuoConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaDuoConfig] <PSCustomObject><br>

Set Duo MFA configuration

This API sets the configuration of an Duo MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$MfaDuoConfig = Initialize-MfaDuoConfig -MfaMethod "duo-web" -Enabled $true -VarHost "example.com" -AccessKey "qw123Y3QlA5UqocYpdU3rEkzrK2D497y" -IdentityAttribute "email" -ConfigProperties @{ key_example =  } # MfaDuoConfig | 

# Set Duo MFA configuration
try {
    $Result = Set-BetaMFADuoConfig -MfaDuoConfig $MfaDuoConfig
} catch {
    Write-Host ("Exception occurred when calling Set-BetaMFADuoConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-BetaMFAOktaConfig"></a>
# **Set-BetaMFAOktaConfig**
> MfaOktaConfig Set-BetaMFAOktaConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaOktaConfig] <PSCustomObject><br>

Set Okta MFA configuration

This API sets the configuration of an Okta MFA method. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$MfaOktaConfig = Initialize-MfaOktaConfig -MfaMethod "okta-verify" -Enabled $true -VarHost "example.com" -AccessKey "qw123Y3QlA5UqocYpdU3rEkzrK2D497y" -IdentityAttribute "email" # MfaOktaConfig | 

# Set Okta MFA configuration
try {
    $Result = Set-BetaMFAOktaConfig -MfaOktaConfig $MfaOktaConfig
} catch {
    Write-Host ("Exception occurred when calling Set-BetaMFAOktaConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Test-BetaMFAConfig"></a>
# **Test-BetaMFAConfig**
> MfaConfigTestResponse Test-BetaMFAConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Method] <String><br>

MFA method's test configuration

This API validates that the configuration is valid and will properly authenticate with the MFA provider identified by the method path parameter. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Method = "okta-verify" # String | The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

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
 **Method** | **String**| The name of the MFA method. The currently supported method names are &#39;okta-verify&#39; and &#39;duo-web&#39;. | 

### Return type

[**MfaConfigTestResponse**](MfaConfigTestResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

