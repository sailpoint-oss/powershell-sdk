# PSSailpoint.V3.PSSailpoint.V3\Api.PasswordConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PasswordOrgConfig**](PasswordConfigurationApi.md#New-PasswordOrgConfig) | **POST** /password-org-config | Create Password Org Config
[**Get-PasswordOrgConfig**](PasswordConfigurationApi.md#Get-PasswordOrgConfig) | **GET** /password-org-config | Get Password Org Config
[**Send-PasswordOrgConfig**](PasswordConfigurationApi.md#Send-PasswordOrgConfig) | **PUT** /password-org-config | Update Password Org Config


<a id="New-PasswordOrgConfig"></a>
# **New-PasswordOrgConfig**
> PasswordOrgConfig New-PasswordOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordOrgConfig] <PSCustomObject><br>

Create Password Org Config

This API creates the password org config. Unspecified fields will use default value. To be able to use the custom password instructions, you must set the `customInstructionsEnabled` field to ""true"". Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:write'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordOrgConfig = Initialize-PasswordOrgConfig -CustomInstructionsEnabled $true -DigitTokenEnabled $true -DigitTokenDurationMinutes 10 -DigitTokenLength 9 # PasswordOrgConfig | 

# Create Password Org Config
try {
    $Result = New-PasswordOrgConfig -PasswordOrgConfig $PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling New-PasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PasswordOrgConfig"></a>
# **Get-PasswordOrgConfig**
> PasswordOrgConfig Get-PasswordOrgConfig<br>

Get Password Org Config

This API returns the password org config . Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Password Org Config
try {
    $Result = Get-PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PasswordOrgConfig**](PasswordOrgConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-PasswordOrgConfig"></a>
# **Send-PasswordOrgConfig**
> PasswordOrgConfig Send-PasswordOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordOrgConfig] <PSCustomObject><br>

Update Password Org Config

This API updates the password org config for specified fields. Other fields will keep original value. You must set the `customInstructionsEnabled` field to ""true"" to be able to use custom password instructions.  Requires ORG_ADMIN, API role or authorization scope of 'idn:password-org-config:write'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordOrgConfig = Initialize-PasswordOrgConfig -CustomInstructionsEnabled $true -DigitTokenEnabled $true -DigitTokenDurationMinutes 10 -DigitTokenLength 9 # PasswordOrgConfig | 

# Update Password Org Config
try {
    $Result = Send-PasswordOrgConfig -PasswordOrgConfig $PasswordOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Send-PasswordOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

