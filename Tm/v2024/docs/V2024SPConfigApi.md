# Tm.V2024.Tm.V2024\Api.V2024SPConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Export-V2024SpConfig**](V2024SPConfigApi.md#Export-V2024SpConfig) | **POST** /sp-config/export | Initiates configuration objects export job
[**Get-V2024SpConfigExport**](V2024SPConfigApi.md#Get-V2024SpConfigExport) | **GET** /sp-config/export/{id}/download | Download export job result.
[**Get-V2024SpConfigExportStatus**](V2024SPConfigApi.md#Get-V2024SpConfigExportStatus) | **GET** /sp-config/export/{id} | Get export job status
[**Get-V2024SpConfigImport**](V2024SPConfigApi.md#Get-V2024SpConfigImport) | **GET** /sp-config/import/{id}/download | Download import job result
[**Get-V2024SpConfigImportStatus**](V2024SPConfigApi.md#Get-V2024SpConfigImportStatus) | **GET** /sp-config/import/{id} | Get import job status
[**Import-V2024SpConfig**](V2024SPConfigApi.md#Import-V2024SpConfig) | **POST** /sp-config/import | Initiates configuration objects import job
[**Get-V2024SpConfigObjects**](V2024SPConfigApi.md#Get-V2024SpConfigObjects) | **GET** /sp-config/config-objects | Get config object details


<a id="Export-V2024SpConfig"></a>
# **Export-V2024SpConfig**
> SpConfigExportJob Export-V2024SpConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportPayload] <PSCustomObject><br>

Initiates configuration objects export job

This post will export objects from the tenant to a JSON configuration file. For more information about the object types that currently support export functionality, refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
"ACCESS_PROFILE""ACCESS_PROFILE"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
$ExportPayload = Initialize-ExportPayload -Description "Export Job 1 Test" -ExcludeTypes "ACCESS_PROFILE" -IncludeTypes "ACCESS_PROFILE""ACCESS_PROFILE" -ObjectOptions @{ key_example = $ObjectExportImportOptions } # ExportPayload | Export options control what will be included in the export.

# Initiates configuration objects export job
try {
    $Result = Export-V2024SpConfig -XSailPointExperimental $XSailPointExperimental -ExportPayload $ExportPayload
} catch {
    Write-Host ("Exception occurred when calling Export-V2024SpConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ExportPayload** | [**ExportPayload**](ExportPayload.md)| Export options control what will be included in the export. | 

### Return type

[**SpConfigExportJob**](SpConfigExportJob.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SpConfigExport"></a>
# **Get-V2024SpConfigExport**
> SpConfigExportResults Get-V2024SpConfigExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Download export job result.

This endpoint gets the export file resulting from the export job with the requested `id` and downloads it to a file. The request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the export job whose results will be downloaded.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Download export job result.
try {
    $Result = Get-V2024SpConfigExport -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SpConfigExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the export job whose results will be downloaded. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SpConfigExportResults**](SpConfigExportResults.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SpConfigExportStatus"></a>
# **Get-V2024SpConfigExportStatus**
> SpConfigExportJobStatus Get-V2024SpConfigExportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get export job status

This gets the status of the export job identified by the `id` parameter. The request will need one of the following security scopes: - sp:config:read - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the export job whose status will be returned.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get export job status
try {
    $Result = Get-V2024SpConfigExportStatus -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SpConfigExportStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the export job whose status will be returned. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SpConfigExportJobStatus**](SpConfigExportJobStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SpConfigImport"></a>
# **Get-V2024SpConfigImport**
> SpConfigImportResults Get-V2024SpConfigImport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Download import job result

This gets import file resulting from the import job with the requested id and downloads it to a file. The downloaded file will contain the results of the import operation, including any error, warning or informational messages associated with the import. The request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the import job whose results will be downloaded.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Download import job result
try {
    $Result = Get-V2024SpConfigImport -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SpConfigImport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the import job whose results will be downloaded. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SpConfigImportResults**](SpConfigImportResults.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SpConfigImportStatus"></a>
# **Get-V2024SpConfigImportStatus**
> SpConfigImportJobStatus Get-V2024SpConfigImportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get import job status

This gets the status of the import job identified by the `id` parameter. For more information about the object types that currently support import functionality, refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects). The request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the import job whose status will be returned.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get import job status
try {
    $Result = Get-V2024SpConfigImportStatus -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SpConfigImportStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the import job whose status will be returned. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SpConfigImportJobStatus**](SpConfigImportJobStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024SpConfig"></a>
# **Import-V2024SpConfig**
> SpConfigJob Import-V2024SpConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Preview] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Options] <PSCustomObject><br>

Initiates configuration objects import job

This post will import objects from a JSON configuration file into a tenant. By default, every import will first export all existing objects supported by sp-config as a backup before the import is attempted. The backup is provided so that the state of the configuration prior to the import is available for inspection or restore if needed. The backup can be skipped by setting ""excludeBackup"" to true in the import options. If a backup is performed, the id of the backup will be provided in the ImportResult as the ""exportJobId"". This can be downloaded  using the /sp-config/export/{exportJobId}/download endpoint. You cannot currently import from the Non-Employee Lifecycle Management (NELM) source. You cannot use this endpoint to back up or store NELM data.  For more information about the object types that currently support import functionality, refer to [SaaS Configuration](https://developer.sailpoint.com/idn/docs/saas-configuration/#supported-objects). The request will need the following security scope: - sp:config:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Data =  # System.IO.FileInfo | JSON file containing the objects to be imported.
$Preview = $true # Boolean | This option is intended to give the user information about how an import operation would proceed, without having any effect on the target tenant. If this parameter is ""true"", no objects will be imported. Instead, the import process will pre-process the import file and attempt to resolve references within imported objects. The import result file will contain messages pertaining to how specific references were resolved, any errors associated with the preprocessing, and messages indicating which objects would be imported. (optional) (default to $false)
"IDENTITY_OBJECT_CONFIG""IDENTITY_OBJECT_CONFIG"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
"IDENTITY_OBJECT_CONFIG"$ImportOptions = Initialize-ImportOptions -ExcludeTypes "IDENTITY_OBJECT_CONFIG" -IncludeTypes "IDENTITY_OBJECT_CONFIG""IDENTITY_OBJECT_CONFIG" -ObjectOptions @{ key_example = $ObjectExportImportOptions } -DefaultReferences "IDENTITY_OBJECT_CONFIG""IDENTITY_OBJECT_CONFIG"
$ObjectExportImportOptions = Initialize-ObjectExportImportOptions -IncludedIds "be9e116d-08e1-49fc-ab7f-fa585e96c9e4" -IncludedNames "Test Object"
"IDENTITY_OBJECT_CONFIG" -ExcludeBackup $false # ImportOptions |  (optional)

# Initiates configuration objects import job
try {
    $Result = Import-V2024SpConfig -XSailPointExperimental $XSailPointExperimental -Data $Data -Preview $Preview -Options $Options
} catch {
    Write-Host ("Exception occurred when calling Import-V2024SpConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
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

<a id="Get-V2024SpConfigObjects"></a>
# **Get-V2024SpConfigObjects**
> SpConfigObject[] Get-V2024SpConfigObjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get config object details

This gets the list of object configurations which are known to the tenant export/import service. Object configurations that contain ""importUrl"" and ""exportUrl"" are available for export/import.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get config object details
try {
    $Result = Get-V2024SpConfigObjects -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SpConfigObjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SpConfigObject[]**](SpConfigObject.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

