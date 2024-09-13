# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ConfigurationHubApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ObjectMapping**](V2024ConfigurationHubApi.md#New-V2024ObjectMapping) | **POST** /configuration-hub/object-mappings/{sourceOrg} | Creates an object mapping
[**New-V2024ObjectMappings**](V2024ConfigurationHubApi.md#New-V2024ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-create | Bulk creates object mappings
[**Remove-V2024ObjectMapping**](V2024ConfigurationHubApi.md#Remove-V2024ObjectMapping) | **DELETE** /configuration-hub/object-mappings/{sourceOrg}/{objectMappingId} | Deletes an object mapping
[**Remove-V2024UploadedBackup**](V2024ConfigurationHubApi.md#Remove-V2024UploadedBackup) | **DELETE** /configuration-hub/backups/uploads/{id} | Deletes an uploaded backup file
[**Get-V2024ObjectMappings**](V2024ConfigurationHubApi.md#Get-V2024ObjectMappings) | **GET** /configuration-hub/object-mappings/{sourceOrg} | Gets list of object mappings
[**Get-V2024UploadedBackup**](V2024ConfigurationHubApi.md#Get-V2024UploadedBackup) | **GET** /configuration-hub/backups/uploads/{id} | Get an uploaded backup&#39;s information
[**Get-V2024UploadedBackups**](V2024ConfigurationHubApi.md#Get-V2024UploadedBackups) | **GET** /configuration-hub/backups/uploads | Gets list of Uploaded backups
[**Import-V2024UploadedBackup**](V2024ConfigurationHubApi.md#Import-V2024UploadedBackup) | **POST** /configuration-hub/backups/uploads | Uploads a backup file
[**Update-V2024ObjectMappings**](V2024ConfigurationHubApi.md#Update-V2024ObjectMappings) | **POST** /configuration-hub/object-mappings/{sourceOrg}/bulk-patch | Bulk updates object mappings


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

<a id="Remove-V2024UploadedBackup"></a>
# **Remove-V2024UploadedBackup**
> void Remove-V2024UploadedBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Deletes an uploaded backup file

This deletes an Uploaded backup based on job ID. On success, this endpoint will return an empty response. The job id can be obtained from the response after a successful upload, or the list uploads endpoint. The following scopes are required to access this endpoint: sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the uploaded backup.

# Deletes an uploaded backup file
try {
    $Result = Remove-V2024UploadedBackup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024UploadedBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the uploaded backup. | 

### Return type

void (empty response body)

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

<a id="Get-V2024UploadedBackup"></a>
# **Get-V2024UploadedBackup**
> SystemCollectionsHashtable Get-V2024UploadedBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an uploaded backup's information

Returns all the information and status of an upload job. - sp:config-backups:read

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "3d0fe04b-57df-4a46-a83b-8f04b0f9d10b" # String | The id of the uploaded backup.

# Get an uploaded backup's information
try {
    $Result = Get-V2024UploadedBackup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024UploadedBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the uploaded backup. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024UploadedBackups"></a>
# **Get-V2024UploadedBackups**
> UploadsResponse[] Get-V2024UploadedBackups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Gets list of Uploaded backups

Returns a list of the current uploaded backups associated with the current tenant. A filter ""status"" can be added to only return the Completed, Failed, or Successful uploads

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Status = "COMPLETE" # String | Filter listed uploaded backups by status of operation (optional)

# Gets list of Uploaded backups
try {
    $Result = Get-V2024UploadedBackups -Status $Status
} catch {
    Write-Host ("Exception occurred when calling Get-V2024UploadedBackups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | **String**| Filter listed uploaded backups by status of operation | [optional] 

### Return type

[**UploadsResponse[]**](UploadsResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024UploadedBackup"></a>
# **Import-V2024UploadedBackup**
> UploadsRequest Import-V2024UploadedBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Uploads a backup file

This post will upload a JSON backup file into a tenant. Configuration files can be managed and deployed via Configuration Hub by uploading a json file which contains configuration data. The JSON file should be the same as the one used by our import endpoints. The object types that currently support by upload file functionality are the same as the ones supported by our regular backup functionality. here: [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects).  The request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Data =  # System.IO.FileInfo | JSON file containing the objects to be imported.
$Name = "MyName" # String | Name that will be assigned to the uploaded file.

# Uploads a backup file
try {
    $Result = Import-V2024UploadedBackup -Data $Data -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Import-V2024UploadedBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Data** | **System.IO.FileInfo****System.IO.FileInfo**| JSON file containing the objects to be imported. | 
 **Name** | **String**| Name that will be assigned to the uploaded file. | 

### Return type

[**UploadsRequest**](UploadsRequest.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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

