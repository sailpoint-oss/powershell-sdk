# PSSailpointCC.PSSailpointCC/Api.CCConnectorsApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CCConnector**](CCConnectorsApi.md#New-CCConnector) | **POST** /cc/api/connector/create | Create Connector
[**Remove-CCConnector**](CCConnectorsApi.md#Remove-CCConnector) | **POST** /cc/api/connector/delete/{id} | Delete Connector
[**Export-CCConnectorConfig**](CCConnectorsApi.md#Export-CCConnectorConfig) | **GET** /cc/api/connector/export/{id} | Export Connector Config
[**Import-CCConnectorConfig**](CCConnectorsApi.md#Import-CCConnectorConfig) | **POST** /cc/api/connector/import/{id} | Import Connector Config
[**Get-CCConnectors**](CCConnectorsApi.md#Get-CCConnectors) | **GET** /cc/api/connector/list | List Connectors


<a name="New-CCConnector"></a>
# **New-CCConnector**
> void New-CCConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClassName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DirectConnect] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Create Connector

### Example
```powershell
$ContentType = "application/x-www-form-urlencoded" # String |  (optional)
$Name = "MyName" # String |  (optional)
$Description = "MyDescription" # String |  (optional)
$ClassName = "MyClassName" # String |  (optional)
$DirectConnect = $true # Boolean |  (optional)
$Status = "MyStatus" # String |  (optional)

# Create Connector
try {
    $Result = New-CCConnector -ContentType $ContentType -Name $Name -Description $Description -ClassName $ClassName -DirectConnect $DirectConnect -Status $Status
} catch {
    Write-Host ("Exception occurred when calling New-CCConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContentType** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 
 **Description** | **String**|  | [optional] 
 **ClassName** | **String**|  | [optional] 
 **DirectConnect** | **Boolean**|  | [optional] 
 **Status** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-CCConnector"></a>
# **Remove-CCConnector**
> void Remove-CCConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Connector

### Example
```powershell
$Id = "MyId" # String | 

# Delete Connector
try {
    $Result = Remove-CCConnector -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-CCConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Export-CCConnectorConfig"></a>
# **Export-CCConnectorConfig**
> void Export-CCConnectorConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Export Connector Config

### Example
```powershell
$Id = "MyId" # String | 

# Export Connector Config
try {
    $Result = Export-CCConnectorConfig -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-CCConnectorConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-CCConnectorConfig"></a>
# **Import-CCConnectorConfig**
> void Import-CCConnectorConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Import Connector Config

### Example
```powershell
$Id = "MyId" # String | 
$File =  # System.IO.FileInfo | This is the connector config zip bundle which gets uploaded. (optional)

# Import Connector Config
try {
    $Result = Import-CCConnectorConfig -Id $Id -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-CCConnectorConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| This is the connector config zip bundle which gets uploaded. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CCConnectors"></a>
# **Get-CCConnectors**
> ListConnectors200Response Get-CCConnectors<br>

List Connectors

### Example
```powershell

# List Connectors
try {
    $Result = Get-CCConnectors
} catch {
    Write-Host ("Exception occurred when calling Get-CCConnectors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListConnectors200Response**](ListConnectors200Response.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

