# PSSailpointBeta.PSSailpointBeta\Api.BetaSODPoliciesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSodPolicy**](BetaSODPoliciesApi.md#New-BetaSodPolicy) | **POST** /sod-policies | Create SOD policy
[**Remove-BetaSodPolicy**](BetaSODPoliciesApi.md#Remove-BetaSodPolicy) | **DELETE** /sod-policies/{id} | Delete SOD policy by ID
[**Remove-BetaSodPolicySchedule**](BetaSODPoliciesApi.md#Remove-BetaSodPolicySchedule) | **DELETE** /sod-policies/{id}/schedule | Delete SOD policy schedule
[**Get-BetaSodPolicy**](BetaSODPoliciesApi.md#Get-BetaSodPolicy) | **GET** /sod-policies/{id} | Get SOD policy by ID
[**Get-BetaSodPolicySchedule**](BetaSODPoliciesApi.md#Get-BetaSodPolicySchedule) | **GET** /sod-policies/{id}/schedule | Get SOD policy schedule
[**Get-BetaSodViolationReportStatus**](BetaSODPoliciesApi.md#Get-BetaSodViolationReportStatus) | **GET** /sod-policies/{id}/violation-report | Get SOD violation report status
[**Get-BetaSodPolicies**](BetaSODPoliciesApi.md#Get-BetaSodPolicies) | **GET** /sod-policies | List SOD policies
[**Update-BetaSodPolicy**](BetaSODPoliciesApi.md#Update-BetaSodPolicy) | **PATCH** /sod-policies/{id} | Patch a SOD policy
[**Send-BetaPolicySchedule**](BetaSODPoliciesApi.md#Send-BetaPolicySchedule) | **PUT** /sod-policies/{id}/schedule | Update SOD Policy schedule
[**Send-BetaSodPolicy**](BetaSODPoliciesApi.md#Send-BetaSodPolicy) | **PUT** /sod-policies/{id} | Update SOD policy by ID
[**Start-BetaSodPolicy**](BetaSODPoliciesApi.md#Start-BetaSodPolicy) | **POST** /sod-policies/{id}/violation-report/run | Runs SOD policy violation report


<a id="New-BetaSodPolicy"></a>
# **New-BetaSodPolicy**
> SodPolicy New-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Create SOD policy

This creates both General and Conflicting Access Based policy, with a limit of 50 entitlements for each (left & right) criteria for Conflicting Access Based SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerDto = Initialize-OwnerDto -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"

$ViolationOwnerAssignmentConfigOwnerRef = Initialize-ViolationOwnerAssignmentConfigOwnerRef -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"
$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $ViolationOwnerAssignmentConfigOwnerRef

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$SodPolicyConflictingAccessCriteria = Initialize-SodPolicyConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $OwnerDto -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $SodPolicyConflictingAccessCriteria # SodPolicy | 

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaSodPolicy"></a>
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
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaSodPolicySchedule"></a>
# **Remove-BetaSodPolicySchedule**
> void Remove-BetaSodPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete SOD policy schedule

This deletes schedule for a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSodPolicy"></a>
# **Get-BetaSodPolicy**
> SodPolicy Get-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD policy by ID

This gets specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSodPolicySchedule"></a>
# **Get-BetaSodPolicySchedule**
> SodPolicySchedule Get-BetaSodPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD policy schedule

This endpoint gets a specified SOD policy's schedule. Requires the role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSodViolationReportStatus"></a>
# **Get-BetaSodViolationReportStatus**
> ReportResultReference Get-BetaSodViolationReportStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD violation report status

This gets the status for a violation report run task that has already been invoked. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSodPolicies"></a>
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
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaSodPolicy"></a>
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
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaPolicySchedule"></a>
# **Send-BetaPolicySchedule**
> SodPolicySchedule Send-BetaPolicySchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicySchedule] <PSCustomObject><br>

Update SOD Policy schedule

This updates schedule for a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD policy to update its schedule.
$Schedule1Months = Initialize-Schedule1Months -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1Days = Initialize-Schedule1Days -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1Hours = Initialize-Schedule1Hours -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1 = Initialize-Schedule1 -Type "DAILY" -Months $Schedule1Months -Days $Schedule1Days -Hours $Schedule1Hours -Expiration (Get-Date) -TimeZoneId "America/Chicago"

$SodRecipient = Initialize-SodRecipient -Type "IDENTITY" -Id "2c7180a46faadee4016fb4e018c20642" -Name "Michael Michaels"
$SodPolicySchedule = Initialize-SodPolicySchedule -Name "SCH-1584312283015" -Created (Get-Date) -Modified (Get-Date) -Description "Schedule for policy xyz" -Schedule $Schedule1 -Recipients $SodRecipient -EmailEmptyResults $false -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" # SodPolicySchedule | 

# Update SOD Policy schedule
try {
    $Result = Send-BetaPolicySchedule -Id $Id -SodPolicySchedule $SodPolicySchedule
} catch {
    Write-Host ("Exception occurred when calling Send-BetaPolicySchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaSodPolicy"></a>
# **Send-BetaSodPolicy**
> SodPolicy Send-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Update SOD policy by ID

This updates a specified SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD policy to update.
$OwnerDto = Initialize-OwnerDto -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"

$ViolationOwnerAssignmentConfigOwnerRef = Initialize-ViolationOwnerAssignmentConfigOwnerRef -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"
$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $ViolationOwnerAssignmentConfigOwnerRef

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$SodPolicyConflictingAccessCriteria = Initialize-SodPolicyConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $OwnerDto -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ModifierId "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $SodPolicyConflictingAccessCriteria # SodPolicy | 

# Update SOD policy by ID
try {
    $Result = Send-BetaSodPolicy -Id $Id -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling Send-BetaSodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-BetaSodPolicy"></a>
# **Start-BetaSodPolicy**
> ReportResultReference Start-BetaSodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Runs SOD policy violation report

This invokes processing of violation report for given SOD policy. If the policy reports more than 5000 violations, the report returns with violation limit exceeded message. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

