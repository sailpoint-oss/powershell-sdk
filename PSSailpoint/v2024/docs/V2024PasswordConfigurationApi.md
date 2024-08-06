# PSSailpointV2024.PSSailpointV2024\Api.V2024PasswordConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024PasswordOrgConfig**](V2024PasswordConfigurationApi.md#New-V2024PasswordOrgConfig) | **POST** /password-org-config | Create Password Org Config
[**Get-V2024PasswordOrgConfig**](V2024PasswordConfigurationApi.md#Get-V2024PasswordOrgConfig) | **GET** /password-org-config | Get Password Org Config
[**Send-V2024PasswordOrgConfig**](V2024PasswordConfigurationApi.md#Send-V2024PasswordOrgConfig) | **PUT** /password-org-config | Update Password Org Config


<a id="New-V2024PasswordOrgConfig"></a>
# **New-V2024PasswordOrgConfig**
> PasswordOrgConfig New-V2024PasswordOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordOrgConfig] <PSCustomObject><br>

Create Password Org Config

This API creates the password org config. Unspecified fields will use default value. To be able to use the custom password instructions, you must set the `customInstructionsEnabled` field to ""true"". Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:write'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordOrgConfig = Initialize-PasswordOrgConfig -CustomInstructionsEnabled $true -DigitTokenEnabled $true -DigitTokenDurationMinutes 10 -DigitTokenLength 9 # PasswordOrgConfig | 

# Create Password Org Config
try {
    $Result = New-V2024PasswordOrgConfig -PasswordOrgConfig $PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling New-V2024PasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-V2024PasswordOrgConfig"></a>
# **Get-V2024PasswordOrgConfig**
> PasswordOrgConfig Get-V2024PasswordOrgConfig<br>

Get Password Org Config

This API returns the password org config . Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Password Org Config
try {
    $Result = Get-V2024PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Send-V2024PasswordOrgConfig"></a>
# **Send-V2024PasswordOrgConfig**
> PasswordOrgConfig Send-V2024PasswordOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordOrgConfig] <PSCustomObject><br>

Update Password Org Config

This API updates the password org config for specified fields. Other fields will keep original value. You must set the `customInstructionsEnabled` field to ""true"" to be able to use custom password instructions.  Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:write'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordOrgConfig = Initialize-PasswordOrgConfig -CustomInstructionsEnabled $true -DigitTokenEnabled $true -DigitTokenDurationMinutes 10 -DigitTokenLength 9 # PasswordOrgConfig | 

# Update Password Org Config
try {
    $Result = Send-V2024PasswordOrgConfig -PasswordOrgConfig $PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Send-V2024PasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

