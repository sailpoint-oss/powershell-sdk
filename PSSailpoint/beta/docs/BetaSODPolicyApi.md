# PSSailpointBeta.PSSailpointBeta\Api.BetaSODPolicyApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaCustomViolationReport**](BetaSODPolicyApi.md#Get-BetaCustomViolationReport) | **GET** /sod-violation-report/{reportResultId}/download/{fileName} | Download custom violation report
[**Get-BetaDefaultViolationReport**](BetaSODPolicyApi.md#Get-BetaDefaultViolationReport) | **GET** /sod-violation-report/{reportResultId}/download | Download violation report
[**Get-BetaSodAllReportRunStatus**](BetaSODPolicyApi.md#Get-BetaSodAllReportRunStatus) | **GET** /sod-violation-report | Get multi-report run task status
[**Get-BetaSodViolationReportRunStatus**](BetaSODPolicyApi.md#Get-BetaSodViolationReportRunStatus) | **GET** /sod-policies/sod-violation-report-status/{reportResultId} | Get violation report run status
[**Start-BetaSodAllPoliciesForOrg**](BetaSODPolicyApi.md#Start-BetaSodAllPoliciesForOrg) | **POST** /sod-violation-report/run | Runs all policies for org


<a id="Get-BetaCustomViolationReport"></a>
# **Get-BetaCustomViolationReport**
> System.IO.FileInfo Get-BetaCustomViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileName] <String><br>

Download custom violation report

This allows to download a specified named violation report for a given report reference. Requires role of ORG_ADMIN.

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
    $Result = Get-BetaCustomViolationReport -ReportResultId $ReportResultId -FileName $FileName
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCustomViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-BetaDefaultViolationReport"></a>
# **Get-BetaDefaultViolationReport**
> System.IO.FileInfo Get-BetaDefaultViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Download violation report

This allows to download a violation report for a given report reference. Requires role of ORG_ADMIN.

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
    $Result = Get-BetaDefaultViolationReport -ReportResultId $ReportResultId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaDefaultViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-BetaSodAllReportRunStatus"></a>
# **Get-BetaSodAllReportRunStatus**
> ReportResultReference Get-BetaSodAllReportRunStatus<br>

Get multi-report run task status

This endpoint gets the status for a violation report for all policy run. Requires role of ORG_ADMIN.

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
    $Result = Get-BetaSodAllReportRunStatus
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodAllReportRunStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-BetaSodViolationReportRunStatus"></a>
# **Get-BetaSodViolationReportRunStatus**
> ReportResultReference Get-BetaSodViolationReportRunStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Get violation report run status

This gets the status for a violation report run task that has already been invoked. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "2e8d8180-24bc-4d21-91c6-7affdb473b0d" # String | The ID of the report reference to retrieve.

# Get violation report run status
try {
    $Result = Get-BetaSodViolationReportRunStatus -ReportResultId $ReportResultId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodViolationReportRunStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportResultId** | **String**| The ID of the report reference to retrieve. | 

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-BetaSodAllPoliciesForOrg"></a>
# **Start-BetaSodAllPoliciesForOrg**
> ReportResultReference Start-BetaSodAllPoliciesForOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiPolicyRequest] <PSCustomObject><br>

Runs all policies for org

Runs multi-policy report for the org. If a policy reports more than 5000 violations, the report mentions that the violation limit was exceeded for that policy. If the request is empty, the report runs for all policies. Otherwise, the report runs for only the filtered policy list provided. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiPolicyRequest = Initialize-MultiPolicyRequest -FilteredPolicyList "MyFilteredPolicyList" # MultiPolicyRequest |  (optional)

# Runs all policies for org
try {
    $Result = Start-BetaSodAllPoliciesForOrg -MultiPolicyRequest $MultiPolicyRequest
} catch {
    Write-Host ("Exception occurred when calling Start-BetaSodAllPoliciesForOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

