# Tm.V2024.Tm.V2024\Api.V2024IAIRecommendationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024Recommendations**](V2024IAIRecommendationsApi.md#Get-V2024Recommendations) | **POST** /recommendations/request | Returns a Recommendation Based on Object
[**Get-V2024RecommendationsConfig**](V2024IAIRecommendationsApi.md#Get-V2024RecommendationsConfig) | **GET** /recommendations/config | Get certification recommendation config values
[**Update-V2024RecommendationsConfig**](V2024IAIRecommendationsApi.md#Update-V2024RecommendationsConfig) | **PUT** /recommendations/config | Update certification recommendation config values


<a id="Get-V2024Recommendations"></a>
# **Get-V2024Recommendations**
> RecommendationResponseDto Get-V2024Recommendations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecommendationRequestDto] <PSCustomObject><br>

Returns a Recommendation Based on Object

The getRecommendations API returns recommendations based on the requested object. The recommendations are invoked by IdentityIQ and IdentityNow plug-ins that retrieve recommendations based on the performed calculations.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$AccessItemRef = Initialize-AccessItemRef -Id "2c938083633d259901633d2623ec0375" -Type "ENTITLEMENT"
$RecommendationRequest = Initialize-RecommendationRequest -IdentityId "2c938083633d259901633d25c68c00fa" -Item $AccessItemRef

$RecommendationRequestDto = Initialize-RecommendationRequestDto -Requests $RecommendationRequest -ExcludeInterpretations $false -IncludeTranslationMessages $false -IncludeDebugInformation $true -PrescribeMode $false # RecommendationRequestDto | 

# Returns a Recommendation Based on Object
try {
    $Result = Get-V2024Recommendations -XSailPointExperimental $XSailPointExperimental -RecommendationRequestDto $RecommendationRequestDto
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Recommendations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **RecommendationRequestDto** | [**RecommendationRequestDto**](RecommendationRequestDto.md)|  | 

### Return type

[**RecommendationResponseDto**](RecommendationResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RecommendationsConfig"></a>
# **Get-V2024RecommendationsConfig**
> RecommendationConfigDto Get-V2024RecommendationsConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get certification recommendation config values

Retrieves configuration attributes used by certification recommendations.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get certification recommendation config values
try {
    $Result = Get-V2024RecommendationsConfig -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RecommendationsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RecommendationConfigDto**](RecommendationConfigDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024RecommendationsConfig"></a>
# **Update-V2024RecommendationsConfig**
> RecommendationConfigDto Update-V2024RecommendationsConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecommendationConfigDto] <PSCustomObject><br>

Update certification recommendation config values

Updates configuration attributes used by certification recommendations.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RecommendationConfigDto = Initialize-RecommendationConfigDto -RecommenderFeatures "MyRecommenderFeatures" -PeerGroupPercentageThreshold 0.5 -RunAutoSelectOnce $false -OnlyTuneThreshold $false # RecommendationConfigDto | 

# Update certification recommendation config values
try {
    $Result = Update-V2024RecommendationsConfig -XSailPointExperimental $XSailPointExperimental -RecommendationConfigDto $RecommendationConfigDto
} catch {
    Write-Host ("Exception occurred when calling Update-V2024RecommendationsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **RecommendationConfigDto** | [**RecommendationConfigDto**](RecommendationConfigDto.md)|  | 

### Return type

[**RecommendationConfigDto**](RecommendationConfigDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

