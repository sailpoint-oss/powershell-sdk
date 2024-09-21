# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ConfigurationHubApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024Deploy**](V2024ConfigurationHubApi.md#New-V2024Deploy) | **POST** /configuration-hub/deploys | Create a Deploy
[**New-V2024ObjectMapping**](V2024ConfigurationHubApi.md#New-V2024ObjectMapping) | **POST** /configuration-hub/object-mappings/{sourceOrg} | Creates an object mapping
[**New-V2024ObjectMappings**](V2024ConfigurationHubApi.md#New-V2024ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-create | Bulk creates object mappings
[**New-V2024UploadedConfiguration**](V2024ConfigurationHubApi.md#New-V2024UploadedConfiguration) | **POST** /configuration-hub/backups/uploads | Upload a Configuration
[**Remove-V2024Backup**](V2024ConfigurationHubApi.md#Remove-V2024Backup) | **DELETE** /configuration-hub/backups/{id} | Delete a Backup
[**Remove-V2024Draft**](V2024ConfigurationHubApi.md#Remove-V2024Draft) | **DELETE** /configuration-hub/drafts/{id} | Delete a draft
[**Remove-V2024ObjectMapping**](V2024ConfigurationHubApi.md#Remove-V2024ObjectMapping) | **DELETE** /configuration-hub/object-mappings/{sourceOrg}/{objectMappingId} | Deletes an object mapping
[**Remove-V2024UploadedConfiguration**](V2024ConfigurationHubApi.md#Remove-V2024UploadedConfiguration) | **DELETE** /configuration-hub/backups/uploads/{id} | Delete an Uploaded Configuration
[**Get-V2024Deploy**](V2024ConfigurationHubApi.md#Get-V2024Deploy) | **GET** /configuration-hub/deploys/{id} | Get a Deploy
[**Get-V2024ObjectMappings**](V2024ConfigurationHubApi.md#Get-V2024ObjectMappings) | **GET** /configuration-hub/object-mappings/{sourceOrg} | Gets list of object mappings
[**Get-V2024UploadedConfiguration**](V2024ConfigurationHubApi.md#Get-V2024UploadedConfiguration) | **GET** /configuration-hub/backups/uploads/{id} | Get an Uploaded Configuration
[**Get-V2024Backups**](V2024ConfigurationHubApi.md#Get-V2024Backups) | **GET** /configuration-hub/backups | List Backups
[**Get-V2024Deploys**](V2024ConfigurationHubApi.md#Get-V2024Deploys) | **GET** /configuration-hub/deploys | List Deploys
[**Get-V2024Drafts**](V2024ConfigurationHubApi.md#Get-V2024Drafts) | **GET** /configuration-hub/drafts | List Drafts
[**Get-V2024UploadedConfigurations**](V2024ConfigurationHubApi.md#Get-V2024UploadedConfigurations) | **GET** /configuration-hub/backups/uploads | List Uploaded Configurations
[**Update-V2024ObjectMappings**](V2024ConfigurationHubApi.md#Update-V2024ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-patch | Bulk updates object mappings


<a id="New-V2024Deploy"></a>
# **New-V2024Deploy**
> DeployResponse New-V2024Deploy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeployRequest] <PSCustomObject><br>

Create a Deploy

This API performs a deploy based on an existing daft.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$DeployRequest = Initialize-DeployRequest -DraftId "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # DeployRequest | The deploy request body.

# Create a Deploy
try {
    $Result = New-V2024Deploy -DeployRequest $DeployRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024Deploy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeployRequest** | [**DeployRequest**](DeployRequest.md)| The deploy request body. | 

### Return type

[**DeployResponse**](DeployResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024ObjectMapping"></a>
# **New-V2024ObjectMapping**
> ObjectMappingResponse New-V2024ObjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingRequest] <PSCustomObject><br>

Creates an object mapping

This creates an object mapping between current org and source org. Source org should be ""default"" when creating an object mapping that is not to be associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

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
    $Result = New-V2024ObjectMapping -SourceOrg $SourceOrg -ObjectMappingRequest $ObjectMappingRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ObjectMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-V2024ObjectMappings"></a>
# **New-V2024ObjectMappings**
> ObjectMappingBulkCreateResponse New-V2024ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingBulkCreateRequest] <PSCustomObject><br>

Bulk creates object mappings

This creates a set of object mappings (Max 25) between current org and source org. Source org should be ""default"" when creating object mappings that are not to be associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

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
    $Result = New-V2024ObjectMappings -SourceOrg $SourceOrg -ObjectMappingBulkCreateRequest $ObjectMappingBulkCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ObjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-V2024UploadedConfiguration"></a>
# **New-V2024UploadedConfiguration**
> BackupResponse New-V2024UploadedConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Upload a Configuration

This API uploads a JSON configuration file into a tenant.  Configuration files can be managed and deployed via Configuration Hub by uploading a json file which contains configuration data. The JSON file should be the same as the one used by our import endpoints. The object types supported by upload configuration file functionality are the same as the ones supported by our regular backup functionality.  Refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects) for more information about supported objects.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Data =  # System.IO.FileInfo | JSON file containing the objects to be imported.
$Name = "MyName" # String | Name that will be assigned to the uploaded configuration file.

# Upload a Configuration
try {
    $Result = New-V2024UploadedConfiguration -Data $Data -Name $Name
} catch {
    Write-Host ("Exception occurred when calling New-V2024UploadedConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Backup"></a>
# **Remove-V2024Backup**
> void Remove-V2024Backup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Backup

This API deletes an existing backup for the current tenant.  On success, this endpoint will return an empty response.  The backup id can be obtained from the response after a backup was successfully created, or from the list backups endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "07659d7d-2cce-47c0-9e49-185787ee565a" # String | The id of the backup to delete.

# Delete a Backup
try {
    $Result = Remove-V2024Backup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Backup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the backup to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Draft"></a>
# **Remove-V2024Draft**
> void Remove-V2024Draft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a draft

This API deletes an existing draft for the current tenant.  On success, this endpoint will return an empty response.  The draft id can be obtained from the response after a draft was successfully created, or from the list drafts endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "07659d7d-2cce-47c0-9e49-185787ee565a" # String | The id of the draft to delete.

# Delete a draft
try {
    $Result = Remove-V2024Draft -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Draft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the draft to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ObjectMapping"></a>
# **Remove-V2024ObjectMapping**
> void Remove-V2024ObjectMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingId] <String><br>

Deletes an object mapping

This deletes an existing object mapping. Source org should be ""default"" when deleting an object mapping that is not associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

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
    $Result = Remove-V2024ObjectMapping -SourceOrg $SourceOrg -ObjectMappingId $ObjectMappingId
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ObjectMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-V2024UploadedConfiguration"></a>
# **Remove-V2024UploadedConfiguration**
> void Remove-V2024UploadedConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete an Uploaded Configuration

This API deletes an uploaded configuration based on Id.  On success, this endpoint will return an empty response.  The uploaded configuration id can be obtained from the response after a successful upload, or the list uploaded configurations endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the uploaded configuration.

# Delete an Uploaded Configuration
try {
    $Result = Remove-V2024UploadedConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024UploadedConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Deploy"></a>
# **Get-V2024Deploy**
> DeployResponse Get-V2024Deploy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Deploy

This API gets an existing deploy for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the deploy.

# Get a Deploy
try {
    $Result = Get-V2024Deploy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Deploy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the deploy. | 

### Return type

[**DeployResponse**](DeployResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ObjectMappings"></a>
# **Get-V2024ObjectMappings**
> ObjectMappingResponse[] Get-V2024ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>

Gets list of object mappings

This gets a list of existing object mappings between current org and source org. Source org should be ""default"" when getting object mappings that are not associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:read

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
    $Result = Get-V2024ObjectMappings -SourceOrg $SourceOrg
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ObjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-V2024UploadedConfiguration"></a>
# **Get-V2024UploadedConfiguration**
> BackupResponse Get-V2024UploadedConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an Uploaded Configuration

This API gets an existing uploaded configuration for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the uploaded configuration.

# Get an Uploaded Configuration
try {
    $Result = Get-V2024UploadedConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024UploadedConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Backups"></a>
# **Get-V2024Backups**
> BackupResponse[] Get-V2024Backups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Backups

This API gets a list of existing backups for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "status eq "COMPLETE"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq* (optional)

# List Backups
try {
    $Result = Get-V2024Backups -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Backups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Deploys"></a>
# **Get-V2024Deploys**
> DeployResponse[] Get-V2024Deploys<br>

List Deploys

This API gets a list of deploys for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Deploys
try {
    $Result = Get-V2024Deploys
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Deploys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeployResponse[]**](DeployResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Drafts"></a>
# **Get-V2024Drafts**
> DraftResponse[] Get-V2024Drafts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Drafts

This API gets a list of existing drafts for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "status eq "COMPLETE"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq*  **approvalStatus**: *eq* (optional)

# List Drafts
try {
    $Result = Get-V2024Drafts -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Drafts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq*  **approvalStatus**: *eq* | [optional] 

### Return type

[**DraftResponse[]**](DraftResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024UploadedConfigurations"></a>
# **Get-V2024UploadedConfigurations**
> BackupResponse[] Get-V2024UploadedConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Uploaded Configurations

This API gets a list of existing uploaded configurations for the current tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "status eq "COMPLETE"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq* (optional)

# List Uploaded Configurations
try {
    $Result = Get-V2024UploadedConfigurations -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024UploadedConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ObjectMappings"></a>
# **Update-V2024ObjectMappings**
> ObjectMappingBulkPatchResponse Update-V2024ObjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceOrg] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ObjectMappingBulkPatchRequest] <PSCustomObject><br>

Bulk updates object mappings

This updates a set of object mappings, only enabled and targetValue fields can be updated. Source org should be ""default"" when updating object mappings that are not associated to any particular org. The request will need the following security scope: - sp:config-object-mapping:manage

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
    $Result = Update-V2024ObjectMappings -SourceOrg $SourceOrg -ObjectMappingBulkPatchRequest $ObjectMappingBulkPatchRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ObjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

