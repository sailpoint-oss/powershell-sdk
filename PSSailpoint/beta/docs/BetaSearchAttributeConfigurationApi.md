# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaSearchAttributeConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#New-BetaSearchAttributeConfig) | **POST** /accounts/search-attribute-config | Create Extended Search Attributes
[**Remove-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Remove-BetaSearchAttributeConfig) | **DELETE** /accounts/search-attribute-config/{name} | Delete Extended Search Attribute
[**Get-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Get-BetaSearchAttributeConfig) | **GET** /accounts/search-attribute-config | List Extended Search Attributes
[**Get-BetaSingleSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Get-BetaSingleSearchAttributeConfig) | **GET** /accounts/search-attribute-config/{name} | Get Extended Search Attribute
[**Update-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Update-BetaSearchAttributeConfig) | **PATCH** /accounts/search-attribute-config/{name} | Update Extended Search Attribute


<a id="New-BetaSearchAttributeConfig"></a>
# **New-BetaSearchAttributeConfig**
> SystemCollectionsHashtable New-BetaSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchAttributeConfig] <PSCustomObject><br>

Create Extended Search Attributes

Create and configure extended search attributes. This API accepts an attribute name, an attribute display name and a list of name/value pair associates of application IDs to attribute names. It will then validate the inputs and configure/create and attribute promotion configuration in the Link ObjectConfig. A token with ORG_ADMIN authority is required to call this API.

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
    $Result = New-BetaSearchAttributeConfig -SearchAttributeConfig $SearchAttributeConfig
} catch {
    Write-Host ("Exception occurred when calling New-BetaSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-BetaSearchAttributeConfig"></a>
# **Remove-BetaSearchAttributeConfig**
> void Remove-BetaSearchAttributeConfig<br>
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
    $Result = Remove-BetaSearchAttributeConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-BetaSearchAttributeConfig"></a>
# **Get-BetaSearchAttributeConfig**
> SearchAttributeConfig[] Get-BetaSearchAttributeConfig<br>

List Extended Search Attributes

Get a list of attribute/application associates currently configured in Identity Security Cloud (ISC). A token with ORG_ADMIN authority is required to call this API.

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
    $Result = Get-BetaSearchAttributeConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-BetaSingleSearchAttributeConfig"></a>
# **Get-BetaSingleSearchAttributeConfig**
> SearchAttributeConfig[] Get-BetaSingleSearchAttributeConfig<br>
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

$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to get.

# Get Extended Search Attribute
try {
    $Result = Get-BetaSingleSearchAttributeConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSingleSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the extended search attribute configuration to get. | 

### Return type

[**SearchAttributeConfig[]**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaSearchAttributeConfig"></a>
# **Update-BetaSearchAttributeConfig**
> SearchAttributeConfig Update-BetaSearchAttributeConfig<br>
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

$Name = "promotedMailAttribute" # String | Name of the extended search attribute configuration to patch.
$UpdateMultiHostSourcesRequestInnerValue = Initialize-UpdateMultiHostSourcesRequestInnerValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $UpdateMultiHostSourcesRequestInnerValue # JsonPatchOperation[] | 

# Update Extended Search Attribute
try {
    $Result = Update-BetaSearchAttributeConfig -Name $Name -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSearchAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the extended search attribute configuration to patch. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**SearchAttributeConfig**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

