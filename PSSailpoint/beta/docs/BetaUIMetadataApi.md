# PSSailpointBeta.PSSailpointBeta\Api.BetaUIMetadataApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaTenantUiMetadata**](BetaUIMetadataApi.md#Get-BetaTenantUiMetadata) | **GET** /ui-metadata/tenant | Get a tenant UI metadata
[**Set-BetaTenantUiMetadata**](BetaUIMetadataApi.md#Set-BetaTenantUiMetadata) | **PUT** /ui-metadata/tenant | Update tenant UI metadata


<a id="Get-BetaTenantUiMetadata"></a>
# **Get-BetaTenantUiMetadata**
> TenantUiMetadataItemResponse Get-BetaTenantUiMetadata<br>

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


# Get a tenant UI metadata
try {
    $Result = Get-BetaTenantUiMetadata
} catch {
    Write-Host ("Exception occurred when calling Get-BetaTenantUiMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantUiMetadataItemResponse**](TenantUiMetadataItemResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-BetaTenantUiMetadata"></a>
# **Set-BetaTenantUiMetadata**
> TenantUiMetadataItemResponse Set-BetaTenantUiMetadata<br>
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

$TenantUiMetadataItemUpdateRequest = Initialize-TenantUiMetadataItemUpdateRequest -IframeWhiteList "http://example.com http://example2.com" -UsernameLabel "Email" -UsernameEmptyText "Please provide your work email address..." # TenantUiMetadataItemUpdateRequest | 

# Update tenant UI metadata
try {
    $Result = Set-BetaTenantUiMetadata -TenantUiMetadataItemUpdateRequest $TenantUiMetadataItemUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Set-BetaTenantUiMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantUiMetadataItemUpdateRequest** | [**TenantUiMetadataItemUpdateRequest**](TenantUiMetadataItemUpdateRequest.md)|  | 

### Return type

[**TenantUiMetadataItemResponse**](TenantUiMetadataItemResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

