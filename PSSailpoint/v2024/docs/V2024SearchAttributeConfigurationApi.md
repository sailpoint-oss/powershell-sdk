# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SearchAttributeConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024SearchAttributeConfig**](V2024SearchAttributeConfigurationApi.md#New-V2024SearchAttributeConfig) | **POST** /accounts/search-attribute-config | Create Extended Search Attributes
[**Remove-V2024SearchAttributeConfig**](V2024SearchAttributeConfigurationApi.md#Remove-V2024SearchAttributeConfig) | **DELETE** /accounts/search-attribute-config/{name} | Delete Extended Search Attribute
[**Get-V2024SearchAttributeConfig**](V2024SearchAttributeConfigurationApi.md#Get-V2024SearchAttributeConfig) | **GET** /accounts/search-attribute-config | List Extended Search Attributes
[**Get-V2024SingleSearchAttributeConfig**](V2024SearchAttributeConfigurationApi.md#Get-V2024SingleSearchAttributeConfig) | **GET** /accounts/search-attribute-config/{name} | Get Extended Search Attribute
[**Update-V2024SearchAttributeConfig**](V2024SearchAttributeConfigurationApi.md#Update-V2024SearchAttributeConfig) | **PATCH** /accounts/search-attribute-config/{name} | Update Extended Search Attribute


<a id="New-V2024SearchAttributeConfig"></a>
# **New-V2024SearchAttributeConfig**
> SystemCollectionsHashtable New-V2024SearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchAttributeConfig] <PSCustomObject><br>

Create Extended Search Attributes

Create and configure extended search attributes. This API accepts an attribute name, an attribute display name and a list of name/value pair associates of application IDs to attribute names. It will then validate the inputs and configure/create and attribute promotion configuration in the Link ObjectConfig.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SearchAttributeConfig = Initialize-SearchAttributeConfig -Name "newMailAttribute" -DisplayName "New Mail Attribute" -ApplicationAttributes # SearchAttributeConfig | 

# Create Extended Search Attributes
try {
    $Result = New-V2024SearchAttributeConfig -SearchAttributeConfig $SearchAttributeConfig
} catch {
    Write-Host ("Exception occurred when calling New-V2024SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-V2024SearchAttributeConfig"></a>
# **Remove-V2024SearchAttributeConfig**
> void Remove-V2024SearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete Extended Search Attribute

Delete an extended attribute configuration by name.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to delete.

# Delete Extended Search Attribute
try {
    $Result = Remove-V2024SearchAttributeConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-V2024SearchAttributeConfig"></a>
# **Get-V2024SearchAttributeConfig**
> SearchAttributeConfig[] Get-V2024SearchAttributeConfig<br>

List Extended Search Attributes

Get a list of attribute/application associates currently configured in Identity Security Cloud (ISC).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Extended Search Attributes
try {
    $Result = Get-V2024SearchAttributeConfig
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-V2024SingleSearchAttributeConfig"></a>
# **Get-V2024SingleSearchAttributeConfig**
> SearchAttributeConfig[] Get-V2024SingleSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get Extended Search Attribute

Get an extended attribute configuration by name.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to retrieve.

# Get Extended Search Attribute
try {
    $Result = Get-V2024SingleSearchAttributeConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SingleSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-V2024SearchAttributeConfig"></a>
# **Update-V2024SearchAttributeConfig**
> SearchAttributeConfig Update-V2024SearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Extended Search Attribute

Update an existing search attribute configuration.  You can patch these fields: * name  * displayName * applicationAttributes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "promotedMailAttribute" # String | Name of the search attribute configuration to patch.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Update Extended Search Attribute
try {
    $Result = Update-V2024SearchAttributeConfig -Name $Name -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024SearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the search attribute configuration to patch. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**SearchAttributeConfig**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

