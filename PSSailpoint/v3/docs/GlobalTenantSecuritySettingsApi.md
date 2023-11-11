# PSSailpoint.PSSailpoint/Api.GlobalTenantSecuritySettingsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-AuthOrgNetworkConfig**](GlobalTenantSecuritySettingsApi.md#New-AuthOrgNetworkConfig) | **POST** /auth-org/network-config | Create security network configuration.
[**Get-AuthOrgNetworkConfig**](GlobalTenantSecuritySettingsApi.md#Get-AuthOrgNetworkConfig) | **GET** /auth-org/network-config | Get security network configuration.
[**Update-AuthOrgNetworkConfig**](GlobalTenantSecuritySettingsApi.md#Update-AuthOrgNetworkConfig) | **PATCH** /auth-org/network-config | Update security network configuration.


<a name="New-AuthOrgNetworkConfig"></a>
# **New-AuthOrgNetworkConfig**
> NetworkConfiguration New-AuthOrgNetworkConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NetworkConfiguration] <PSCustomObject><br>

Create security network configuration.

This API returns the details of an org's network auth configuration. Requires security scope of: 'sp:auth-org:create'

### Example
```powershell
$NetworkConfiguration = Initialize-NetworkConfiguration -Range "MyRange" -Geolocation "MyGeolocation" -Whitelisted $true # NetworkConfiguration | Network configuration creation request body.   The following constraints ensure the request body conforms to certain logical guidelines, which are:   1. Each string element in the range array must be a valid ip address or ip subnet mask.   2. Each string element in the geolocation array must be 2 characters, and they can only be uppercase letters.

# Create security network configuration.
try {
    $Result = New-AuthOrgNetworkConfig -NetworkConfiguration $NetworkConfiguration
} catch {
    Write-Host ("Exception occurred when calling New-AuthOrgNetworkConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NetworkConfiguration** | [**NetworkConfiguration**](NetworkConfiguration.md)| Network configuration creation request body.   The following constraints ensure the request body conforms to certain logical guidelines, which are:   1. Each string element in the range array must be a valid ip address or ip subnet mask.   2. Each string element in the geolocation array must be 2 characters, and they can only be uppercase letters. | 

### Return type

[**NetworkConfiguration**](NetworkConfiguration.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AuthOrgNetworkConfig"></a>
# **Get-AuthOrgNetworkConfig**
> NetworkConfiguration Get-AuthOrgNetworkConfig<br>

Get security network configuration.

This API returns the details of an org's network auth configuration. Requires security scope of: 'sp:auth-org:read'

### Example
```powershell

# Get security network configuration.
try {
    $Result = Get-AuthOrgNetworkConfig
} catch {
    Write-Host ("Exception occurred when calling Get-AuthOrgNetworkConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NetworkConfiguration**](NetworkConfiguration.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-AuthOrgNetworkConfig"></a>
# **Update-AuthOrgNetworkConfig**
> NetworkConfiguration Update-AuthOrgNetworkConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update security network configuration.

This API updates an existing network configuration for an org using PATCH  Requires security scope of:  'sp:auth-org:update'

### Example
```powershell
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of auth org network configuration update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Ensures that the patched Network Config conforms to certain logical guidelines, which are:   1. Each string element in the range array must be a valid ip address or ip subnet mask.   2. Each string element in the geolocation array must be 2 characters, and they can only be uppercase letters.

# Update security network configuration.
try {
    $Result = Update-AuthOrgNetworkConfig -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-AuthOrgNetworkConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of auth org network configuration update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Ensures that the patched Network Config conforms to certain logical guidelines, which are:   1. Each string element in the range array must be a valid ip address or ip subnet mask.   2. Each string element in the geolocation array must be 2 characters, and they can only be uppercase letters. | 

### Return type

[**NetworkConfiguration**](NetworkConfiguration.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

