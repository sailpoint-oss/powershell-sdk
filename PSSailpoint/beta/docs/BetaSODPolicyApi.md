# PSSailpointBeta.PSSailpointBeta/Api.BetaSODPolicyApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSodPolicy**](BetaSODPolicyApi.md#New-BetaSodPolicy) | **POST** /sod-policies | Create SOD policy
[**Remove-BetaSodPolicy**](BetaSODPolicyApi.md#Remove-BetaSodPolicy) | **DELETE** /sod-policies/{id} | Delete SOD policy by ID
[**Remove-BetaSodPolicySchedule**](BetaSODPolicyApi.md#Remove-BetaSodPolicySchedule) | **DELETE** /sod-policies/{id}/schedule | Delete SOD policy schedule
[**Invoke-BetaDownloadCustomViolationReport**](BetaSODPolicyApi.md#Invoke-BetaDownloadCustomViolationReport) | **GET** /sod-violation-report/{reportResultId}/download/{fileName} | Download custom violation report
[**Invoke-BetaDownloadDefaultViolationReport**](BetaSODPolicyApi.md#Invoke-BetaDownloadDefaultViolationReport) | **GET** /sod-violation-report/{reportResultId}/download | Download violation report
[**Get-BetaSodAllReportRunStatus**](BetaSODPolicyApi.md#Get-BetaSodAllReportRunStatus) | **GET** /sod-violation-report | Get multi-report run task status
[**Get-BetaSodPolicy**](BetaSODPolicyApi.md#Get-BetaSodPolicy) | **GET** /sod-policies/{id} | Get SOD policy by ID
[**Get-BetaSodPolicySchedule**](BetaSODPolicyApi.md#Get-BetaSodPolicySchedule) | **GET** /sod-policies/{id}/schedule | Get SOD policy schedule
[**Get-BetaSodViolationReportRunStatus**](BetaSODPolicyApi.md#Get-BetaSodViolationReportRunStatus) | **GET** /sod-violation-report-status/{reportResultId} | Get violation report run status
[**Get-BetaSodViolationReportStatus**](BetaSODPolicyApi.md#Get-BetaSodViolationReportStatus) | **GET** /sod-policies/{id}/violation-report | Get SOD violation report status
[**Get-BetaSodPolicies**](BetaSODPolicyApi.md#Get-BetaSodPolicies) | **GET** /sod-policies | List SOD policies
[**Update-BetaSodPolicy**](BetaSODPolicyApi.md#Update-BetaSodPolicy) | **PATCH** /sod-policies/{id} | Patch a SOD policy
[**Start-BetaSodAllPoliciesForOrg**](BetaSODPolicyApi.md#Start-BetaSodAllPoliciesForOrg) | **POST** /sod-violation-report/run | Runs all policies for org
[**Start-BetaSodPolicy**](BetaSODPolicyApi.md#Start-BetaSodPolicy) | **POST** /sod-policies/{id}/violation-report/run | Runs SOD policy violation report
[**Update-BetaPolicySchedule**](BetaSODPolicyApi.md#Update-BetaPolicySchedule) | **PUT** /sod-policies/{id}/schedule | Update SOD Policy schedule
[**Update-BetaSodPolicy**](BetaSODPolicyApi.md#Update-BetaSodPolicy) | **PUT** /sod-policies/{id} | Update SOD policy by ID


<a name="New-BetaSodPolicy"></a>
# **New-BetaSodPolicy**
> SodPolicy New-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Create SOD policy

This creates both General and Conflicting Access Based policy, with a limit of 50 entitlements for each (left & right) criteria for Conflicting Access Based SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"

$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $BaseReferenceDto

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$ConflictingAccessCriteria = Initialize-ConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $BaseReferenceDto -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $ConflictingAccessCriteria # SodPolicy | 

# Create SOD policy
try {
    $Result = New-BetaSodPolicy -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling New-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SodPolicy** | [**SodPolicy**](SodPolicy.md)|  | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaSodPolicy"></a>
# **Remove-BetaSodPolicy**
> void Remove-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Logical] <System.Nullable[Boolean]><br>

Delete SOD policy by ID

This deletes a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD Policy to delete.
$Logical = $true # Boolean | Indicates whether this is a soft delete (logical true) or a hard delete. (optional) (default to $true)

# Delete SOD policy by ID
try {
    $Result = Remove-BetaSodPolicy -Id $Id -Logical $Logical
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD Policy to delete. | 
 **Logical** | **Boolean**| Indicates whether this is a soft delete (logical true) or a hard delete. | [optional] [default to $true]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaSodPolicySchedule"></a>
# **Remove-BetaSodPolicySchedule**
> void Remove-BetaSodPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete SOD policy schedule

This deletes schedule for a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD policy the schedule must be deleted for.

# Delete SOD policy schedule
try {
    $Result = Remove-BetaSodPolicySchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSodPolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD policy the schedule must be deleted for. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDownloadCustomViolationReport"></a>
# **Invoke-BetaDownloadCustomViolationReport**
> System.IO.FileInfo Invoke-BetaDownloadCustomViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileName] <String><br>

Download custom violation report

This allows to download a specified named violation report for a given report reference. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the report reference to download.
$FileName = "custom-name" # String | Custom Name for the  file.

# Download custom violation report
try {
    $Result = Invoke-BetaDownloadCustomViolationReport -ReportResultId $ReportResultId -FileName $FileName
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDownloadCustomViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDownloadDefaultViolationReport"></a>
# **Invoke-BetaDownloadDefaultViolationReport**
> System.IO.FileInfo Invoke-BetaDownloadDefaultViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Download violation report

This allows to download a violation report for a given report reference. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the report reference to download.

# Download violation report
try {
    $Result = Invoke-BetaDownloadDefaultViolationReport -ReportResultId $ReportResultId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDownloadDefaultViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSodAllReportRunStatus"></a>
# **Get-BetaSodAllReportRunStatus**
> ReportResultReference Get-BetaSodAllReportRunStatus<br>

Get multi-report run task status

This endpoint gets the status for a violation report for all policy run. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSodPolicy"></a>
# **Get-BetaSodPolicy**
> SodPolicy Get-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD policy by ID

This gets specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to retrieve.

# Get SOD policy by ID
try {
    $Result = Get-BetaSodPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the object reference to retrieve. | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSodPolicySchedule"></a>
# **Get-BetaSodPolicySchedule**
> SodPolicySchedule Get-BetaSodPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD policy schedule

This endpoint gets a specified SOD policy's schedule. Requires the role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to retrieve.

# Get SOD policy schedule
try {
    $Result = Get-BetaSodPolicySchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodPolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the object reference to retrieve. | 

### Return type

[**SodPolicySchedule**](SodPolicySchedule.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSodViolationReportRunStatus"></a>
# **Get-BetaSodViolationReportRunStatus**
> ReportResultReference Get-BetaSodViolationReportRunStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Get violation report run status

This gets the status for a violation report run task that has already been invoked. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSodViolationReportStatus"></a>
# **Get-BetaSodViolationReportStatus**
> ReportResultReference Get-BetaSodViolationReportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD violation report status

This gets the status for a violation report run task that has already been invoked. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to retrieve.

# Get SOD violation report status
try {
    $Result = Get-BetaSodViolationReportStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodViolationReportStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the object reference to retrieve. | 

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSodPolicies"></a>
# **Get-BetaSodPolicies**
> SodPolicy[] Get-BetaSodPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List SOD policies

This gets list of all SOD policies. Requires role of ORG_ADMIN

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "bc693f07e7b645539626c25954c58554"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **name**: *eq*  **state**: *eq* (optional)

# List SOD policies
try {
    $Result = Get-BetaSodPolicies -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **name**: *eq*  **state**: *eq* | [optional] 

### Return type

[**SodPolicy[]**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSodPolicy"></a>
# **Update-BetaSodPolicy**
> SodPolicy Update-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Patch a SOD policy

Allows updating SOD Policy fields other than [""id"",""created"",""creatorId"",""policyQuery"",""type""] using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Requires role of ORG_ADMIN. This endpoint can only patch CONFLICTING_ACCESS_BASED type policies. Do not use this endpoint to patch general policies - doing so will build an API exception. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the SOD policy being modified.
$RequestBody =  # SystemCollectionsHashtable[] | A list of SOD Policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * ownerRef * externalPolicyReference * compensatingControls * correctionAdvice * state * tags * violationOwnerAssignmentConfig * scheduled * conflictingAccessCriteria 

# Patch a SOD policy
try {
    $Result = Update-BetaSodPolicy -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD policy being modified. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of SOD Policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * ownerRef * externalPolicyReference * compensatingControls * correctionAdvice * state * tags * violationOwnerAssignmentConfig * scheduled * conflictingAccessCriteria  | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaSodAllPoliciesForOrg"></a>
# **Start-BetaSodAllPoliciesForOrg**
> ReportResultReference Start-BetaSodAllPoliciesForOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiPolicyRequest] <PSCustomObject><br>

Runs all policies for org

Runs multi-policy report for the org. If a policy reports more than 5000 violations, the report mentions that the violation limit was exceeded for that policy. If the request is empty, the report runs for all policies. Otherwise, the report runs for only the filtered policy list provided. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaSodPolicy"></a>
# **Start-BetaSodPolicy**
> ReportResultReference Start-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Runs SOD policy violation report

This invokes processing of violation report for given SOD policy. If the policy reports more than 5000 violations, the report returns with violation limit exceeded message. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The SOD policy ID to run.

# Runs SOD policy violation report
try {
    $Result = Start-BetaSodPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The SOD policy ID to run. | 

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaPolicySchedule"></a>
# **Update-BetaPolicySchedule**
> SodPolicySchedule Update-BetaPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicySchedule] <PSCustomObject><br>

Update SOD Policy schedule

This updates schedule for a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD policy to update its schedule.
$Schedule1Days = Initialize-Schedule1Days -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1Hours = Initialize-Schedule1Hours -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1 = Initialize-Schedule1 -Type "DAILY" -Days $Schedule1Days -Hours $Schedule1Hours -Expiration (Get-Date) -TimeZoneId "GMT-06:00"

$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$SodPolicySchedule = Initialize-SodPolicySchedule -Name "SCH-1584312283015" -Created (Get-Date) -Modified (Get-Date) -Description "Schedule for policy xyz" -Schedule $Schedule1 -Recipients $BaseReferenceDto -EmailEmptyResults $false -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" # SodPolicySchedule | 

# Update SOD Policy schedule
try {
    $Result = Update-BetaPolicySchedule -Id $Id -SodPolicySchedule $SodPolicySchedule
} catch {
    Write-Host ("Exception occurred when calling Update-BetaPolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD policy to update its schedule. | 
 **SodPolicySchedule** | [**SodPolicySchedule**](SodPolicySchedule.md)|  | 

### Return type

[**SodPolicySchedule**](SodPolicySchedule.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSodPolicy"></a>
# **Update-BetaSodPolicy**
> SodPolicy Update-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Update SOD policy by ID

This updates a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD policy to update.
$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"

$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $BaseReferenceDto

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$ConflictingAccessCriteria = Initialize-ConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $BaseReferenceDto -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $ConflictingAccessCriteria # SodPolicy | 

# Update SOD policy by ID
try {
    $Result = Update-BetaSodPolicy -Id $Id -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD policy to update. | 
 **SodPolicy** | [**SodPolicy**](SodPolicy.md)|  | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

