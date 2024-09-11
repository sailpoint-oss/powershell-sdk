# Tm.V2024.Tm.V2024\Api.V2024UIMetadataApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024TenantUiMetadata**](V2024UIMetadataApi.md#Get-V2024TenantUiMetadata) | **GET** /ui-metadata/tenant | Get a tenant UI metadata
[**Set-V2024TenantUiMetadata**](V2024UIMetadataApi.md#Set-V2024TenantUiMetadata) | **PUT** /ui-metadata/tenant | Update tenant UI metadata


<a id="Get-V2024TenantUiMetadata"></a>
# **Get-V2024TenantUiMetadata**
> TenantUiMetadataItemResponse Get-V2024TenantUiMetadata<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get a tenant UI metadata

This API endpoint retrieves UI metadata configured for your tenant. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get a tenant UI metadata
try {
    $Result = Get-V2024TenantUiMetadata -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024TenantUiMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**TenantUiMetadataItemResponse**](TenantUiMetadataItemResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024TenantUiMetadata"></a>
# **Set-V2024TenantUiMetadata**
> TenantUiMetadataItemResponse Set-V2024TenantUiMetadata<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantUiMetadataItemUpdateRequest] <PSCustomObject><br>

Update tenant UI metadata

This API endpoint updates UI metadata for your tenant. These changes may require up to 5 minutes to take effect on the UI. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$TenantUiMetadataItemUpdateRequest = Initialize-TenantUiMetadataItemUpdateRequest -IframeWhiteList "http://example.com http://example2.com" -UsernameLabel "Email" -UsernameEmptyText "Please provide your work email address..." # TenantUiMetadataItemUpdateRequest | 

# Update tenant UI metadata
try {
    $Result = Set-V2024TenantUiMetadata -XSailPointExperimental $XSailPointExperimental -TenantUiMetadataItemUpdateRequest $TenantUiMetadataItemUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Set-V2024TenantUiMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **TenantUiMetadataItemUpdateRequest** | [**TenantUiMetadataItemUpdateRequest**](TenantUiMetadataItemUpdateRequest.md)|  | 

### Return type

[**TenantUiMetadataItemResponse**](TenantUiMetadataItemResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

