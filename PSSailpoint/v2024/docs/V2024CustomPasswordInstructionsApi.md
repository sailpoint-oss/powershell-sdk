# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024CustomPasswordInstructionsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024CustomPasswordInstructions**](V2024CustomPasswordInstructionsApi.md#New-V2024CustomPasswordInstructions) | **POST** /custom-password-instructions | Create Custom Password Instructions
[**Remove-V2024CustomPasswordInstructions**](V2024CustomPasswordInstructionsApi.md#Remove-V2024CustomPasswordInstructions) | **DELETE** /custom-password-instructions/{pageId} | Delete Custom Password Instructions by page ID
[**Get-V2024CustomPasswordInstructions**](V2024CustomPasswordInstructionsApi.md#Get-V2024CustomPasswordInstructions) | **GET** /custom-password-instructions/{pageId} | Get Custom Password Instructions by Page ID


<a id="New-V2024CustomPasswordInstructions"></a>
# **New-V2024CustomPasswordInstructions**
> CustomPasswordInstruction New-V2024CustomPasswordInstructions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPasswordInstruction] <PSCustomObject><br>

Create Custom Password Instructions

This API creates the custom password instructions for the specified page ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$CustomPasswordInstruction = Initialize-CustomPasswordInstruction -PageId "change-password:enter-password" -PageContent "MyPageContent" -Locale "en" # CustomPasswordInstruction | 

# Create Custom Password Instructions
try {
    $Result = New-V2024CustomPasswordInstructions -XSailPointExperimental $XSailPointExperimental -CustomPasswordInstruction $CustomPasswordInstruction
} catch {
    Write-Host ("Exception occurred when calling New-V2024CustomPasswordInstructions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **CustomPasswordInstruction** | [**CustomPasswordInstruction**](CustomPasswordInstruction.md)|  | 

### Return type

[**CustomPasswordInstruction**](CustomPasswordInstruction.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024CustomPasswordInstructions"></a>
# **Remove-V2024CustomPasswordInstructions**
> void Remove-V2024CustomPasswordInstructions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Delete Custom Password Instructions by page ID

This API delete the custom password instructions for the specified page ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PageId = "change-password:enter-password" # String | The page ID of custom password instructions to delete.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Locale = "MyLocale" # String | The locale for the custom instructions, a BCP47 language tag. The default value is \""default\"". (optional)

# Delete Custom Password Instructions by page ID
try {
    $Result = Remove-V2024CustomPasswordInstructions -PageId $PageId -XSailPointExperimental $XSailPointExperimental -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024CustomPasswordInstructions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PageId** | **String**| The page ID of custom password instructions to delete. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Locale** | **String**| The locale for the custom instructions, a BCP47 language tag. The default value is \&quot;&quot;default\&quot;&quot;. | [optional] 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CustomPasswordInstructions"></a>
# **Get-V2024CustomPasswordInstructions**
> CustomPasswordInstruction Get-V2024CustomPasswordInstructions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Get Custom Password Instructions by Page ID

This API returns the custom password instructions for the specified page ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PageId = "change-password:enter-password" # String | The page ID of custom password instructions to query.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Locale = "MyLocale" # String | The locale for the custom instructions, a BCP47 language tag. The default value is \""default\"". (optional)

# Get Custom Password Instructions by Page ID
try {
    $Result = Get-V2024CustomPasswordInstructions -PageId $PageId -XSailPointExperimental $XSailPointExperimental -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CustomPasswordInstructions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PageId** | **String**| The page ID of custom password instructions to query. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Locale** | **String**| The locale for the custom instructions, a BCP47 language tag. The default value is \&quot;&quot;default\&quot;&quot;. | [optional] 

### Return type

[**CustomPasswordInstruction**](CustomPasswordInstruction.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

