# PSSailpointBeta.PSSailpointBeta/Api.BetaSPConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Export-BetaSpConfig**](BetaSPConfigApi.md#Export-BetaSpConfig) | **POST** /sp-config/export | Initiates configuration objects export job
[**Get-BetaSpConfigExport**](BetaSPConfigApi.md#Get-BetaSpConfigExport) | **GET** /sp-config/export/{id}/download | Download export job result.
[**Get-BetaSpConfigExportStatus**](BetaSPConfigApi.md#Get-BetaSpConfigExportStatus) | **GET** /sp-config/export/{id} | Get export job status
[**Get-BetaSpConfigImport**](BetaSPConfigApi.md#Get-BetaSpConfigImport) | **GET** /sp-config/import/{id}/download | Download import job result
[**Get-BetaSpConfigImportStatus**](BetaSPConfigApi.md#Get-BetaSpConfigImportStatus) | **GET** /sp-config/import/{id} | Get import job status
[**Import-BetaSpConfig**](BetaSPConfigApi.md#Import-BetaSpConfig) | **POST** /sp-config/import | Initiates configuration objects import job
[**Get-BetaSpConfigObjects**](BetaSPConfigApi.md#Get-BetaSpConfigObjects) | **GET** /sp-config/config-objects | Get config object details


<a name="Export-BetaSpConfig"></a>
# **Export-BetaSpConfig**
> SpConfigJob Export-BetaSpConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportPayload] <PSCustomObject><br>

Initiates configuration objects export job

This post will export objects from the tenant to a JSON configuration file. For more information about the object types that currently support export functionality, refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects).

### Example
```powershell
"ACCESS_PROFILE""ACCESS_PROFILE"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
$ExportPayload = Initialize-ExportPayload -Description "Export Job 1 Test" -ExcludeTypes "ACCESS_PROFILE" -IncludeTypes "ACCESS_PROFILE""ACCESS_PROFILE" -ObjectOptions @{ key_example = $ObjectExportImportOptions } # ExportPayload | Export options control what will be included in the export.

# Initiates configuration objects export job
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSpConfigExport"></a>
# **Get-BetaSpConfigExport**
> SpConfigExportResults Get-BetaSpConfigExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Download export job result.

This endpoint gets the export file resulting from the export job with the requested `id` and downloads it to a file. The request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the export job whose results will be downloaded.

# Download export job result.
try {
    $Result = Get-BetaSpConfigExport -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSpConfigExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the export job whose results will be downloaded. | 

### Return type

[**SpConfigExportResults**](SpConfigExportResults.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSpConfigExportStatus"></a>
# **Get-BetaSpConfigExportStatus**
> SpConfigJob Get-BetaSpConfigExportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get export job status

This gets the status of the export job identified by the `id` parameter. The request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the export job whose status will be returned.

# Get export job status
try {
    $Result = Get-BetaSpConfigExportStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSpConfigExportStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the export job whose status will be returned. | 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSpConfigImport"></a>
# **Get-BetaSpConfigImport**
> SpConfigImportResults Get-BetaSpConfigImport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Download import job result

This gets import file resulting from the import job with the requested id and downloads it to a file. The downloaded file will contain the results of the import operation, including any error, warning or informational messages associated with the import. The request will need the following security scope: - sp:config:manage

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the import job whose results will be downloaded.

# Download import job result
try {
    $Result = Get-BetaSpConfigImport -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSpConfigImport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the import job whose results will be downloaded. | 

### Return type

[**SpConfigImportResults**](SpConfigImportResults.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSpConfigImportStatus"></a>
# **Get-BetaSpConfigImportStatus**
> SpConfigJob Get-BetaSpConfigImportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get import job status

This gets the status of the import job identified by the `id` parameter. For more information about the object types that currently support import functionality, refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects). The request will need the following security scope: - sp:config:manage

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the import job whose status will be returned.

# Get import job status
try {
    $Result = Get-BetaSpConfigImportStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSpConfigImportStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the import job whose status will be returned. | 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSpConfig"></a>
# **Import-BetaSpConfig**
> SpConfigJob Import-BetaSpConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Preview] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Options] <PSCustomObject><br>

Initiates configuration objects import job

This post will import objects from a JSON configuration file into a tenant. By default, every import will first export all existing objects supported by sp-config as a backup before the import is attempted. The backup is provided so that the state of the configuration prior to the import is available for inspection or restore if needed. The backup can be skipped by setting ""excludeBackup"" to true in the import options. If a backup is performed, the id of the backup will be provided in the ImportResult as the ""exportJobId"". This can be downloaded  using the /sp-config/export/{exportJobId}/download endpoint. You cannot currently import from the Non-Employee Lifecycle Management (NELM) source. You cannot use this endpoint to back up or store NELM data.  For more information about the object types that currently support import functionality, refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects). The request will need the following security scope: - sp:config:manage

### Example
```powershell
$Data =  # System.IO.FileInfo | JSON file containing the objects to be imported.
$Preview = $true # Boolean | This option is intended to give the user information about how an import operation would proceed, without having any effect on the target tenant. If this parameter is ""true"", no objects will be imported. Instead, the import process will pre-process the import file and attempt to resolve references within imported objects. The import result file will contain messages pertaining to how specific references were resolved, any errors associated with the preprocessing, and messages indicating which objects would be imported. (optional) (default to $false)
"IDENTITY_OBJECT_CONFIG""IDENTITY_OBJECT_CONFIG"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
"IDENTITY_OBJECT_CONFIG"$ImportOptions = Initialize-ImportOptions -ExcludeTypes "IDENTITY_OBJECT_CONFIG" -IncludeTypes "IDENTITY_OBJECT_CONFIG""IDENTITY_OBJECT_CONFIG" -ObjectOptions @{ key_example = $ObjectExportImportOptions } -DefaultReferences "IDENTITY_OBJECT_CONFIG""IDENTITY_OBJECT_CONFIG"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
"IDENTITY_OBJECT_CONFIG" -ExcludeBackup $false # ImportOptions |  (optional)

# Initiates configuration objects import job
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
 **Data** | **System.IO.FileInfo****System.IO.FileInfo**| JSON file containing the objects to be imported. | 
 **Preview** | **Boolean**| This option is intended to give the user information about how an import operation would proceed, without having any effect on the target tenant. If this parameter is &quot;&quot;true&quot;&quot;, no objects will be imported. Instead, the import process will pre-process the import file and attempt to resolve references within imported objects. The import result file will contain messages pertaining to how specific references were resolved, any errors associated with the preprocessing, and messages indicating which objects would be imported. | [optional] [default to $false]
 **Options** | [**ImportOptions**](ImportOptions.md)|  | [optional] 

### Return type

[**SpConfigJob**](SpConfigJob.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSpConfigObjects"></a>
# **Get-BetaSpConfigObjects**
> SpConfigObject[] Get-BetaSpConfigObjects<br>

Get config object details

This gets the list of object configurations which are known to the tenant export/import service. Object configurations that contain ""importUrl"" and ""exportUrl"" are available for export/import.

### Example
```powershell

# Get config object details
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

