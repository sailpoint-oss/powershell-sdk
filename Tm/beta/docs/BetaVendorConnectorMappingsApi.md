# Tm.Beta.Tm.Beta\Api.BetaVendorConnectorMappingsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaVendorConnectorMapping**](BetaVendorConnectorMappingsApi.md#New-BetaVendorConnectorMapping) | **POST** /vendor-connector-mappings | Create a vendor connector mapping
[**Remove-BetaVendorConnectorMapping**](BetaVendorConnectorMappingsApi.md#Remove-BetaVendorConnectorMapping) | **DELETE** /vendor-connector-mappings | Delete a vendor connector mapping


<a id="New-BetaVendorConnectorMapping"></a>
# **New-BetaVendorConnectorMapping**
> VendorConnectorMapping New-BetaVendorConnectorMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VendorConnectorMapping] <PSCustomObject><br>

Create a vendor connector mapping

Creates a new mapping between a SaaS vendor and an IDN connector to establish correlation paths. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$VendorConnectorMappingUpdatedAt = Initialize-VendorConnectorMappingUpdatedAt -Time (Get-Date) -Valid $true
$VendorConnectorMappingUpdatedBy = Initialize-VendorConnectorMappingUpdatedBy -String "user-67891" -Valid $true
$VendorConnectorMappingDeletedAt = Initialize-VendorConnectorMappingDeletedAt -Time (Get-Date) -Valid $false
$VendorConnectorMappingDeletedBy = Initialize-VendorConnectorMappingDeletedBy -String "MyString" -Valid $false
$VendorConnectorMapping = Initialize-VendorConnectorMapping -Id "78733556-9ea3-4f59-bf69-e5cd92b011b4" -Vendor "Example vendor" -Connector "Example connector" -CreatedAt (Get-Date) -CreatedBy "admin" -UpdatedAt $VendorConnectorMappingUpdatedAt -UpdatedBy $VendorConnectorMappingUpdatedBy -DeletedAt $VendorConnectorMappingDeletedAt -DeletedBy $VendorConnectorMappingDeletedBy # VendorConnectorMapping | 

# Create a vendor connector mapping
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaVendorConnectorMapping"></a>
# **Remove-BetaVendorConnectorMapping**
> DeleteVendorConnectorMapping200Response Remove-BetaVendorConnectorMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VendorConnectorMapping] <PSCustomObject><br>

Delete a vendor connector mapping

Soft deletes a mapping between a SaaS vendor and an IDN connector, removing the established correlation. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$VendorConnectorMappingUpdatedAt = Initialize-VendorConnectorMappingUpdatedAt -Time (Get-Date) -Valid $true
$VendorConnectorMappingUpdatedBy = Initialize-VendorConnectorMappingUpdatedBy -String "user-67891" -Valid $true
$VendorConnectorMappingDeletedAt = Initialize-VendorConnectorMappingDeletedAt -Time (Get-Date) -Valid $false
$VendorConnectorMappingDeletedBy = Initialize-VendorConnectorMappingDeletedBy -String "MyString" -Valid $false
$VendorConnectorMapping = Initialize-VendorConnectorMapping -Id "78733556-9ea3-4f59-bf69-e5cd92b011b4" -Vendor "Example vendor" -Connector "Example connector" -CreatedAt (Get-Date) -CreatedBy "admin" -UpdatedAt $VendorConnectorMappingUpdatedAt -UpdatedBy $VendorConnectorMappingUpdatedBy -DeletedAt $VendorConnectorMappingDeletedAt -DeletedBy $VendorConnectorMappingDeletedBy # VendorConnectorMapping | 

# Delete a vendor connector mapping
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

