# PSSailpointBeta.PSSailpointBeta/Api.BetaSODPolicyApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSodPolicy**](BetaSODPolicyApi.md#New-BetaSodPolicy) | **POST** /sod-policies | Create SOD Policy
[**Remove-BetaSodPolicyById**](BetaSODPolicyApi.md#Remove-BetaSodPolicyById) | **DELETE** /sod-policies/{id} | Delete SOD Policy by ID
[**Remove-BetaSodPolicyScheduleById**](BetaSODPolicyApi.md#Remove-BetaSodPolicyScheduleById) | **DELETE** /sod-policies/{id}/schedule | Delete SOD Policy Schedule
[**Invoke-BetaDownloadCustomViolationReport**](BetaSODPolicyApi.md#Invoke-BetaDownloadCustomViolationReport) | **GET** /sod-violation-report/{reportResultId}/download/{fileName} | Download custom violation report
[**Invoke-BetaDownloadDefaultViolationReport**](BetaSODPolicyApi.md#Invoke-BetaDownloadDefaultViolationReport) | **GET** /sod-violation-report/{reportResultId}/download | Download violation report
[**Get-BetaSodAllReportRunStatus**](BetaSODPolicyApi.md#Get-BetaSodAllReportRunStatus) | **GET** /sod-violation-report | Get multi-report run task status
[**Get-BetaSodPolicyById**](BetaSODPolicyApi.md#Get-BetaSodPolicyById) | **GET** /sod-policies/{id} | Get SOD Policy By ID
[**Get-BetaSodPolicyScheduleById**](BetaSODPolicyApi.md#Get-BetaSodPolicyScheduleById) | **GET** /sod-policies/{id}/schedule | Get SOD Policy Schedule
[**Get-BetaSodViolationReportRunStatus**](BetaSODPolicyApi.md#Get-BetaSodViolationReportRunStatus) | **GET** /sod-violation-report-status/{reportResultId} | Get violation report run status
[**Get-BetaSodViolationReportStatus**](BetaSODPolicyApi.md#Get-BetaSodViolationReportStatus) | **GET** /sod-policies/{id}/violation-report | Get SOD violation report status
[**Get-BetaSodPolicies**](BetaSODPolicyApi.md#Get-BetaSodPolicies) | **GET** /sod-policies | List SOD Policies
[**Update-BetaSodPolicy**](BetaSODPolicyApi.md#Update-BetaSodPolicy) | **PATCH** /sod-policies/{id} | Update a SOD Policy
[**Start-BetaAllPoliciesForOrg**](BetaSODPolicyApi.md#Start-BetaAllPoliciesForOrg) | **POST** /sod-violation-report/run | Runs all policies for Org.
[**Start-BetaSodPolicy**](BetaSODPolicyApi.md#Start-BetaSodPolicy) | **POST** /sod-policies/{id}/violation-report/run | Runs SOD Policy Violation Report
[**Update-BetaPolicyById**](BetaSODPolicyApi.md#Update-BetaPolicyById) | **PUT** /sod-policies/{id} | Update SOD Policy By ID
[**Update-BetaPolicyScheduleById**](BetaSODPolicyApi.md#Update-BetaPolicyScheduleById) | **PUT** /sod-policies/{id}/schedule | Update SOD Policy schedule


<a name="New-BetaSodPolicy"></a>
# **New-BetaSodPolicy**
> SodPolicy New-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Create SOD Policy

This creates both General and Conflicting Access Based policy, with a limit of 50 entitlements for each (left & right) criteria for Conflicting Access Based SOD policy Requires role of ORG_ADMIN

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

# Create SOD Policy
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

<a name="Remove-BetaSodPolicyById"></a>
# **Remove-BetaSodPolicyById**
> void Remove-BetaSodPolicyById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Logical] <System.Nullable[Boolean]><br>

Delete SOD Policy by ID

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
$Logical = $true # Boolean | whether this is soft delete i.e. logical true or hard delete (optional) (default to $true)

# Delete SOD Policy by ID
try {
    $Result = Remove-BetaSodPolicyById -Id $Id -Logical $Logical
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSodPolicyById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD Policy to delete. | 
 **Logical** | **Boolean**| whether this is soft delete i.e. logical true or hard delete | [optional] [default to $true]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaSodPolicyScheduleById"></a>
# **Remove-BetaSodPolicyScheduleById**
> void Remove-BetaSodPolicyScheduleById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete SOD Policy Schedule

This deletes schedule for a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD Policy for which the schedule needs to be deleted.

# Delete SOD Policy Schedule
try {
    $Result = Remove-BetaSodPolicyScheduleById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSodPolicyScheduleById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD Policy for which the schedule needs to be deleted. | 

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

This allows to download a specified named violation report  for given report reference. Requires role of ORG_ADMIN.

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

This allows to download a violation report for given report reference. Requires role of ORG_ADMIN.

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

This gets status for a violation report for all policy run. Requires role of ORG_ADMIN.

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

<a name="Get-BetaSodPolicyById"></a>
# **Get-BetaSodPolicyById**
> SodPolicy Get-BetaSodPolicyById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD Policy By ID

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

# Get SOD Policy By ID
try {
    $Result = Get-BetaSodPolicyById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodPolicyById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BetaSodPolicyScheduleById"></a>
# **Get-BetaSodPolicyScheduleById**
> SodPolicySchedule Get-BetaSodPolicyScheduleById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD Policy Schedule

This gets schedule for a specified SOD policy. Requires a role of ORG_ADMIN

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to retrieve.

# Get SOD Policy Schedule
try {
    $Result = Get-BetaSodPolicyScheduleById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSodPolicyScheduleById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

This gets status for a violation report run task invoked already. Requires role of ORG_ADMIN.

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

This gets status for a violation report run task invoked already. Requires role of ORG_ADMIN.

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

List SOD Policies

This gets list of all SOD Policies. Requires role of ORG_ADMIN

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

# List SOD Policies
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

Update a SOD Policy

Allows updating SOD Policy fields other than [""id"",""created"",""creatorId"",""policyQuery"",""type""] using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the SOD Policy being modified.
$RequestBody =  # SystemCollectionsHashtable[] | A list of SOD Policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * ownerRef * externalPolicyReference * compensatingControls * correctionAdvice * state * tags * violationOwnerAssignmentConfig * scheduled * conflictingAccessCriteria 

# Update a SOD Policy
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
 **Id** | **String**| The ID of the SOD Policy being modified. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of SOD Policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * ownerRef * externalPolicyReference * compensatingControls * correctionAdvice * state * tags * violationOwnerAssignmentConfig * scheduled * conflictingAccessCriteria  | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaAllPoliciesForOrg"></a>
# **Start-BetaAllPoliciesForOrg**
> ReportResultReference Start-BetaAllPoliciesForOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiPolicyRequest] <PSCustomObject><br>

Runs all policies for Org.

Runs multi policy report for the Org. If a policy reports more than 5000 violation, the report mentions Violation limit exceeded for that policy. If the request is empty, report will run for all policies. Otherwise, report will run only for the filtered policy list provided. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiPolicyRequest = Initialize-MultiPolicyRequest -FilteredPolicyList "MyFilteredPolicyList" # MultiPolicyRequest |  (optional)

# Runs all policies for Org.
try {
    $Result = Start-BetaAllPoliciesForOrg -MultiPolicyRequest $MultiPolicyRequest
} catch {
    Write-Host ("Exception occurred when calling Start-BetaAllPoliciesForOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

Runs SOD Policy Violation Report

This invokes processing of violation report for given SOD Policy. If policy reports more than 5000 violations, the report returns with violation limit exceeded message. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD Policy to run.

# Runs SOD Policy Violation Report
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
 **Id** | **String**| The ID of the SOD Policy to run. | 

### Return type

[**ReportResultReference**](ReportResultReference.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaPolicyById"></a>
# **Update-BetaPolicyById**
> SodPolicy Update-BetaPolicyById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Update SOD Policy By ID

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

# Update SOD Policy By ID
try {
    $Result = Update-BetaPolicyById -Id $Id -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling Update-BetaPolicyById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-BetaPolicyScheduleById"></a>
# **Update-BetaPolicyScheduleById**
> SodPolicySchedule Update-BetaPolicyScheduleById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicySchedule] <PSCustomObject><br>

Update SOD Policy schedule

This updates schedule for a specified SOD policy. Requires role of ORG_ADMIN

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
    $Result = Update-BetaPolicyScheduleById -Id $Id -SodPolicySchedule $SodPolicySchedule
} catch {
    Write-Host ("Exception occurred when calling Update-BetaPolicyScheduleById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

