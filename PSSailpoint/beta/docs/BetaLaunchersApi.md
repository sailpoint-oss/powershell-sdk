# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaLaunchersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaLauncher**](BetaLaunchersApi.md#Get-BetaLauncher) | **GET** /launchers/{launcherID} | Get Launcher by ID
[**Get-BetaLaunchers**](BetaLaunchersApi.md#Get-BetaLaunchers) | **GET** /launchers | List all Launchers for tenant
[**Start-BetaLauncher**](BetaLaunchersApi.md#Start-BetaLauncher) | **POST** /beta/launchers/{launcherID}/launch | Launch a Launcher


<a id="Get-BetaLauncher"></a>
# **Get-BetaLauncher**
> Launcher Get-BetaLauncher<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherID] <String><br>

Get Launcher by ID

Get details for the given Launcher ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LauncherID = "e3012408-8b61-4564-ad41-c5ec131c325b" # String | ID of the Launcher to be retrieved

# Get Launcher by ID
try {
    $Result = Get-BetaLauncher -LauncherID $LauncherID
} catch {
    Write-Host ("Exception occurred when calling Get-BetaLauncher: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherID** | **String**| ID of the Launcher to be retrieved | 

### Return type

[**Launcher**](Launcher.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaLaunchers"></a>
# **Get-BetaLaunchers**
> GetLaunchers200Response Get-BetaLaunchers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Next] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Launchers for tenant

Return a list of Launchers for the authenticated tenant

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "disabled eq "true"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **description**: *sw*  **disabled**: *eq*  **name**: *sw* (optional)
$Next = "eyJuZXh0IjoxMjN9Cg==" # String | Pagination marker (optional)
$Limit = 42 # Int32 | Number of Launchers to return (optional) (default to 10)

# List all Launchers for tenant
try {
    $Result = Get-BetaLaunchers -Filters $Filters -Next $Next -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-BetaLaunchers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **description**: *sw*  **disabled**: *eq*  **name**: *sw* | [optional] 
 **Next** | **String**| Pagination marker | [optional] 
 **Limit** | **Int32**| Number of Launchers to return | [optional] [default to 10]

### Return type

[**GetLaunchers200Response**](GetLaunchers200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-BetaLauncher"></a>
# **Start-BetaLauncher**
> StartLauncher200Response Start-BetaLauncher<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherID] <String><br>

Launch a Launcher

Launch the given Launcher ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LauncherID = "e3012408-8b61-4564-ad41-c5ec131c325b" # String | ID of the Launcher to be launched

# Launch a Launcher
try {
    $Result = Start-BetaLauncher -LauncherID $LauncherID
} catch {
    Write-Host ("Exception occurred when calling Start-BetaLauncher: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherID** | **String**| ID of the Launcher to be launched | 

### Return type

[**StartLauncher200Response**](StartLauncher200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

