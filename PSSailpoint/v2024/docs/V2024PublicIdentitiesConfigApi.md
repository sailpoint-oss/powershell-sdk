# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024PublicIdentitiesConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024PublicIdentityConfig**](V2024PublicIdentitiesConfigApi.md#Get-V2024PublicIdentityConfig) | **GET** /public-identities-config | Get the Public Identities Configuration
[**Update-V2024PublicIdentityConfig**](V2024PublicIdentitiesConfigApi.md#Update-V2024PublicIdentityConfig) | **PUT** /public-identities-config | Update the Public Identities Configuration


<a id="Get-V2024PublicIdentityConfig"></a>
# **Get-V2024PublicIdentityConfig**
> PublicIdentityConfig Get-V2024PublicIdentityConfig<br>

Get the Public Identities Configuration

Returns the publicly visible attributes of an identity available to request approvers for Access Requests and Certification Campaigns.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get the Public Identities Configuration
try {
    $Result = Get-V2024PublicIdentityConfig
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PublicIdentityConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PublicIdentityConfig**](PublicIdentityConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024PublicIdentityConfig"></a>
# **Update-V2024PublicIdentityConfig**
> PublicIdentityConfig Update-V2024PublicIdentityConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PublicIdentityConfig] <PSCustomObject><br>

Update the Public Identities Configuration

Updates the publicly visible attributes of an identity available to request approvers for Access Requests and Certification Campaigns.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PublicIdentityAttributeConfig = Initialize-PublicIdentityAttributeConfig -Key "country" -Name "Country"
$IdentityReference = Initialize-IdentityReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Thomas Edison"
$PublicIdentityConfig = Initialize-PublicIdentityConfig -Attributes $PublicIdentityAttributeConfig -Modified (Get-Date) -ModifiedBy $IdentityReference # PublicIdentityConfig | 

# Update the Public Identities Configuration
try {
    $Result = Update-V2024PublicIdentityConfig -PublicIdentityConfig $PublicIdentityConfig
} catch {
    Write-Host ("Exception occurred when calling Update-V2024PublicIdentityConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PublicIdentityConfig** | [**PublicIdentityConfig**](PublicIdentityConfig.md)|  | 

### Return type

[**PublicIdentityConfig**](PublicIdentityConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

