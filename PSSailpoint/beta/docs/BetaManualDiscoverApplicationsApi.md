# PSSailpointBeta.PSSailpointBeta\Api.BetaManualDiscoverApplicationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Send-BetaManualDiscoverApplicationsCsvTemplate**](BetaManualDiscoverApplicationsApi.md#Send-BetaManualDiscoverApplicationsCsvTemplate) | **POST** /manual-discover-applications | CSV Upload to discover applications


<a id="Send-BetaManualDiscoverApplicationsCsvTemplate"></a>
# **Send-BetaManualDiscoverApplicationsCsvTemplate**
> ManualDiscoverApplications Send-BetaManualDiscoverApplicationsCsvTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsvFile] <System.IO.FileInfo><br>

CSV Upload to discover applications

This API allows for the upload of a CSV file containing application data to be manually correlated to potential IDN connector(s).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CsvFile =  # System.IO.FileInfo | 

# CSV Upload to discover applications
try {
    $Result = Send-BetaManualDiscoverApplicationsCsvTemplate -CsvFile $CsvFile
} catch {
    Write-Host ("Exception occurred when calling Send-BetaManualDiscoverApplicationsCsvTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CsvFile** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

[**ManualDiscoverApplications**](ManualDiscoverApplications.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: multipart/form-data, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

