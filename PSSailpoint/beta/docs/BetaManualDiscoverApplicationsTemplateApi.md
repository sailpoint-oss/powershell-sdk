# PSSailpointBeta.PSSailpointBeta\Api.BetaManualDiscoverApplicationsTemplateApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaManualDiscoverApplicationsCsvTemplate**](BetaManualDiscoverApplicationsTemplateApi.md#Get-BetaManualDiscoverApplicationsCsvTemplate) | **GET** /manual-discover-applications-template | CSV template download for discovery


<a id="Get-BetaManualDiscoverApplicationsCsvTemplate"></a>
# **Get-BetaManualDiscoverApplicationsCsvTemplate**
> ManualDiscoverApplicationsTemplate Get-BetaManualDiscoverApplicationsCsvTemplate<br>

CSV template download for discovery

Allows the user to download an example CSV file with two columns `application_name` and `domain`. The CSV file contains a single row with the values 'Example Application' and 'Example Description'. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# CSV template download for discovery
try {
    $Result = Get-BetaManualDiscoverApplicationsCsvTemplate
} catch {
    Write-Host ("Exception occurred when calling Get-BetaManualDiscoverApplicationsCsvTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ManualDiscoverApplicationsTemplate**](ManualDiscoverApplicationsTemplate.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

