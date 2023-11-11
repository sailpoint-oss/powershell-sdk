# PSSailpointBeta.PSSailpointBeta/Api.BetaSearchAttributeConfigurationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#New-BetaSearchAttributeConfig) | **POST** /accounts/search-attribute-config | Configure/create extended search attributes in IdentityNow.
[**Remove-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Remove-BetaSearchAttributeConfig) | **DELETE** /accounts/search-attribute-config/{name} | Delete an extended search attribute in IdentityNow.
[**Get-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Get-BetaSearchAttributeConfig) | **GET** /accounts/search-attribute-config | Retrieve a list of extended search attributes in IdentityNow.
[**Get-BetaSingleSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Get-BetaSingleSearchAttributeConfig) | **GET** /accounts/search-attribute-config/{name} | Get the details of a specific extended search attribute in IdentityNow.
[**Update-BetaSearchAttributeConfig**](BetaSearchAttributeConfigurationApi.md#Update-BetaSearchAttributeConfig) | **PATCH** /accounts/search-attribute-config/{name} | Update the details of a specific extended search attribute in IdentityNow.


<a name="New-BetaSearchAttributeConfig"></a>
# **New-BetaSearchAttributeConfig**
> SystemCollectionsHashtable New-BetaSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchAttributeConfig] <PSCustomObject><br>

Configure/create extended search attributes in IdentityNow.

This API accepts an attribute name, an attribute display name and a list of name/value pair associates of application IDs to attribute names.  It will then validate the inputs and configure/create and attribute promotion configuration in the Link ObjectConfig. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SearchAttributeConfig = Initialize-SearchAttributeConfig -Name "newMailAttribute" -DisplayName "New Mail Attribute" -ApplicationAttributes # SearchAttributeConfig | 

# Configure/create extended search attributes in IdentityNow.
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaSearchAttributeConfig"></a>
# **Remove-BetaSearchAttributeConfig**
> void Remove-BetaSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete an extended search attribute in IdentityNow.

This API accepts an extended attribute name and deletes the corresponding extended attribute configuration. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to delete.

# Delete an extended search attribute in IdentityNow.
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSearchAttributeConfig"></a>
# **Get-BetaSearchAttributeConfig**
> SearchAttributeConfig[] Get-BetaSearchAttributeConfig<br>

Retrieve a list of extended search attributes in IdentityNow.

This API retrieves a list of attribute/application associates currently configured in IdentityNow. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell

# Retrieve a list of extended search attributes in IdentityNow.
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSingleSearchAttributeConfig"></a>
# **Get-BetaSingleSearchAttributeConfig**
> SearchAttributeConfig[] Get-BetaSingleSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get the details of a specific extended search attribute in IdentityNow.

This API accepts an extended attribute name and retrieves the corresponding extended attribute configuration. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Name = "newMailAttribute" # String | Name of the extended search attribute configuration to delete.

# Get the details of a specific extended search attribute in IdentityNow.
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
 **Name** | **String**| Name of the extended search attribute configuration to delete. | 

### Return type

[**SearchAttributeConfig[]**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSearchAttributeConfig"></a>
# **Update-BetaSearchAttributeConfig**
> SearchAttributeConfig Update-BetaSearchAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update the details of a specific extended search attribute in IdentityNow.

This API updates an existing Search Attribute Configuration. The following fields are patchable: **name**, **displayName**, **applicationAttributes** A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Name = "promotedMailAttribute" # String | Name of the Search Attribute Configuration to patch.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Update the details of a specific extended search attribute in IdentityNow.
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
 **Name** | **String**| Name of the Search Attribute Configuration to patch. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**SearchAttributeConfig**](SearchAttributeConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

