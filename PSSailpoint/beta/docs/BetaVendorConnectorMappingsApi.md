# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaVendorConnectorMappingsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaVendorConnectorMapping**](BetaVendorConnectorMappingsApi.md#New-BetaVendorConnectorMapping) | **POST** /vendor-connector-mappings | Create Vendor Connector Mapping
[**Remove-BetaVendorConnectorMapping**](BetaVendorConnectorMappingsApi.md#Remove-BetaVendorConnectorMapping) | **DELETE** /vendor-connector-mappings | Delete Vendor Connector Mapping
[**Get-BetaVendorConnectorMappings**](BetaVendorConnectorMappingsApi.md#Get-BetaVendorConnectorMappings) | **GET** /vendor-connector-mappings | List Vendor Connector Mappings


<a id="New-BetaVendorConnectorMapping"></a>
# **New-BetaVendorConnectorMapping**
> VendorConnectorMapping New-BetaVendorConnectorMapping<br>
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
    $Result = New-BetaVendorConnectorMapping -VendorConnectorMapping $VendorConnectorMapping
} catch {
    Write-Host ("Exception occurred when calling New-BetaVendorConnectorMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-BetaVendorConnectorMapping"></a>
# **Remove-BetaVendorConnectorMapping**
> DeleteVendorConnectorMapping200Response Remove-BetaVendorConnectorMapping<br>
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
    $Result = Remove-BetaVendorConnectorMapping -VendorConnectorMapping $VendorConnectorMapping
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaVendorConnectorMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-BetaVendorConnectorMappings"></a>
# **Get-BetaVendorConnectorMappings**
> VendorConnectorMapping[] Get-BetaVendorConnectorMappings<br>

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
    $Result = Get-BetaVendorConnectorMappings
} catch {
    Write-Host ("Exception occurred when calling Get-BetaVendorConnectorMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

