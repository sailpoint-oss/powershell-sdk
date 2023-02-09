# PSSailpointBeta.PSSailpointBeta/Api.BetaSPConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Export-BetaSpConfig**](BetaSPConfigApi.md#Export-BetaSpConfig) | **POST** /sp-config/export | Initiates Configuration Objects Export Job.
[**Export-BetaSpConfigDownload**](BetaSPConfigApi.md#Export-BetaSpConfigDownload) | **GET** /sp-config/export/{id}/download | Download Result of Export Job
[**Export-BetaSpConfigJobStatus**](BetaSPConfigApi.md#Export-BetaSpConfigJobStatus) | **GET** /sp-config/export/{id} | Get Status of Export Job
[**Import-BetaSpConfig**](BetaSPConfigApi.md#Import-BetaSpConfig) | **POST** /sp-config/import | Initiates Configuration Objects Import Job.
[**Import-BetaSpConfigDownload**](BetaSPConfigApi.md#Import-BetaSpConfigDownload) | **GET** /sp-config/import/{id}/download | Download Result of Import Job
[**Import-BetaSpConfigJobStatus**](BetaSPConfigApi.md#Import-BetaSpConfigJobStatus) | **GET** /sp-config/import/{id} | Get Status of Import Job
[**Get-BetaSpConfigObjects**](BetaSPConfigApi.md#Get-BetaSpConfigObjects) | **GET** /sp-config/config-objects | Get Config Object details


<a name="Export-BetaSpConfig"></a>
# **Export-BetaSpConfig**
> SpConfigJob Export-BetaSpConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportPayload] <PSCustomObject><br>

Initiates Configuration Objects Export Job.

This post will export objects from the tenant to a JSON configuration file. Request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

"SOURCE""SOURCE"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
$ExportPayload = Initialize-ExportPayload -Description "Export Job 1 Test" -ExcludeTypes "SOURCE" -IncludeTypes "SOURCE""SOURCE" -ObjectOptions @{ key_example = $ObjectExportImportOptions } # ExportPayload | Export options control what will be included in the export.

# Initiates Configuration Objects Export Job.
try {
    $Result = Export-BetaSpConfig -ExportPayload $ExportPayload
} catch {
    Write-Host ("Exception occurred when calling Export-BetaSpConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExportPayload** | [**ExportPayload**](ExportPayload.md)| Export options control what will be included in the export. | 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Export-BetaSpConfigDownload"></a>
# **Export-BetaSpConfigDownload**
> SpConfigExportResults Export-BetaSpConfigDownload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Download Result of Export Job

This gets export file resulting from the export job with the requested id and downloads it to a file. Request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the export job for which the results will be downloaded.

# Download Result of Export Job
try {
    $Result = Export-BetaSpConfigDownload -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-BetaSpConfigDownload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the export job for which the results will be downloaded. | 

### Return type

[**SpConfigExportResults**](SpConfigExportResults.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Export-BetaSpConfigJobStatus"></a>
# **Export-BetaSpConfigJobStatus**
> SpConfigJob Export-BetaSpConfigJobStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Status of Export Job

This gets the status of the export job identified by the id parameter. Request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the export job for which status will be returned.

# Get Status of Export Job
try {
    $Result = Export-BetaSpConfigJobStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-BetaSpConfigJobStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the export job for which status will be returned. | 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSpConfig"></a>
# **Import-BetaSpConfig**
> SpConfigJob Import-BetaSpConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Preview] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Options] <PSCustomObject><br>

Initiates Configuration Objects Import Job.

This post will import objects from a JSON configuration file into a tenant. By default, every import will first export all existing objects supported by sp-config as a backup before the import is attempted. The backup is provided so that the state of the configuration prior to the import is available for inspection or restore if needed. The backup can be skipped by setting ""excludeBackup"" to true in the import options. If a backup is performed, the id of the backup will be provided in the ImportResult as the ""exportJobId"". This can be downloaded  using the /sp-config/export/{exportJobId}/download endpoint. Request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Data = "MyData" # String | Name of JSON file containing the objects to be imported.
$Preview = $true # Boolean | This option is intended to give the user information about how an import operation would proceed, without having any affect on the target tenant. If true, no objects will be imported. Instead, the import process will pre-process the import file and attempt to resolve references within imported objects. The import result file will contain messages pertaining to how specific references were resolved, any errors associated with the preprocessing, and messages indicating which objects would be imported. (optional) (default to $false)
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$ImportOptions = Initialize-ImportOptions -ExcludeTypes "SOURCE" -IncludeTypes "TRIGGER_SUBSCRIPTION" -ObjectOptions @{ key_example = $ObjectExportImportOptions } -DefaultReferences $BaseReferenceDto -ExcludeBackup $false # ImportOptions |  (optional)

# Initiates Configuration Objects Import Job.
try {
    $Result = Import-BetaSpConfig -Data $Data -Preview $Preview -Options $Options
} catch {
    Write-Host ("Exception occurred when calling Import-BetaSpConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Data** | **String**| Name of JSON file containing the objects to be imported. | 
 **Preview** | **Boolean**| This option is intended to give the user information about how an import operation would proceed, without having any affect on the target tenant. If true, no objects will be imported. Instead, the import process will pre-process the import file and attempt to resolve references within imported objects. The import result file will contain messages pertaining to how specific references were resolved, any errors associated with the preprocessing, and messages indicating which objects would be imported. | [optional] [default to $false]
 **Options** | [**ImportOptions**](ImportOptions.md)|  | [optional] 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSpConfigDownload"></a>
# **Import-BetaSpConfigDownload**
> SpConfigImportResults Import-BetaSpConfigDownload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Download Result of Import Job

This gets import file resulting from the import job with the requested id and downloads it to a file. The downloaded file will contain the results of the import operation, including any error, warning or informational messages associated with the import. Request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the import job for which the results will be downloaded.

# Download Result of Import Job
try {
    $Result = Import-BetaSpConfigDownload -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Import-BetaSpConfigDownload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the import job for which the results will be downloaded. | 

### Return type

[**SpConfigImportResults**](SpConfigImportResults.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSpConfigJobStatus"></a>
# **Import-BetaSpConfigJobStatus**
> SpConfigJob Import-BetaSpConfigJobStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Status of Import Job

This gets the status of the import job identified by the id parameter. Request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the import job for which status will be returned.

# Get Status of Import Job
try {
    $Result = Import-BetaSpConfigJobStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Import-BetaSpConfigJobStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the import job for which status will be returned. | 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSpConfigObjects"></a>
# **Get-BetaSpConfigObjects**
> SpConfigObject[] Get-BetaSpConfigObjects<br>

Get Config Object details

This gets the list of object configurations which are known to the tenant export/import service. Object configurations that contain ""importUrl"" and ""exportUrl"" are available for export/import. Request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Config Object details
try {
    $Result = Get-BetaSpConfigObjects
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSpConfigObjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SpConfigObject[]**](SpConfigObject.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

