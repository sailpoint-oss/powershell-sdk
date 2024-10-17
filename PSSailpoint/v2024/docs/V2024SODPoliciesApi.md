# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SODPoliciesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024SodPolicy**](V2024SODPoliciesApi.md#New-V2024SodPolicy) | **POST** /sod-policies | Create SOD policy
[**Remove-V2024SodPolicy**](V2024SODPoliciesApi.md#Remove-V2024SodPolicy) | **DELETE** /sod-policies/{id} | Delete SOD policy by ID
[**Remove-V2024SodPolicySchedule**](V2024SODPoliciesApi.md#Remove-V2024SodPolicySchedule) | **DELETE** /sod-policies/{id}/schedule | Delete SOD policy schedule
[**Get-V2024CustomViolationReport**](V2024SODPoliciesApi.md#Get-V2024CustomViolationReport) | **GET** /sod-violation-report/{reportResultId}/download/{fileName} | Download custom violation report
[**Get-V2024DefaultViolationReport**](V2024SODPoliciesApi.md#Get-V2024DefaultViolationReport) | **GET** /sod-violation-report/{reportResultId}/download | Download violation report
[**Get-V2024SodAllReportRunStatus**](V2024SODPoliciesApi.md#Get-V2024SodAllReportRunStatus) | **GET** /sod-violation-report | Get multi-report run task status
[**Get-V2024SodPolicy**](V2024SODPoliciesApi.md#Get-V2024SodPolicy) | **GET** /sod-policies/{id} | Get SOD policy by ID
[**Get-V2024SodPolicySchedule**](V2024SODPoliciesApi.md#Get-V2024SodPolicySchedule) | **GET** /sod-policies/{id}/schedule | Get SOD policy schedule
[**Get-V2024SodViolationReportRunStatus**](V2024SODPoliciesApi.md#Get-V2024SodViolationReportRunStatus) | **GET** /sod-policies/sod-violation-report-status/{reportResultId} | Get violation report run status
[**Get-V2024SodViolationReportStatus**](V2024SODPoliciesApi.md#Get-V2024SodViolationReportStatus) | **GET** /sod-policies/{id}/violation-report | Get SOD violation report status
[**Get-V2024SodPolicies**](V2024SODPoliciesApi.md#Get-V2024SodPolicies) | **GET** /sod-policies | List SOD policies
[**Update-V2024SodPolicy**](V2024SODPoliciesApi.md#Update-V2024SodPolicy) | **PATCH** /sod-policies/{id} | Patch SOD policy by ID
[**Send-V2024PolicySchedule**](V2024SODPoliciesApi.md#Send-V2024PolicySchedule) | **PUT** /sod-policies/{id}/schedule | Update SOD Policy schedule
[**Send-V2024SodPolicy**](V2024SODPoliciesApi.md#Send-V2024SodPolicy) | **PUT** /sod-policies/{id} | Update SOD policy by ID
[**Start-V2024EvaluateSodPolicy**](V2024SODPoliciesApi.md#Start-V2024EvaluateSodPolicy) | **POST** /sod-policies/{id}/evaluate | Evaluate one policy by ID
[**Start-V2024SodAllPoliciesForOrg**](V2024SODPoliciesApi.md#Start-V2024SodAllPoliciesForOrg) | **POST** /sod-violation-report/run | Runs all policies for org
[**Start-V2024SodPolicy**](V2024SODPoliciesApi.md#Start-V2024SodPolicy) | **POST** /sod-policies/{id}/violation-report/run | Runs SOD policy violation report


<a id="New-V2024SodPolicy"></a>
# **New-V2024SodPolicy**
> SodPolicy New-V2024SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Create SOD policy

This creates both General and Conflicting Access Based policy, with a limit of 50 entitlements for each (left & right) criteria for Conflicting Access Based SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SodPolicyOwnerRef = Initialize-SodPolicyOwnerRef -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"

$ViolationOwnerAssignmentConfigOwnerRef = Initialize-ViolationOwnerAssignmentConfigOwnerRef -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"
$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $ViolationOwnerAssignmentConfigOwnerRef

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$SodPolicyConflictingAccessCriteria = Initialize-SodPolicyConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $SodPolicyOwnerRef -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $SodPolicyConflictingAccessCriteria # SodPolicy | 

# Create SOD policy
try {
    $Result = New-V2024SodPolicy -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling New-V2024SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024SodPolicy"></a>
# **Remove-V2024SodPolicy**
> void Remove-V2024SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Logical] <System.Nullable[Boolean]><br>

Delete SOD policy by ID

This deletes a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the SOD Policy to delete.
$Logical = $true # Boolean | Indicates whether this is a soft delete (logical true) or a hard delete.  Soft delete marks the policy as deleted and just save it with this status. It could be fully deleted or recovered further.  Hard delete vise versa permanently delete SOD request during this call. (optional) (default to $true)

# Delete SOD policy by ID
try {
    $Result = Remove-V2024SodPolicy -Id $Id -Logical $Logical
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD Policy to delete. | 
 **Logical** | **Boolean**| Indicates whether this is a soft delete (logical true) or a hard delete.  Soft delete marks the policy as deleted and just save it with this status. It could be fully deleted or recovered further.  Hard delete vise versa permanently delete SOD request during this call. | [optional] [default to $true]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024SodPolicySchedule"></a>
# **Remove-V2024SodPolicySchedule**
> void Remove-V2024SodPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete SOD policy schedule

This deletes schedule for a specified SOD policy by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the SOD policy the schedule must be deleted for.

# Delete SOD policy schedule
try {
    $Result = Remove-V2024SodPolicySchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SodPolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CustomViolationReport"></a>
# **Get-V2024CustomViolationReport**
> System.IO.FileInfo Get-V2024CustomViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileName] <String><br>

Download custom violation report

This allows to download a specified named violation report for a given report reference.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the report reference to download.
$FileName = "custom-name" # String | Custom Name for the  file.

# Download custom violation report
try {
    $Result = Get-V2024CustomViolationReport -ReportResultId $ReportResultId -FileName $FileName
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CustomViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024DefaultViolationReport"></a>
# **Get-V2024DefaultViolationReport**
> System.IO.FileInfo Get-V2024DefaultViolationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Download violation report

This allows to download a violation report for a given report reference.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the report reference to download.

# Download violation report
try {
    $Result = Get-V2024DefaultViolationReport -ReportResultId $ReportResultId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024DefaultViolationReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SodAllReportRunStatus"></a>
# **Get-V2024SodAllReportRunStatus**
> ReportResultReference Get-V2024SodAllReportRunStatus<br>

Get multi-report run task status

This endpoint gets the status for a violation report for all policy run.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get multi-report run task status
try {
    $Result = Get-V2024SodAllReportRunStatus
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SodAllReportRunStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SodPolicy"></a>
# **Get-V2024SodPolicy**
> SodPolicy Get-V2024SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD policy by ID

This gets specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the SOD Policy to retrieve.

# Get SOD policy by ID
try {
    $Result = Get-V2024SodPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD Policy to retrieve. | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SodPolicySchedule"></a>
# **Get-V2024SodPolicySchedule**
> SodPolicySchedule Get-V2024SodPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD policy schedule

This endpoint gets a specified SOD policy's schedule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the SOD policy schedule to retrieve.

# Get SOD policy schedule
try {
    $Result = Get-V2024SodPolicySchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SodPolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD policy schedule to retrieve. | 

### Return type

[**SodPolicySchedule**](SodPolicySchedule.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SodViolationReportRunStatus"></a>
# **Get-V2024SodViolationReportRunStatus**
> ReportResultReference Get-V2024SodViolationReportRunStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportResultId] <String><br>

Get violation report run status

This gets the status for a violation report run task that has already been invoked.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReportResultId = "2e8d8180-24bc-4d21-91c6-7affdb473b0d" # String | The ID of the report reference to retrieve.

# Get violation report run status
try {
    $Result = Get-V2024SodViolationReportRunStatus -ReportResultId $ReportResultId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SodViolationReportRunStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SodViolationReportStatus"></a>
# **Get-V2024SodViolationReportStatus**
> ReportResultReference Get-V2024SodViolationReportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD violation report status

This gets the status for a violation report run task that has already been invoked.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the violation report to retrieve status for.

# Get SOD violation report status
try {
    $Result = Get-V2024SodViolationReportStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SodViolationReportStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the violation report to retrieve status for. | 

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SodPolicies"></a>
# **Get-V2024SodPolicies**
> SodPolicy[] Get-V2024SodPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List SOD policies

This gets list of all SOD policies. Requires role of ORG_ADMIN

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "bc693f07e7b645539626c25954c58554"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, in*  **state**: *eq, in* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, description** (optional)

# List SOD policies
try {
    $Result = Get-V2024SodPolicies -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SodPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, in*  **state**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, description** | [optional] 

### Return type

[**SodPolicy[]**](SodPolicy.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024SodPolicy"></a>
# **Update-V2024SodPolicy**
> SodPolicy Update-V2024SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch SOD policy by ID

Allows updating SOD Policy fields other than [""id"",""created"",""creatorId"",""policyQuery"",""type""] using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Requires role of ORG_ADMIN. This endpoint can only patch CONFLICTING_ACCESS_BASED type policies. Do not use this endpoint to patch general policies - doing so will build an API exception. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c918083-5d19-1a86-015d-28455b4a2329" # String | The ID of the SOD policy being modified.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of SOD Policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * ownerRef * externalPolicyReference * compensatingControls * correctionAdvice * state * tags * violationOwnerAssignmentConfig * scheduled * conflictingAccessCriteria 

# Patch SOD policy by ID
try {
    $Result = Update-V2024SodPolicy -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD policy being modified. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of SOD Policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * ownerRef * externalPolicyReference * compensatingControls * correctionAdvice * state * tags * violationOwnerAssignmentConfig * scheduled * conflictingAccessCriteria  | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024PolicySchedule"></a>
# **Send-V2024PolicySchedule**
> SodPolicySchedule Send-V2024PolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicySchedule] <PSCustomObject><br>

Update SOD Policy schedule

This updates schedule for a specified SOD policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the SOD policy to update its schedule.
$MatchTerm = Initialize-MatchTerm -Name "mail" -Value "1234 Albany Dr" -Op "eq" -Container $true -And $false -Children @{ key_example =  }
$SelectorAccountMatchConfigMatchExpression = Initialize-SelectorAccountMatchConfigMatchExpression -MatchTerms $MatchTerm -And $true

$SelectorAccountMatchConfig = Initialize-SelectorAccountMatchConfig -MatchExpression $SelectorAccountMatchConfigMatchExpression

$Schedule2Months = Initialize-Schedule2Months -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2Days = Initialize-Schedule2Days -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2Hours = Initialize-Schedule2Hours -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2 = Initialize-Schedule2 -Type "DAILY" -Months $Schedule2Months -Days $Schedule2Days -Hours $Schedule2Hours -Expiration (Get-Date) -TimeZoneId "America/Chicago"

$SodRecipient = Initialize-SodRecipient -Type "IDENTITY" -Id "2c7180a46faadee4016fb4e018c20642" -Name "Michael Michaels"
$SodPolicySchedule = Initialize-SodPolicySchedule -Name "SCH-1584312283015" -Created (Get-Date) -Modified (Get-Date) -Description "Schedule for policy xyz" -Schedule $Schedule2 -Recipients $SodRecipient -EmailEmptyResults $false -CreatorId "0f11f2a47c944bf3a2bd742580fe3bde" -ModifierId "0f11f2a47c944bf3a2bd742580fe3bde" # SodPolicySchedule | 

# Update SOD Policy schedule
try {
    $Result = Send-V2024PolicySchedule -Id $Id -SodPolicySchedule $SodPolicySchedule
} catch {
    Write-Host ("Exception occurred when calling Send-V2024PolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SodPolicy"></a>
# **Send-V2024SodPolicy**
> SodPolicy Send-V2024SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Update SOD policy by ID

This updates a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The ID of the SOD policy to update.
$SodPolicyOwnerRef = Initialize-SodPolicyOwnerRef -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"

$ViolationOwnerAssignmentConfigOwnerRef = Initialize-ViolationOwnerAssignmentConfigOwnerRef -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"
$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $ViolationOwnerAssignmentConfigOwnerRef

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$SodPolicyConflictingAccessCriteria = Initialize-SodPolicyConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $SodPolicyOwnerRef -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $SodPolicyConflictingAccessCriteria # SodPolicy | 

# Update SOD policy by ID
try {
    $Result = Send-V2024SodPolicy -Id $Id -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-V2024EvaluateSodPolicy"></a>
# **Start-V2024EvaluateSodPolicy**
> ReportResultReference Start-V2024EvaluateSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Evaluate one policy by ID

Runs the scheduled report for the policy retrieved by passed policy ID.  The report schedule is fetched from the policy retrieved by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The SOD policy ID to run.

# Evaluate one policy by ID
try {
    $Result = Start-V2024EvaluateSodPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-V2024EvaluateSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-V2024SodAllPoliciesForOrg"></a>
# **Start-V2024SodAllPoliciesForOrg**
> ReportResultReference Start-V2024SodAllPoliciesForOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiPolicyRequest] <PSCustomObject><br>

Runs all policies for org

Runs multi-policy report for the org. If a policy reports more than 5000 violations, the report mentions that the violation limit was exceeded for that policy. If the request is empty, the report runs for all policies. Otherwise, the report runs for only the filtered policy list provided.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiPolicyRequest = Initialize-MultiPolicyRequest -FilteredPolicyList "[b868cd40-ffa4-4337-9c07-1a51846cfa94, 63a07a7b-39a4-48aa-956d-50c827deba2a]" # MultiPolicyRequest |  (optional)

# Runs all policies for org
try {
    $Result = Start-V2024SodAllPoliciesForOrg -MultiPolicyRequest $MultiPolicyRequest
} catch {
    Write-Host ("Exception occurred when calling Start-V2024SodAllPoliciesForOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-V2024SodPolicy"></a>
# **Start-V2024SodPolicy**
> ReportResultReference Start-V2024SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Runs SOD policy violation report

This invokes processing of violation report for given SOD policy. If the policy reports more than 5000 violations, the report returns with violation limit exceeded message.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f943-47e9-4562-b5bb-8424a56397d8" # String | The SOD policy ID to run.

# Runs SOD policy violation report
try {
    $Result = Start-V2024SodPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-V2024SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

