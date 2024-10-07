# PSSailpoint.V3.PSSailpoint.V3\Api.ConfigurationHubApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ObjectMapping**](ConfigurationHubApi.md#New-ObjectMapping) | **POST** /configuration-hub/object-mappings/{sourceOrg} | Creates an object mapping
[**New-ObjectMappings**](ConfigurationHubApi.md#New-ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-create | Bulk creates object mappings
[**New-UploadedConfiguration**](ConfigurationHubApi.md#New-UploadedConfiguration) | **POST** /configuration-hub/backups/uploads | Upload a Configuration
[**Remove-ObjectMapping**](ConfigurationHubApi.md#Remove-ObjectMapping) | **DELETE** /configuration-hub/object-mappings/{sourceOrg}/{objectMappingId} | Deletes an object mapping
[**Remove-UploadedConfiguration**](ConfigurationHubApi.md#Remove-UploadedConfiguration) | **DELETE** /configuration-hub/backups/uploads/{id} | Delete an Uploaded Configuration
[**Get-ObjectMappings**](ConfigurationHubApi.md#Get-ObjectMappings) | **GET** /configuration-hub/object-mappings/{sourceOrg} | Gets list of object mappings
[**Get-UploadedConfiguration**](ConfigurationHubApi.md#Get-UploadedConfiguration) | **GET** /configuration-hub/backups/uploads/{id} | Get an Uploaded Configuration
[**Get-UploadedConfigurations**](ConfigurationHubApi.md#Get-UploadedConfigurations) | **GET** /configuration-hub/backups/uploads | List Uploaded Configurations
[**Update-ObjectMappings**](ConfigurationHubApi.md#Update-ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-patch | Bulk updates object mappings


<a id="New-ObjectMapping"></a>
# **New-ObjectMapping**
> ObjectMappingResponse New-ObjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingRequest] <PSCustomObject><br>

Creates an object mapping

This creates an object mapping between current org and source org. Source org should be ""default"" when creating an object mapping that is not to be associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

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

This creates a set of object mappings (Max 25) between current org and source org. Source org should be ""default"" when creating object mappings that are not to be associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOrg = "source-org" # String | The name of the source org.
$ObjectMappingRequest = Initialize-ObjectMappingRequest -ObjectType "ACCESS_PROFILE" -JsonPath "$.name" -SourceValue "My Governance Group Name" -TargetValue "My New Governance Group Name" -Enabled $false
$ObjectMappingBulkCreateRequest = Initialize-ObjectMappingBulkCreateRequest -NewObjectsMappings $ObjectMappingRequest # ObjectMappingBulkCreateRequest | The bulk create object mapping request body.

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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-UploadedConfiguration"></a>
# **New-UploadedConfiguration**
> BackupResponse New-UploadedConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Upload a Configuration

This API uploads a JSON configuration file into a tenant.  Configuration files can be managed and deployed via Configuration Hub by uploading a json file which contains configuration data. The JSON file should be the same as the one used by our import endpoints. The object types supported by upload configuration file functionality are the same as the ones supported by our regular backup functionality.  Refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects) for more information about supported objects.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Data =  # System.IO.FileInfo | JSON file containing the objects to be imported.
$Name = "MyName" # String | Name that will be assigned to the uploaded configuration file.

# Upload a Configuration
try {
    $Result = New-UploadedConfiguration -Data $Data -Name $Name
} catch {
    Write-Host ("Exception occurred when calling New-UploadedConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Data** | **System.IO.FileInfo****System.IO.FileInfo**| JSON file containing the objects to be imported. | 
 **Name** | **String**| Name that will be assigned to the uploaded configuration file. | 

### Return type

[**BackupResponse**](BackupResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-ObjectMapping"></a>
# **Remove-ObjectMapping**
> void Remove-ObjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingId] <String><br>

Deletes an object mapping

This deletes an existing object mapping. Source org should be ""default"" when deleting an object mapping that is not associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-UploadedConfiguration"></a>
# **Remove-UploadedConfiguration**
> void Remove-UploadedConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete an Uploaded Configuration

This API deletes an uploaded configuration based on Id.  On success, this endpoint will return an empty response.  The uploaded configuration id can be obtained from the response after a successful upload, or the list uploaded configurations endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the uploaded configuration.

# Delete an Uploaded Configuration
try {
    $Result = Remove-UploadedConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-UploadedConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the uploaded configuration. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ObjectMappings"></a>
# **Get-ObjectMappings**
> ObjectMappingResponse[] Get-ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>

Gets list of object mappings

This gets a list of existing object mappings between current org and source org. Source org should be ""default"" when getting object mappings that are not associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:read

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UploadedConfiguration"></a>
# **Get-UploadedConfiguration**
> BackupResponse Get-UploadedConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an Uploaded Configuration

This API gets an existing uploaded configuration for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the uploaded configuration.

# Get an Uploaded Configuration
try {
    $Result = Get-UploadedConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-UploadedConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the uploaded configuration. | 

### Return type

[**BackupResponse**](BackupResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UploadedConfigurations"></a>
# **Get-UploadedConfigurations**
> BackupResponse[] Get-UploadedConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Uploaded Configurations

This API gets a list of existing uploaded configurations for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "status eq "COMPLETE"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq* (optional)

# List Uploaded Configurations
try {
    $Result = Get-UploadedConfigurations -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-UploadedConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq* | [optional] 

### Return type

[**BackupResponse[]**](BackupResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

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

This updates a set of object mappings, only enabled and targetValue fields can be updated. Source org should be ""default"" when updating object mappings that are not associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

