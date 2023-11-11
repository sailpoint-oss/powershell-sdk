# PSSailpointBeta.PSSailpointBeta/Api.BetaPasswordConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaPasswordOrgConfig**](BetaPasswordConfigurationApi.md#New-BetaPasswordOrgConfig) | **POST** /password-org-config | Create Password Org Config
[**Get-BetaPasswordOrgConfig**](BetaPasswordConfigurationApi.md#Get-BetaPasswordOrgConfig) | **GET** /password-org-config | Get Password Org Config
[**Send-BetaPasswordOrgConfig**](BetaPasswordConfigurationApi.md#Send-BetaPasswordOrgConfig) | **PUT** /password-org-config | Update Password Org Config


<a name="New-BetaPasswordOrgConfig"></a>
# **New-BetaPasswordOrgConfig**
> PasswordOrgConfig New-BetaPasswordOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordOrgConfig] <PSCustomObject><br>

Create Password Org Config

This API creates the password org config. Unspecified fields will use default value. To be able to use the custom password instructions, you must set the `customInstructionsEnabled` field to ""true"". Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:write'

### Example
```powershell
$PasswordOrgConfig = Initialize-PasswordOrgConfig -CustomInstructionsEnabled $true -DigitTokenEnabled $true -DigitTokenDurationMinutes 10 -DigitTokenLength 9 # PasswordOrgConfig | 

# Create Password Org Config
try {
    $Result = New-BetaPasswordOrgConfig -PasswordOrgConfig $PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling New-BetaPasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordOrgConfig** | [**PasswordOrgConfig**](PasswordOrgConfig.md)|  | 

### Return type

[**PasswordOrgConfig**](PasswordOrgConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaPasswordOrgConfig"></a>
# **Get-BetaPasswordOrgConfig**
> PasswordOrgConfig Get-BetaPasswordOrgConfig<br>

Get Password Org Config

This API returns the password org config . Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:read'

### Example
```powershell

# Get Password Org Config
try {
    $Result = Get-BetaPasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaPasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PasswordOrgConfig**](PasswordOrgConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaPasswordOrgConfig"></a>
# **Send-BetaPasswordOrgConfig**
> PasswordOrgConfig Send-BetaPasswordOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordOrgConfig] <PSCustomObject><br>

Update Password Org Config

This API updates the password org config for specified fields. Other fields will keep original value. You must set the `customInstructionsEnabled` field to ""true"" to be able to use custom password instructions.  Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:write'

### Example
```powershell
$PasswordOrgConfig = Initialize-PasswordOrgConfig -CustomInstructionsEnabled $true -DigitTokenEnabled $true -DigitTokenDurationMinutes 10 -DigitTokenLength 9 # PasswordOrgConfig | 

# Update Password Org Config
try {
    $Result = Send-BetaPasswordOrgConfig -PasswordOrgConfig $PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Send-BetaPasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordOrgConfig** | [**PasswordOrgConfig**](PasswordOrgConfig.md)|  | 

### Return type

[**PasswordOrgConfig**](PasswordOrgConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

