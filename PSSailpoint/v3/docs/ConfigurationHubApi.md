# PSSailpoint.PSSailpoint\Api.ConfigurationHubApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ObjectMapping**](ConfigurationHubApi.md#New-ObjectMapping) | **POST** /configuration-hub/object-mappings/{sourceOrg} | Creates an object mapping
[**New-ObjectMappings**](ConfigurationHubApi.md#New-ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-create | Bulk creates object mappings
[**Remove-ObjectMapping**](ConfigurationHubApi.md#Remove-ObjectMapping) | **DELETE** /configuration-hub/object-mappings/{sourceOrg}/{objectMappingId} | Deletes an object mapping
[**Get-ObjectMappings**](ConfigurationHubApi.md#Get-ObjectMappings) | **GET** /configuration-hub/object-mappings/{sourceOrg} | Gets list of object mappings
[**Update-ObjectMappings**](ConfigurationHubApi.md#Update-ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-patch | Bulk updates object mappings


<a id="New-ObjectMapping"></a>
# **New-ObjectMapping**
> ObjectMappingResponse New-ObjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingRequest] <PSCustomObject><br>

Creates an object mapping

This creates an object mapping between current org and source org. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOrg = "source-org" # String | The name of the source org.
$ObjectMappingRequest = Initialize-ObjectMappingRequest -ObjectType "ACCESS_PROFILE" -JsonPath "$.name" -SourceValue "My Governance Group Name" -TargetValue "My New Governance Group Name" -Enabled $false # ObjectMappingRequest | The object mapping request body.

# Creates an object mapping
try {
    $Result = New-ObjectMapping -SourceOrg $SourceOrg -ObjectMappingRequest $ObjectMappingRequest
} catch {
    Write-Host ("Exception occurred when calling New-ObjectMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceOrg** | **String**| The name of the source org. | 
 **ObjectMappingRequest** | [**ObjectMappingRequest**](ObjectMappingRequest.md)| The object mapping request body. | 

### Return type

[**ObjectMappingResponse**](ObjectMappingResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ObjectMappings"></a>
# **New-ObjectMappings**
> ObjectMappingBulkCreateResponse New-ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingBulkCreateRequest] <PSCustomObject><br>

Bulk creates object mappings

This creates a set of object mappings (Max 25) between current org and source org. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOrg = "source-org" # String | The name of the source org.
$ObjectMappingRequest = Initialize-ObjectMappingRequest -ObjectType "ACCESS_PROFILE" -JsonPath "$.name" -SourceValue "My Governance Group Name" -TargetValue "My New Governance Group Name" -Enabled $false
$ObjectMappingBulkCreateRequest = Initialize-ObjectMappingBulkCreateRequest -NewObjectMappings $ObjectMappingRequest # ObjectMappingBulkCreateRequest | The bulk create object mapping request body.

# Bulk creates object mappings
try {
    $Result = New-ObjectMappings -SourceOrg $SourceOrg -ObjectMappingBulkCreateRequest $ObjectMappingBulkCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-ObjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceOrg** | **String**| The name of the source org. | 
 **ObjectMappingBulkCreateRequest** | [**ObjectMappingBulkCreateRequest**](ObjectMappingBulkCreateRequest.md)| The bulk create object mapping request body. | 

### Return type

[**ObjectMappingBulkCreateResponse**](ObjectMappingBulkCreateResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-ObjectMapping"></a>
# **Remove-ObjectMapping**
> void Remove-ObjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingId] <String><br>

Deletes an object mapping

This deletes an existing object mapping. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOrg = "source-org" # String | The name of the source org.
$ObjectMappingId = "3d6e0144-963f-4bd6-8d8d-d77b4e507ce4" # String | The id of the object mapping to be deleted.

# Deletes an object mapping
try {
    $Result = Remove-ObjectMapping -SourceOrg $SourceOrg -ObjectMappingId $ObjectMappingId
} catch {
    Write-Host ("Exception occurred when calling Remove-ObjectMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceOrg** | **String**| The name of the source org. | 
 **ObjectMappingId** | **String**| The id of the object mapping to be deleted. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ObjectMappings"></a>
# **Get-ObjectMappings**
> ObjectMappingResponse[] Get-ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>

Gets list of object mappings

This gets a list of existing object mappings between current org and source org. The request will need the following security scope: - sp:config-object-mapping:read

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOrg = "source-org" # String | The name of the source org.

# Gets list of object mappings
try {
    $Result = Get-ObjectMappings -SourceOrg $SourceOrg
} catch {
    Write-Host ("Exception occurred when calling Get-ObjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceOrg** | **String**| The name of the source org. | 

### Return type

[**ObjectMappingResponse[]**](ObjectMappingResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ObjectMappings"></a>
# **Update-ObjectMappings**
> ObjectMappingBulkPatchResponse Update-ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingBulkPatchRequest] <PSCustomObject><br>

Bulk updates object mappings

This updates a set of object mappings, only enabled and targetValue fields can be updated. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOrg = "source-org" # String | The name of the source org.
$ObjectMappingBulkPatchRequest = Initialize-ObjectMappingBulkPatchRequest -Patches @{ key_example = 
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue
 } # ObjectMappingBulkPatchRequest | The object mapping request body.

# Bulk updates object mappings
try {
    $Result = Update-ObjectMappings -SourceOrg $SourceOrg -ObjectMappingBulkPatchRequest $ObjectMappingBulkPatchRequest
} catch {
    Write-Host ("Exception occurred when calling Update-ObjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceOrg** | **String**| The name of the source org. | 
 **ObjectMappingBulkPatchRequest** | [**ObjectMappingBulkPatchRequest**](ObjectMappingBulkPatchRequest.md)| The object mapping request body. | 

### Return type

[**ObjectMappingBulkPatchResponse**](ObjectMappingBulkPatchResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

