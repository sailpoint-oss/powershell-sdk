# PSSailpointCC.PSSailpointCC/Api.CCApplicationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CCApplication**](CCApplicationsApi.md#New-CCApplication) | **POST** /cc/api/app/create | Create Application
[**Invoke-CCDeleteApplication**](CCApplicationsApi.md#Invoke-CCDeleteApplication) | **POST** /cc/api/app/delete/:id | Delete Application
[**Get-CCApplication**](CCApplicationsApi.md#Get-CCApplication) | **GET** /cc/api/app/get/:id | Get Single Application
[**Get-CCApplicationAccessProfiles**](CCApplicationsApi.md#Get-CCApplicationAccessProfiles) | **GET** /cc/api/app/getAccessProfiles/:id | Get Access Profiles for Application
[**Invoke-CCListApplications**](CCApplicationsApi.md#Invoke-CCListApplications) | **GET** /cc/api/app | List Applications
[**Update-CCApplication**](CCApplicationsApi.md#Update-CCApplication) | **POST** /cc/api/app/update/:id | Update Application


<a name="New-CCApplication"></a>
# **New-CCApplication**
> void New-CCApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateApplicationRequest] <PSCustomObject><br>

Create Application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CreateApplicationRequest = Initialize-CreateApplicationRequest -Name "My App" -Description "MyDescription" # CreateApplicationRequest |  (optional)

# Create Application
try {
    $Result = New-CCApplication -CreateApplicationRequest $CreateApplicationRequest
} catch {
    Write-Host ("Exception occurred when calling New-CCApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateApplicationRequest** | [**CreateApplicationRequest**](CreateApplicationRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-CCDeleteApplication"></a>
# **Invoke-CCDeleteApplication**
> void Invoke-CCDeleteApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String |  (optional)

# Delete Application
try {
    $Result = Invoke-CCDeleteApplication -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-CCDeleteApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CCApplication"></a>
# **Get-CCApplication**
> void Get-CCApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Single Application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String |  (optional)

# Get Single Application
try {
    $Result = Get-CCApplication -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CCApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CCApplicationAccessProfiles"></a>
# **Get-CCApplicationAccessProfiles**
> void Get-CCApplicationAccessProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Access Profiles for Application

### Example
```powershell
$Id = "12345" # String |  (optional)

# Get Access Profiles for Application
try {
    $Result = Get-CCApplicationAccessProfiles -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CCApplicationAccessProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-CCListApplications"></a>
# **Invoke-CCListApplications**
> void Invoke-CCListApplications<br>

List Applications

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Applications
try {
    $Result = Invoke-CCListApplications
} catch {
    Write-Host ("Exception occurred when calling Invoke-CCListApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-CCApplication"></a>
# **Update-CCApplication**
> void Update-CCApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateApplicationRequest] <PSCustomObject><br>

Update Application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String |  (optional)
$UpdateApplicationRequest = Initialize-UpdateApplicationRequest -Description "MyDescription" # UpdateApplicationRequest |  (optional)

# Update Application
try {
    $Result = Update-CCApplication -Id $Id -UpdateApplicationRequest $UpdateApplicationRequest
} catch {
    Write-Host ("Exception occurred when calling Update-CCApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | [optional] 
 **UpdateApplicationRequest** | [**UpdateApplicationRequest**](UpdateApplicationRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

