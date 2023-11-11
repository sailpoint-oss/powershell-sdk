# PSSailpointBeta.PSSailpointBeta/Api.BetaPublicIdentitiesConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaPublicIdentityConfig**](BetaPublicIdentitiesConfigApi.md#Get-BetaPublicIdentityConfig) | **GET** /public-identities-config | Get Public Identity Config
[**Update-BetaPublicIdentityConfig**](BetaPublicIdentitiesConfigApi.md#Update-BetaPublicIdentityConfig) | **PUT** /public-identities-config | Update Public Identity Config


<a name="Get-BetaPublicIdentityConfig"></a>
# **Get-BetaPublicIdentityConfig**
> PublicIdentityConfig Get-BetaPublicIdentityConfig<br>

Get Public Identity Config

This gets details of public identity config.

### Example
```powershell

# Get Public Identity Config
try {
    $Result = Get-BetaPublicIdentityConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaPublicIdentityConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-BetaPublicIdentityConfig"></a>
# **Update-BetaPublicIdentityConfig**
> PublicIdentityConfig Update-BetaPublicIdentityConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PublicIdentityConfig] <PSCustomObject><br>

Update Public Identity Config

This updates the details of public identity config.

### Example
```powershell
$PublicIdentityAttributeConfig = Initialize-PublicIdentityAttributeConfig -Key "country" -Name "Country"
$IdentityReference = Initialize-IdentityReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Thomas Edison"
$PublicIdentityConfig = Initialize-PublicIdentityConfig -Attributes $PublicIdentityAttributeConfig -ModifiedBy $IdentityReference -Modified (Get-Date) # PublicIdentityConfig | 

# Update Public Identity Config
try {
    $Result = Update-BetaPublicIdentityConfig -PublicIdentityConfig $PublicIdentityConfig
} catch {
    Write-Host ("Exception occurred when calling Update-BetaPublicIdentityConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

