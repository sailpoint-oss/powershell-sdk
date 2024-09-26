# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaTenantApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaTenant**](BetaTenantApi.md#Get-BetaTenant) | **GET** /tenant | Get Tenant Information.


<a id="Get-BetaTenant"></a>
# **Get-BetaTenant**
> Tenant Get-BetaTenant<br>

Get Tenant Information.

This rest endpoint can be used to retrieve tenant details.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Tenant Information.
try {
    $Result = Get-BetaTenant
} catch {
    Write-Host ("Exception occurred when calling Get-BetaTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Tenant**](Tenant.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

