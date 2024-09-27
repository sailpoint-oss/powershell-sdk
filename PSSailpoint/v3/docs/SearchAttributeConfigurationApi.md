# PSSailpoint.V3.PSSailpoint.V3\Api.SearchAttributeConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SearchAttributeConfig**](SearchAttributeConfigurationApi.md#New-SearchAttributeConfig) | **POST** /accounts/search-attribute-config | Configure/create search attributes in IdentityNow.
[**Remove-SearchAttributeConfig**](SearchAttributeConfigurationApi.md#Remove-SearchAttributeConfig) | **DELETE** /accounts/search-attribute-config/{name} | Delete search attribute in IdentityNow.
[**Get-SearchAttributeConfig**](SearchAttributeConfigurationApi.md#Get-SearchAttributeConfig) | **GET** /accounts/search-attribute-config | Retrieve attribute list in IdentityNow.
[**Get-SingleSearchAttributeConfig**](SearchAttributeConfigurationApi.md#Get-SingleSearchAttributeConfig) | **GET** /accounts/search-attribute-config/{name} | Get specific attribute in IdentityNow.
[**Update-SearchAttributeConfig**](SearchAttributeConfigurationApi.md#Update-SearchAttributeConfig) | **PATCH** /accounts/search-attribute-config/{name} | Update search attribute in IdentityNow.


<a id="New-SearchAttributeConfig"></a>
# **New-SearchAttributeConfig**
> SystemCollectionsHashtable New-SearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchAttributeConfig] <PSCustomObject><br>

Configure/create search attributes in IdentityNow.

This API accepts an attribute name, an attribute display name and a list of name/value pair associates of application IDs to attribute names.  It will then validate the inputs and configure/create and attribute promotion configuration in the Link ObjectConfig.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SearchAttributeConfig = Initialize-SearchAttributeConfig -Name "newMailAttribute" -DisplayName "New Mail Attribute" -ApplicationAttributes # SearchAttributeConfig | 

# Configure/create search attributes in IdentityNow.
try {
    $Result = New-SearchAttributeConfig -SearchAttributeConfig $SearchAttributeConfig
} catch {
    Write-Host ("Exception occurred when calling New-SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SearchAttributeConfig** | [**SearchAttributeConfig**](SearchAttributeConfig.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-SearchAttributeConfig"></a>
# **Remove-SearchAttributeConfig**
> void Remove-SearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete search attribute in IdentityNow.

This API accepts an extended search attribute name and deletes the corresponding extended attribute configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to delete.

# Delete search attribute in IdentityNow.
try {
    $Result = Remove-SearchAttributeConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Remove-SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the extended search attribute configuration to delete. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SearchAttributeConfig"></a>
# **Get-SearchAttributeConfig**
> SearchAttributeConfig[] Get-SearchAttributeConfig<br>

Retrieve attribute list in IdentityNow.

This API retrieves a list of extended search attribute/application associates currently configured in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Retrieve attribute list in IdentityNow.
try {
    $Result = Get-SearchAttributeConfig
} catch {
    Write-Host ("Exception occurred when calling Get-SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SearchAttributeConfig[]**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SingleSearchAttributeConfig"></a>
# **Get-SingleSearchAttributeConfig**
> SearchAttributeConfig[] Get-SingleSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get specific attribute in IdentityNow.

This API accepts an extended search attribute name and retrieves the corresponding extended attribute configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to retrieve.

# Get specific attribute in IdentityNow.
try {
    $Result = Get-SingleSearchAttributeConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-SingleSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the extended search attribute configuration to retrieve. | 

### Return type

[**SearchAttributeConfig[]**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-SearchAttributeConfig"></a>
# **Update-SearchAttributeConfig**
> SearchAttributeConfig Update-SearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update search attribute in IdentityNow.

This API updates an existing Search Attribute Configuration. The following fields are patchable: **name**, **displayName**, **applicationAttributes**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "promotedMailAttribute" # String | Name of the Search Attribute Configuration to patch.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Update search attribute in IdentityNow.
try {
    $Result = Update-SearchAttributeConfig -Name $Name -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the Search Attribute Configuration to patch. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**SearchAttributeConfig**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

