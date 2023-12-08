# PSSailpointBeta.PSSailpointBeta\Api.BetaIAIMessageCatalogsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaMessageCatalogs**](BetaIAIMessageCatalogsApi.md#Get-BetaMessageCatalogs) | **GET** /translation-catalogs/{catalog-id} | Get Message catalogs


<a id="Get-BetaMessageCatalogs"></a>
# **Get-BetaMessageCatalogs**
> MessageCatalogDto[] Get-BetaMessageCatalogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CatalogId] <String><br>

Get Message catalogs

The getMessageCatalogs API returns message catalog based on the language headers in the requested object.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CatalogId = "recommender" # String | The ID of the message catalog.

# Get Message catalogs
try {
    $Result = Get-BetaMessageCatalogs -CatalogId $CatalogId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMessageCatalogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CatalogId** | **String**| The ID of the message catalog. | 

### Return type

[**MessageCatalogDto[]**](MessageCatalogDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

