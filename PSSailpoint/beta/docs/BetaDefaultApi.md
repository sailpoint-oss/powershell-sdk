# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaDefaultApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaLauncher**](BetaDefaultApi.md#New-BetaLauncher) | **POST** /launchers | Create launcher
[**Remove-BetaLauncher**](BetaDefaultApi.md#Remove-BetaLauncher) | **DELETE** /launchers/{launcherID} | Delete Launcher
[**Send-BetaLauncher**](BetaDefaultApi.md#Send-BetaLauncher) | **PUT** /launchers/{launcherID} | Replace Launcher


<a id="New-BetaLauncher"></a>
# **New-BetaLauncher**
> Launcher New-BetaLauncher<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherRequest] <PSCustomObject><br>

Create launcher

Create a Launcher with given information

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LauncherRequestReference = Initialize-LauncherRequestReference -Type "WORKFLOW" -Id "2fd6ff94-2081-4d29-acbc-83a0a2f744a5"
$LauncherRequest = Initialize-LauncherRequest -Name "Group Create" -Description "Create a new Active Directory Group" -Type "INTERACTIVE_PROCESS" -Disabled $false -Reference $LauncherRequestReference -Config "{"workflowId" : "6b42d9be-61b6-46af-827e-ea29ba8aa3d9"}" # LauncherRequest | Payload to create a Launcher

# Create launcher
try {
    $Result = New-BetaLauncher -LauncherRequest $LauncherRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaLauncher: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherRequest** | [**LauncherRequest**](LauncherRequest.md)| Payload to create a Launcher | 

### Return type

[**Launcher**](Launcher.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaLauncher"></a>
# **Remove-BetaLauncher**
> void Remove-BetaLauncher<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherID] <String><br>

Delete Launcher

Delete the given Launcher ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LauncherID = "e3012408-8b61-4564-ad41-c5ec131c325b" # String | ID of the Launcher to be deleted

# Delete Launcher
try {
    $Result = Remove-BetaLauncher -LauncherID $LauncherID
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaLauncher: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherID** | **String**| ID of the Launcher to be deleted | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaLauncher"></a>
# **Send-BetaLauncher**
> Launcher Send-BetaLauncher<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherRequest] <PSCustomObject><br>

Replace Launcher

Replace the given Launcher ID with given payload

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LauncherID = "e3012408-8b61-4564-ad41-c5ec131c325b" # String | ID of the Launcher to be replaced
$LauncherRequestReference = Initialize-LauncherRequestReference -Type "WORKFLOW" -Id "2fd6ff94-2081-4d29-acbc-83a0a2f744a5"
$LauncherRequest = Initialize-LauncherRequest -Name "Group Create" -Description "Create a new Active Directory Group" -Type "INTERACTIVE_PROCESS" -Disabled $false -Reference $LauncherRequestReference -Config "{"workflowId" : "6b42d9be-61b6-46af-827e-ea29ba8aa3d9"}" # LauncherRequest | Payload to replace Launcher

# Replace Launcher
try {
    $Result = Send-BetaLauncher -LauncherID $LauncherID -LauncherRequest $LauncherRequest
} catch {
    Write-Host ("Exception occurred when calling Send-BetaLauncher: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherID** | **String**| ID of the Launcher to be replaced | 
 **LauncherRequest** | [**LauncherRequest**](LauncherRequest.md)| Payload to replace Launcher | 

### Return type

[**Launcher**](Launcher.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

