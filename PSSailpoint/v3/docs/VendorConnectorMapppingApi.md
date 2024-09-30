# PSSailpoint.V3.PSSailpoint.V3\Api.VendorConnectorMapppingApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-VendorConnectorMappings**](VendorConnectorMapppingApi.md#Get-VendorConnectorMappings) | **GET** /vendor-connector-mappings | List Vendor Connector Mappings


<a id="Get-VendorConnectorMappings"></a>
# **Get-VendorConnectorMappings**
> VendorConnectorMapping[] Get-VendorConnectorMappings<br>

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
    $Result = Get-VendorConnectorMappings
} catch {
    Write-Host ("Exception occurred when calling Get-VendorConnectorMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

