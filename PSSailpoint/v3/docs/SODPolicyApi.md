# PSSailpoint.PSSailpoint\Api.SODPolicyApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-CustomViolationReport**](SODPolicyApi.md#Get-CustomViolationReport) | **GET** /sod-violation-report/{reportResultId}/download/{fileName} | Download custom violation report
[**Get-DefaultViolationReport**](SODPolicyApi.md#Get-DefaultViolationReport) | **GET** /sod-violation-report/{reportResultId}/download | Download violation report
[**Get-SodAllReportRunStatus**](SODPolicyApi.md#Get-SodAllReportRunStatus) | **GET** /sod-violation-report | Get multi-report run task status
[**Start-SodAllPoliciesForOrg**](SODPolicyApi.md#Start-SodAllPoliciesForOrg) | **POST** /sod-violation-report/run | Runs all policies for org


<a id="Get-CustomViolationReport"></a>
# **Get-CustomViolationReport**
> System.IO.FileInfo Get-CustomViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileName] <String><br>

Download custom violation report

This allows to download a specified named violation report for a given report reference.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the report reference to download.
$FileName = "custom-name" # String | Custom Name for the  file.

# Download custom violation report
try {
    $Result = Get-CustomViolationReport -ReportResultId $ReportResultId -FileName $FileName
} catch {
    Write-Host ("Exception occurred when calling Get-CustomViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportResultId** | **String**| The ID of the report reference to download. | 
 **FileName** | **String**| Custom Name for the  file. | 

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DefaultViolationReport"></a>
# **Get-DefaultViolationReport**
> System.IO.FileInfo Get-DefaultViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Download violation report

This allows to download a violation report for a given report reference.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the report reference to download.

# Download violation report
try {
    $Result = Get-DefaultViolationReport -ReportResultId $ReportResultId
} catch {
    Write-Host ("Exception occurred when calling Get-DefaultViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportResultId** | **String**| The ID of the report reference to download. | 

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SodAllReportRunStatus"></a>
# **Get-SodAllReportRunStatus**
> ReportResultReference Get-SodAllReportRunStatus<br>

Get multi-report run task status

This endpoint gets the status for a violation report for all policy run.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get multi-report run task status
try {
    $Result = Get-SodAllReportRunStatus
} catch {
    Write-Host ("Exception occurred when calling Get-SodAllReportRunStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-SodAllPoliciesForOrg"></a>
# **Start-SodAllPoliciesForOrg**
> ReportResultReference Start-SodAllPoliciesForOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiPolicyRequest] <PSCustomObject><br>

Runs all policies for org

Runs multi-policy report for the org. If a policy reports more than 5000 violations, the report mentions that the violation limit was exceeded for that policy. If the request is empty, the report runs for all policies. Otherwise, the report runs for only the filtered policy list provided.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiPolicyRequest = Initialize-MultiPolicyRequest -FilteredPolicyList "[b868cd40-ffa4-4337-9c07-1a51846cfa94, 63a07a7b-39a4-48aa-956d-50c827deba2a]" # MultiPolicyRequest |  (optional)

# Runs all policies for org
try {
    $Result = Start-SodAllPoliciesForOrg -MultiPolicyRequest $MultiPolicyRequest
} catch {
    Write-Host ("Exception occurred when calling Start-SodAllPoliciesForOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultiPolicyRequest** | [**MultiPolicyRequest**](MultiPolicyRequest.md)|  | [optional] 

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

