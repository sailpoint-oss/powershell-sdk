# PSSailpointBeta.PSSailpointBeta/Api.BetaIAIRecommendationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaRecommendations**](BetaIAIRecommendationsApi.md#Get-BetaRecommendations) | **POST** /recommendations/request | Returns a Recommendation Based on Object
[**Get-BetaRecommendationsConfig**](BetaIAIRecommendationsApi.md#Get-BetaRecommendationsConfig) | **GET** /recommendations/config | Get certification recommendation config values
[**Update-BetaRecommendationsConfig**](BetaIAIRecommendationsApi.md#Update-BetaRecommendationsConfig) | **PUT** /recommendations/config | Update certification recommendation config values


<a name="Get-BetaRecommendations"></a>
# **Get-BetaRecommendations**
> RecommendationResponseDto Get-BetaRecommendations<br>
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

$AccessItemRef = Initialize-AccessItemRef -Id "2c938083633d259901633d2623ec0375" -Type "ENTITLEMENT"
$RecommendationRequest = Initialize-RecommendationRequest -IdentityId "2c938083633d259901633d25c68c00fa" -Item $AccessItemRef

$RecommendationRequestDto = Initialize-RecommendationRequestDto -Requests $RecommendationRequest -ExcludeInterpretations $false -IncludeTranslationMessages $false -IncludeDebugInformation $true -PrescribeMode $false # RecommendationRequestDto | 

# Returns a Recommendation Based on Object
try {
    $Result = Get-BetaRecommendations -RecommendationRequestDto $RecommendationRequestDto
} catch {
    Write-Host ("Exception occurred when calling Get-BetaRecommendations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RecommendationRequestDto** | [**RecommendationRequestDto**](RecommendationRequestDto.md)|  | 

### Return type

[**RecommendationResponseDto**](RecommendationResponseDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaRecommendationsConfig"></a>
# **Get-BetaRecommendationsConfig**
> RecommendationConfigDto Get-BetaRecommendationsConfig<br>

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


# Get certification recommendation config values
try {
    $Result = Get-BetaRecommendationsConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaRecommendationsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RecommendationConfigDto**](RecommendationConfigDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaRecommendationsConfig"></a>
# **Update-BetaRecommendationsConfig**
> RecommendationConfigDto Update-BetaRecommendationsConfig<br>
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

$RecommendationConfigDto = Initialize-RecommendationConfigDto -RecommenderFeatures "MyRecommenderFeatures" -PeerGroupPercentageThreshold 0.5 -RunAutoSelectOnce $false -OnlyTuneThreshold $false # RecommendationConfigDto | 

# Update certification recommendation config values
try {
    $Result = Update-BetaRecommendationsConfig -RecommendationConfigDto $RecommendationConfigDto
} catch {
    Write-Host ("Exception occurred when calling Update-BetaRecommendationsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RecommendationConfigDto** | [**RecommendationConfigDto**](RecommendationConfigDto.md)|  | 

### Return type

[**RecommendationConfigDto**](RecommendationConfigDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

