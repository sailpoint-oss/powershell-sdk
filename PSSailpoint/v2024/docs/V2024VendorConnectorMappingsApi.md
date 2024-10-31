# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024VendorConnectorMappingsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024VendorConnectorMapping**](V2024VendorConnectorMappingsApi.md#New-V2024VendorConnectorMapping) | **POST** /vendor-connector-mappings | Create Vendor Connector Mapping
[**Remove-V2024VendorConnectorMapping**](V2024VendorConnectorMappingsApi.md#Remove-V2024VendorConnectorMapping) | **DELETE** /vendor-connector-mappings | Delete Vendor Connector Mapping
[**Get-V2024VendorConnectorMappings**](V2024VendorConnectorMappingsApi.md#Get-V2024VendorConnectorMappings) | **GET** /vendor-connector-mappings | List Vendor Connector Mappings


<a id="New-V2024VendorConnectorMapping"></a>
# **New-V2024VendorConnectorMapping**
> VendorConnectorMapping New-V2024VendorConnectorMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VendorConnectorMapping] <PSCustomObject><br>

Create Vendor Connector Mapping

Create a new mapping between a SaaS vendor and an ISC connector to establish correlation paths. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$VendorConnectorMappingUpdatedAt = Initialize-VendorConnectorMappingUpdatedAt -Time (Get-Date) -Valid $true
$VendorConnectorMappingUpdatedBy = Initialize-VendorConnectorMappingUpdatedBy -String "user-67891" -Valid $true
$VendorConnectorMappingDeletedAt = Initialize-VendorConnectorMappingDeletedAt -Time (Get-Date) -Valid $false
$VendorConnectorMappingDeletedBy = Initialize-VendorConnectorMappingDeletedBy -String "MyString" -Valid $false
$VendorConnectorMapping = Initialize-VendorConnectorMapping -Id "78733556-9ea3-4f59-bf69-e5cd92b011b4" -Vendor "Example vendor" -Connector "Example connector" -CreatedAt (Get-Date) -CreatedBy "admin" -UpdatedAt $VendorConnectorMappingUpdatedAt -UpdatedBy $VendorConnectorMappingUpdatedBy -DeletedAt $VendorConnectorMappingDeletedAt -DeletedBy $VendorConnectorMappingDeletedBy # VendorConnectorMapping | 

# Create Vendor Connector Mapping
try {
    $Result = New-V2024VendorConnectorMapping -VendorConnectorMapping $VendorConnectorMapping
} catch {
    Write-Host ("Exception occurred when calling New-V2024VendorConnectorMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VendorConnectorMapping** | [**VendorConnectorMapping**](VendorConnectorMapping.md)|  | 

### Return type

[**VendorConnectorMapping**](VendorConnectorMapping.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024VendorConnectorMapping"></a>
# **Remove-V2024VendorConnectorMapping**
> DeleteVendorConnectorMapping200Response Remove-V2024VendorConnectorMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VendorConnectorMapping] <PSCustomObject><br>

Delete Vendor Connector Mapping

Soft delete a mapping between a SaaS vendor and an ISC connector, removing the established correlation. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$VendorConnectorMappingUpdatedAt = Initialize-VendorConnectorMappingUpdatedAt -Time (Get-Date) -Valid $true
$VendorConnectorMappingUpdatedBy = Initialize-VendorConnectorMappingUpdatedBy -String "user-67891" -Valid $true
$VendorConnectorMappingDeletedAt = Initialize-VendorConnectorMappingDeletedAt -Time (Get-Date) -Valid $false
$VendorConnectorMappingDeletedBy = Initialize-VendorConnectorMappingDeletedBy -String "MyString" -Valid $false
$VendorConnectorMapping = Initialize-VendorConnectorMapping -Id "78733556-9ea3-4f59-bf69-e5cd92b011b4" -Vendor "Example vendor" -Connector "Example connector" -CreatedAt (Get-Date) -CreatedBy "admin" -UpdatedAt $VendorConnectorMappingUpdatedAt -UpdatedBy $VendorConnectorMappingUpdatedBy -DeletedAt $VendorConnectorMappingDeletedAt -DeletedBy $VendorConnectorMappingDeletedBy # VendorConnectorMapping | 

# Delete Vendor Connector Mapping
try {
    $Result = Remove-V2024VendorConnectorMapping -VendorConnectorMapping $VendorConnectorMapping
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024VendorConnectorMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VendorConnectorMapping** | [**VendorConnectorMapping**](VendorConnectorMapping.md)|  | 

### Return type

[**DeleteVendorConnectorMapping200Response**](DeleteVendorConnectorMapping200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024VendorConnectorMappings"></a>
# **Get-V2024VendorConnectorMappings**
> VendorConnectorMapping[] Get-V2024VendorConnectorMappings<br>

List Vendor Connector Mappings

Get a list of mappings between SaaS vendors and ISC connectors, detailing the connections established for correlation. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Vendor Connector Mappings
try {
    $Result = Get-V2024VendorConnectorMappings
} catch {
    Write-Host ("Exception occurred when calling Get-V2024VendorConnectorMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VendorConnectorMapping[]**](VendorConnectorMapping.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

