# PSSailpoint.PSSailpoint/Api.ReportsDataExtractionApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Suspend-Report**](ReportsDataExtractionApi.md#Suspend-Report) | **POST** /reports/{id}/cancel | Cancel Report
[**Get-Report**](ReportsDataExtractionApi.md#Get-Report) | **GET** /reports/{taskResultId} | Get Report File
[**Get-ReportResult**](ReportsDataExtractionApi.md#Get-ReportResult) | **GET** /reports/{taskResultId}/result | Get Report Result
[**Start-Report**](ReportsDataExtractionApi.md#Start-Report) | **POST** /reports/run | Run Report


<a name="Suspend-Report"></a>
# **Suspend-Report**
> void Suspend-Report<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Cancel Report

Cancels a running report.

### Example
```powershell
$Id = "a1ed223247144cc29d23c632624b4767" # String | ID of the running Report to cancel

# Cancel Report
try {
    $Result = Suspend-Report -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Suspend-Report: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the running Report to cancel | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Report"></a>
# **Get-Report**
> System.IO.FileInfo Get-Report<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaskResultId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Auditable] <System.Nullable[Boolean]><br>

Get Report File

Gets a report in file format.

### Example
```powershell
$TaskResultId = "ef38f94347e94562b5bb8424a56397d8" # String | Unique identifier of the task result which handled report
$FileFormat = "csv" # String | Output format of the requested report file
$Name = "Identities Details Report" # String | preferred Report file name, by default will be used report name from task result. (optional)
$Auditable = $true # Boolean | Enables auditing for current report download. Will create an audit event and sent it to the REPORT cloud-audit kafka topic.  Event will be created if there is any result present by requested taskResultId. (optional) (default to $false)

# Get Report File
try {
    $Result = Get-Report -TaskResultId $TaskResultId -FileFormat $FileFormat -Name $Name -Auditable $Auditable
} catch {
    Write-Host ("Exception occurred when calling Get-Report: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TaskResultId** | **String**| Unique identifier of the task result which handled report | 
 **FileFormat** | **String**| Output format of the requested report file | 
 **Name** | **String**| preferred Report file name, by default will be used report name from task result. | [optional] 
 **Auditable** | **Boolean**| Enables auditing for current report download. Will create an audit event and sent it to the REPORT cloud-audit kafka topic.  Event will be created if there is any result present by requested taskResultId. | [optional] [default to $false]

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ReportResult"></a>
# **Get-ReportResult**
> ReportResults Get-ReportResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaskResultId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Completed] <System.Nullable[Boolean]><br>

Get Report Result

Get the report results for a report that was run or is running. Returns empty report result in case there are no active task definitions with used in payload task definition name.

### Example
```powershell
$TaskResultId = "ef38f94347e94562b5bb8424a56397d8" # String | Unique identifier of the task result which handled report
$Completed = $true # Boolean | state of task result to apply ordering when results are fetching from the DB (optional) (default to $false)

# Get Report Result
try {
    $Result = Get-ReportResult -TaskResultId $TaskResultId -Completed $Completed
} catch {
    Write-Host ("Exception occurred when calling Get-ReportResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TaskResultId** | **String**| Unique identifier of the task result which handled report | 
 **Completed** | **Boolean**| state of task result to apply ordering when results are fetching from the DB | [optional] [default to $false]

### Return type

[**ReportResults**](ReportResults.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-Report"></a>
# **Start-Report**
> TaskResultDetails Start-Report<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportDetails] <PSCustomObject><br>

Run Report

Runs a report according to input report details. If non-concurrent task is already running then it returns, otherwise new task creates and returns.

### Example
```powershell
"CSV"

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$ModelFilter = Initialize-ModelFilter -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$InnerHit = Initialize-InnerHit -Query "source.name:\"Active Directory\"" -Type "access"
$Query = Initialize-Query -Query "name:a*" -Fields "MyFields" -TimeZone "America/Chicago" -InnerHit $InnerHit

$ReportDetailsArguments = Initialize-ReportDetailsArguments -Application "2c9180897eSourceIde781782f705b9" -SourceName "DataScienceSourceName" -DefaultS3Bucket $true -S3Bucket "the-dev-bucket" -CorrelatedOnly $true -AuthoritativeSource "1234sourceId5678902" -SelectedFormats "CSV" -Indices "accessprofiles" -Filters @{ key_example = $ModelFilter } -Query $Query -IncludeNested $true -Sort "MySort"

$ReportDetails = Initialize-ReportDetails -ReportType "ACCOUNTS" -Arguments $ReportDetailsArguments # ReportDetails | 

# Run Report
try {
    $Result = Start-Report -ReportDetails $ReportDetails
} catch {
    Write-Host ("Exception occurred when calling Start-Report: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportDetails** | [**ReportDetails**](ReportDetails.md)|  | 

### Return type

[**TaskResultDetails**](TaskResultDetails.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

