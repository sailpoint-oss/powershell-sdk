# PSSailpoint.PSSailpoint/Api.PublicIdentitiesConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-PublicIdentityConfig**](PublicIdentitiesConfigApi.md#Get-PublicIdentityConfig) | **GET** /public-identities-config | Get the Public Identities Configuration
[**Update-PublicIdentityConfig**](PublicIdentitiesConfigApi.md#Update-PublicIdentityConfig) | **PUT** /public-identities-config | Update the Public Identities Configuration


<a name="Get-PublicIdentityConfig"></a>
# **Get-PublicIdentityConfig**
> PublicIdentityConfig Get-PublicIdentityConfig<br>

Get the Public Identities Configuration

Returns the publicly visible attributes of an identity available to request approvers for Access Requests and Certification Campaigns. A token with ORG ADMIN authority is required to call this API.

### Example
```powershell

# Get the Public Identities Configuration
try {
    $Result = Get-PublicIdentityConfig
} catch {
    Write-Host ("Exception occurred when calling Get-PublicIdentityConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PublicIdentityConfig**](PublicIdentityConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PublicIdentityConfig"></a>
# **Update-PublicIdentityConfig**
> PublicIdentityConfig Update-PublicIdentityConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PublicIdentityConfig] <PSCustomObject><br>

Update the Public Identities Configuration

Updates the publicly visible attributes of an identity available to request approvers for Access Requests and Certification Campaigns. A token with ORG ADMIN authority is required to call this API.

### Example
```powershell
$PublicIdentityAttributeConfig = Initialize-PublicIdentityAttributeConfig -Key "country" -Name "Country"
$IdentityReference = Initialize-IdentityReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Thomas Edison"
$PublicIdentityConfig = Initialize-PublicIdentityConfig -Attributes $PublicIdentityAttributeConfig -Modified (Get-Date) -ModifiedBy $IdentityReference # PublicIdentityConfig | 

# Update the Public Identities Configuration
try {
    $Result = Update-PublicIdentityConfig -PublicIdentityConfig $PublicIdentityConfig
} catch {
    Write-Host ("Exception occurred when calling Update-PublicIdentityConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

