# Tm.V2024.Tm.V2024\Api.V2024IAIRoleMiningApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024PotentialRoleProvisionRequest**](V2024IAIRoleMiningApi.md#New-V2024PotentialRoleProvisionRequest) | **POST** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/provision | Create request to provision a potential role into an actual role.
[**New-V2024RoleMiningSessions**](V2024IAIRoleMiningApi.md#New-V2024RoleMiningSessions) | **POST** /role-mining-sessions | Create a role mining session
[**Invoke-V2024DownloadRoleMiningPotentialRoleZip**](V2024IAIRoleMiningApi.md#Invoke-V2024DownloadRoleMiningPotentialRoleZip) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/export-async/{exportId}/download | Export (download) details for a potential role in a role mining session
[**Export-V2024RoleMiningPotentialRole**](V2024IAIRoleMiningApi.md#Export-V2024RoleMiningPotentialRole) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/export | Export (download) details for a potential role in a role mining session
[**Export-V2024RoleMiningPotentialRoleAsync**](V2024IAIRoleMiningApi.md#Export-V2024RoleMiningPotentialRoleAsync) | **POST** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/export-async | Asynchronously export details for a potential role in a role mining session and upload to S3
[**Export-V2024RoleMiningPotentialRoleStatus**](V2024IAIRoleMiningApi.md#Export-V2024RoleMiningPotentialRoleStatus) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/export-async/{exportId} | Retrieve status of a potential role export job
[**Get-V2024AllPotentialRoleSummaries**](V2024IAIRoleMiningApi.md#Get-V2024AllPotentialRoleSummaries) | **GET** /role-mining-potential-roles | Retrieves all potential role summaries
[**Get-V2024EntitlementDistributionPotentialRole**](V2024IAIRoleMiningApi.md#Get-V2024EntitlementDistributionPotentialRole) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/entitlement-popularity-distribution | Retrieves entitlement popularity distribution for a potential role in a role mining session
[**Get-V2024EntitlementsPotentialRole**](V2024IAIRoleMiningApi.md#Get-V2024EntitlementsPotentialRole) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/entitlement-popularities | Retrieves entitlements for a potential role in a role mining session
[**Get-V2024ExcludedEntitlementsPotentialRole**](V2024IAIRoleMiningApi.md#Get-V2024ExcludedEntitlementsPotentialRole) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/excluded-entitlements | Retrieves excluded entitlements for a potential role in a role mining session
[**Get-V2024IdentitiesPotentialRole**](V2024IAIRoleMiningApi.md#Get-V2024IdentitiesPotentialRole) | **GET** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/identities | Retrieves identities for a potential role in a role mining session
[**Get-V2024PotentialRole**](V2024IAIRoleMiningApi.md#Get-V2024PotentialRole) | **GET** /role-mining-sessions/{sessionId}/potential-role-summaries/{potentialRoleId} | Retrieves a specific potential role
[**Get-V2024PotentialRoleApplications**](V2024IAIRoleMiningApi.md#Get-V2024PotentialRoleApplications) | **GET** /role-mining-sessions/{sessionId}/potential-role-summaries/{potentialRoleId}/applications | Retrieves the applications of a potential role for a role mining session
[**Get-V2024PotentialRoleSourceIdentityUsage**](V2024IAIRoleMiningApi.md#Get-V2024PotentialRoleSourceIdentityUsage) | **GET** /role-mining-potential-roles/{potentialRoleId}/sources/{sourceId}/identityUsage | Retrieves potential role source usage
[**Get-V2024PotentialRoleSummaries**](V2024IAIRoleMiningApi.md#Get-V2024PotentialRoleSummaries) | **GET** /role-mining-sessions/{sessionId}/potential-role-summaries | Retrieves all potential role summaries
[**Get-V2024RoleMiningPotentialRole**](V2024IAIRoleMiningApi.md#Get-V2024RoleMiningPotentialRole) | **GET** /role-mining-potential-roles/{potentialRoleId} | Retrieves a specific potential role
[**Get-V2024RoleMiningSession**](V2024IAIRoleMiningApi.md#Get-V2024RoleMiningSession) | **GET** /role-mining-sessions/{sessionId} | Get a role mining session
[**Get-V2024RoleMiningSessionStatus**](V2024IAIRoleMiningApi.md#Get-V2024RoleMiningSessionStatus) | **GET** /role-mining-sessions/{sessionId}/status | Get role mining session status state
[**Get-V2024RoleMiningSessions**](V2024IAIRoleMiningApi.md#Get-V2024RoleMiningSessions) | **GET** /role-mining-sessions | Retrieves all role mining sessions
[**Get-V2024SavedPotentialRoles**](V2024IAIRoleMiningApi.md#Get-V2024SavedPotentialRoles) | **GET** /role-mining-potential-roles/saved | Retrieves all saved potential roles
[**Update-V2024PotentialRole**](V2024IAIRoleMiningApi.md#Update-V2024PotentialRole) | **PATCH** /role-mining-sessions/{sessionId}/potential-role-summaries/{potentialRoleId} | Update a potential role
[**Update-V2024PotentialRole0**](V2024IAIRoleMiningApi.md#Update-V2024PotentialRole0) | **PATCH** /role-mining-potential-roles/{potentialRoleId} | Update a potential role
[**Update-V2024RoleMiningSession**](V2024IAIRoleMiningApi.md#Update-V2024RoleMiningSession) | **PATCH** /role-mining-sessions/{sessionId} | Patch a role mining session
[**Update-V2024EntitlementsPotentialRole**](V2024IAIRoleMiningApi.md#Update-V2024EntitlementsPotentialRole) | **POST** /role-mining-sessions/{sessionId}/potential-roles/{potentialRoleId}/edit-entitlements | Edit entitlements for a potential role to exclude some entitlements


<a id="New-V2024PotentialRoleProvisionRequest"></a>
# **New-V2024PotentialRoleProvisionRequest**
> RoleMiningPotentialRoleSummary New-V2024PotentialRoleProvisionRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinEntitlementPopularity] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeCommonAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMiningPotentialRoleProvisionRequest] <PSCustomObject><br>

Create request to provision a potential role into an actual role.

This method starts a job to provision a potential role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$MinEntitlementPopularity = 56 # Int32 | Minimum popularity required for an entitlement to be included in the provisioned role. (optional) (default to 0)
$IncludeCommonAccess = $true # Boolean | Boolean determining whether common access entitlements will be included in the provisioned role. (optional) (default to $true)
$RoleMiningPotentialRoleProvisionRequest = Initialize-RoleMiningPotentialRoleProvisionRequest -RoleName "Finance - Accounting" -RoleDescription "General access for accounting department" -OwnerId "2b568c65bc3c4c57a43bd97e3a8e41" -IncludeIdentities $true -DirectlyAssignedEntitlements $false # RoleMiningPotentialRoleProvisionRequest | Required information to create a new role (optional)

# Create request to provision a potential role into an actual role.
try {
    $Result = New-V2024PotentialRoleProvisionRequest -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -MinEntitlementPopularity $MinEntitlementPopularity -IncludeCommonAccess $IncludeCommonAccess -RoleMiningPotentialRoleProvisionRequest $RoleMiningPotentialRoleProvisionRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024PotentialRoleProvisionRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **MinEntitlementPopularity** | **Int32**| Minimum popularity required for an entitlement to be included in the provisioned role. | [optional] [default to 0]
 **IncludeCommonAccess** | **Boolean**| Boolean determining whether common access entitlements will be included in the provisioned role. | [optional] [default to $true]
 **RoleMiningPotentialRoleProvisionRequest** | [**RoleMiningPotentialRoleProvisionRequest**](RoleMiningPotentialRoleProvisionRequest.md)| Required information to create a new role | [optional] 

### Return type

[**RoleMiningPotentialRoleSummary**](RoleMiningPotentialRoleSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024RoleMiningSessions"></a>
# **New-V2024RoleMiningSessions**
> RoleMiningSessionResponse New-V2024RoleMiningSessions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMiningSessionDto] <PSCustomObject><br>

Create a role mining session

This submits a create role mining session request to the role mining application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RoleMiningSessionScope = Initialize-RoleMiningSessionScope -IdentityIds "MyIdentityIds" -Criteria "source.name:DataScienceDataset" -AttributeFilterCriteria 
$RoleMiningSessionDto = Initialize-RoleMiningSessionDto -Scope $RoleMiningSessionScope -PruneThreshold 50 -PrescribedPruneThreshold 10 -MinNumIdentitiesInPotentialRole 20 -PotentialRoleCount 0 -PotentialRolesReadyCount 0 -Type "SPECIALIZED" -EmailRecipientId "2c918090761a5aac0176215c46a62d58" -IdentityCount 0 -Saved $true -Name "Saved RM Session - 07/10" # RoleMiningSessionDto | Role mining session parameters

# Create a role mining session
try {
    $Result = New-V2024RoleMiningSessions -XSailPointExperimental $XSailPointExperimental -RoleMiningSessionDto $RoleMiningSessionDto
} catch {
    Write-Host ("Exception occurred when calling New-V2024RoleMiningSessions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **RoleMiningSessionDto** | [**RoleMiningSessionDto**](RoleMiningSessionDto.md)| Role mining session parameters | 

### Return type

[**RoleMiningSessionResponse**](RoleMiningSessionResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2024DownloadRoleMiningPotentialRoleZip"></a>
# **Invoke-V2024DownloadRoleMiningPotentialRoleZip**
> System.IO.FileInfo Invoke-V2024DownloadRoleMiningPotentialRoleZip<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Export (download) details for a potential role in a role mining session

This endpoint downloads a completed export of information for a potential role in a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "278359a6-04b7-4669-9468-924cf580964a" # String | A potential role id in a role mining session
$ExportId = "4940ffd4-836f-48a3-b2b0-6d498c3fdf40" # String | The id of a previously run export job for this potential role
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Export (download) details for a potential role in a role mining session
try {
    $Result = Invoke-V2024DownloadRoleMiningPotentialRoleZip -SessionId $SessionId -PotentialRoleId $PotentialRoleId -ExportId $ExportId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2024DownloadRoleMiningPotentialRoleZip: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **ExportId** | **String**| The id of a previously run export job for this potential role | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-V2024RoleMiningPotentialRole"></a>
# **Export-V2024RoleMiningPotentialRole**
> System.IO.FileInfo Export-V2024RoleMiningPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Export (download) details for a potential role in a role mining session

This endpoint downloads all the information for a potential role in a role mining session. Includes identities and entitlements in the potential role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Export (download) details for a potential role in a role mining session
try {
    $Result = Export-V2024RoleMiningPotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Export-V2024RoleMiningPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-V2024RoleMiningPotentialRoleAsync"></a>
# **Export-V2024RoleMiningPotentialRoleAsync**
> RoleMiningPotentialRoleExportResponse Export-V2024RoleMiningPotentialRoleAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMiningPotentialRoleExportRequest] <PSCustomObject><br>

Asynchronously export details for a potential role in a role mining session and upload to S3

This endpoint uploads all the information for a potential role in a role mining session to S3 as a downloadable zip archive.  Includes identities and entitlements in the potential role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "278359a6-04b7-4669-9468-924cf580964a" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RoleMiningPotentialRoleExportRequest = Initialize-RoleMiningPotentialRoleExportRequest -MinEntitlementPopularity 0 -IncludeCommonAccess $true # RoleMiningPotentialRoleExportRequest |  (optional)

# Asynchronously export details for a potential role in a role mining session and upload to S3
try {
    $Result = Export-V2024RoleMiningPotentialRoleAsync -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -RoleMiningPotentialRoleExportRequest $RoleMiningPotentialRoleExportRequest
} catch {
    Write-Host ("Exception occurred when calling Export-V2024RoleMiningPotentialRoleAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **RoleMiningPotentialRoleExportRequest** | [**RoleMiningPotentialRoleExportRequest**](RoleMiningPotentialRoleExportRequest.md)|  | [optional] 

### Return type

[**RoleMiningPotentialRoleExportResponse**](RoleMiningPotentialRoleExportResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-V2024RoleMiningPotentialRoleStatus"></a>
# **Export-V2024RoleMiningPotentialRoleStatus**
> RoleMiningPotentialRoleExportResponse Export-V2024RoleMiningPotentialRoleStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Retrieve status of a potential role export job

This endpoint retrieves information about the current status of a potential role export.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "278359a6-04b7-4669-9468-924cf580964a" # String | A potential role id in a role mining session
$ExportId = "4940ffd4-836f-48a3-b2b0-6d498c3fdf40" # String | The id of a previously run export job for this potential role
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Retrieve status of a potential role export job
try {
    $Result = Export-V2024RoleMiningPotentialRoleStatus -SessionId $SessionId -PotentialRoleId $PotentialRoleId -ExportId $ExportId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Export-V2024RoleMiningPotentialRoleStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **ExportId** | **String**| The id of a previously run export job for this potential role | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleMiningPotentialRoleExportResponse**](RoleMiningPotentialRoleExportResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024AllPotentialRoleSummaries"></a>
# **Get-V2024AllPotentialRoleSummaries**
> RoleMiningPotentialRoleSummary[] Get-V2024AllPotentialRoleSummaries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves all potential role summaries

Returns all potential role summaries that match the query parameters

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "createdDate" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **createdDate, identityCount, entitlementCount, freshness, quality** (optional)
$Filters = "(createdByName co "int") and (createdById sw "2c9180907") and (type eq "COMMON") and ((name co "entt") or (saved eq true))" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **createdById**: *eq, sw, co*  **createdByName**: *eq, sw, co*  **description**: *sw, co*  **endDate**: *le, lt*  **freshness**: *eq, ge, gt, le, lt*  **name**: *eq, sw, co, ge, gt, le, lt*  **quality**: *eq, ge, gt, le, lt*  **startDate**: *ge, gt*  **saved**: *eq*  **type**: *eq, ge, gt, le, lt*  **scopingMethod**: *eq*  **sessionState**: *eq*  **identityAttribute**: *co* (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves all potential role summaries
try {
    $Result = Get-V2024AllPotentialRoleSummaries -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Filters $Filters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AllPotentialRoleSummaries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **createdDate, identityCount, entitlementCount, freshness, quality** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **createdById**: *eq, sw, co*  **createdByName**: *eq, sw, co*  **description**: *sw, co*  **endDate**: *le, lt*  **freshness**: *eq, ge, gt, le, lt*  **name**: *eq, sw, co, ge, gt, le, lt*  **quality**: *eq, ge, gt, le, lt*  **startDate**: *ge, gt*  **saved**: *eq*  **type**: *eq, ge, gt, le, lt*  **scopingMethod**: *eq*  **sessionState**: *eq*  **identityAttribute**: *co* | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningPotentialRoleSummary[]**](RoleMiningPotentialRoleSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024EntitlementDistributionPotentialRole"></a>
# **Get-V2024EntitlementDistributionPotentialRole**
> System.Collections.Hashtable Get-V2024EntitlementDistributionPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeCommonAccess] <System.Nullable[Boolean]><br>

Retrieves entitlement popularity distribution for a potential role in a role mining session

This method returns entitlement popularity distribution for a potential role in a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$IncludeCommonAccess = $true # Boolean | Boolean determining whether common access entitlements will be included or not (optional)

# Retrieves entitlement popularity distribution for a potential role in a role mining session
try {
    $Result = Get-V2024EntitlementDistributionPotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -IncludeCommonAccess $IncludeCommonAccess
} catch {
    Write-Host ("Exception occurred when calling Get-V2024EntitlementDistributionPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **IncludeCommonAccess** | **Boolean**| Boolean determining whether common access entitlements will be included or not | [optional] 

### Return type

**System.Collections.Hashtable**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024EntitlementsPotentialRole"></a>
# **Get-V2024EntitlementsPotentialRole**
> RoleMiningEntitlement[] Get-V2024EntitlementsPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeCommonAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves entitlements for a potential role in a role mining session

This method returns entitlements for a potential role in a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$IncludeCommonAccess = $true # Boolean | Boolean determining whether common access entitlements will be included or not (optional) (default to $true)
$Sorters = "popularity" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **popularity, entitlementName, applicationName**  The default sort is **popularity** in descending order.  (optional)
$Filters = "applicationName sw "AD"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **applicationName**: *sw*  **entitlementRef.name**: *sw* (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves entitlements for a potential role in a role mining session
try {
    $Result = Get-V2024EntitlementsPotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -IncludeCommonAccess $IncludeCommonAccess -Sorters $Sorters -Filters $Filters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024EntitlementsPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **IncludeCommonAccess** | **Boolean**| Boolean determining whether common access entitlements will be included or not | [optional] [default to $true]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **popularity, entitlementName, applicationName**  The default sort is **popularity** in descending order.  | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **applicationName**: *sw*  **entitlementRef.name**: *sw* | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningEntitlement[]**](RoleMiningEntitlement.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ExcludedEntitlementsPotentialRole"></a>
# **Get-V2024ExcludedEntitlementsPotentialRole**
> RoleMiningEntitlement[] Get-V2024ExcludedEntitlementsPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves excluded entitlements for a potential role in a role mining session

This method returns excluded entitlements for a potential role in a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "populariity" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **popularity** (optional)
$Filters = "applicationName sw "AD"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **applicationName**: *sw*  **entitlementRef.name**: *sw* (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves excluded entitlements for a potential role in a role mining session
try {
    $Result = Get-V2024ExcludedEntitlementsPotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Filters $Filters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ExcludedEntitlementsPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **popularity** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **applicationName**: *sw*  **entitlementRef.name**: *sw* | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningEntitlement[]**](RoleMiningEntitlement.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentitiesPotentialRole"></a>
# **Get-V2024IdentitiesPotentialRole**
> RoleMiningIdentity[] Get-V2024IdentitiesPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves identities for a potential role in a role mining session

This method returns identities for a potential role in a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** (optional)
$Filters = "MyFilters" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw* (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves identities for a potential role in a role mining session
try {
    $Result = Get-V2024IdentitiesPotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Filters $Filters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentitiesPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw* | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningIdentity[]**](RoleMiningIdentity.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PotentialRole"></a>
# **Get-V2024PotentialRole**
> RoleMiningPotentialRole Get-V2024PotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Retrieves a specific potential role

This method returns a specific potential role for a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Retrieves a specific potential role
try {
    $Result = Get-V2024PotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleMiningPotentialRole**](RoleMiningPotentialRole.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PotentialRoleApplications"></a>
# **Get-V2024PotentialRoleApplications**
> RoleMiningPotentialRoleApplication[] Get-V2024PotentialRoleApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves the applications of a potential role for a role mining session

This method returns the applications of a potential role for a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves the applications of a potential role for a role mining session
try {
    $Result = Get-V2024PotentialRoleApplications -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PotentialRoleApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningPotentialRoleApplication[]**](RoleMiningPotentialRoleApplication.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PotentialRoleSourceIdentityUsage"></a>
# **Get-V2024PotentialRoleSourceIdentityUsage**
> RoleMiningPotentialRoleSourceUsage[] Get-V2024PotentialRoleSourceIdentityUsage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves potential role source usage

This method returns source usageCount (as number of days in the last 90 days) for each identity in a potential role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PotentialRoleId = "e0cc5d7d-bf7f-4f81-b2af-8885b09d9923" # String | A potential role id
$SourceId = "2c9180877620c1460176267f336a106f" # String | A source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "-usageCount" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/) Sorting is supported for the following fields: **displayName, email, usageCount** (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves potential role source usage
try {
    $Result = Get-V2024PotentialRoleSourceIdentityUsage -PotentialRoleId $PotentialRoleId -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PotentialRoleSourceIdentityUsage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PotentialRoleId** | **String**| A potential role id | 
 **SourceId** | **String**| A source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/) Sorting is supported for the following fields: **displayName, email, usageCount** | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningPotentialRoleSourceUsage[]**](RoleMiningPotentialRoleSourceUsage.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PotentialRoleSummaries"></a>
# **Get-V2024PotentialRoleSummaries**
> RoleMiningPotentialRoleSummary[] Get-V2024PotentialRoleSummaries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves all potential role summaries

This method returns the potential role summaries for a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "createdDate" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **createdDate** (optional)
$Filters = "(createdByName co "int")and (createdById sw "2c9180907")and (type eq "COMMON")and ((name co "entt")or (saved eq true))" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **createdById**: *eq, sw, co*  **createdByName**: *eq, sw, co*  **description**: *sw, co*  **endDate**: *le, lt*  **freshness**: *eq, ge, gt, le, lt*  **name**: *eq, sw, co*  **quality**: *eq, ge, gt, le, lt*  **startDate**: *ge, gt*  **saved**: *eq*  **type**: *eq* (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves all potential role summaries
try {
    $Result = Get-V2024PotentialRoleSummaries -SessionId $SessionId -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Filters $Filters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PotentialRoleSummaries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **createdDate** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **createdById**: *eq, sw, co*  **createdByName**: *eq, sw, co*  **description**: *sw, co*  **endDate**: *le, lt*  **freshness**: *eq, ge, gt, le, lt*  **name**: *eq, sw, co*  **quality**: *eq, ge, gt, le, lt*  **startDate**: *ge, gt*  **saved**: *eq*  **type**: *eq* | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningPotentialRoleSummary[]**](RoleMiningPotentialRoleSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleMiningPotentialRole"></a>
# **Get-V2024RoleMiningPotentialRole**
> RoleMiningPotentialRole Get-V2024RoleMiningPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Retrieves a specific potential role

This method returns a specific potential role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Retrieves a specific potential role
try {
    $Result = Get-V2024RoleMiningPotentialRole -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleMiningPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PotentialRoleId** | **String**| A potential role id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleMiningPotentialRole**](RoleMiningPotentialRole.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleMiningSession"></a>
# **Get-V2024RoleMiningSession**
> RoleMiningSessionResponse Get-V2024RoleMiningSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get a role mining session

The method retrieves a role mining session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id to be retrieved.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get a role mining session
try {
    $Result = Get-V2024RoleMiningSession -SessionId $SessionId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleMiningSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id to be retrieved. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleMiningSessionResponse**](RoleMiningSessionResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleMiningSessionStatus"></a>
# **Get-V2024RoleMiningSessionStatus**
> RoleMiningSessionStatus Get-V2024RoleMiningSessionStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get role mining session status state

This method returns a role mining session status for a customer.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get role mining session status state
try {
    $Result = Get-V2024RoleMiningSessionStatus -SessionId $SessionId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleMiningSessionStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleMiningSessionStatus**](RoleMiningSessionStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleMiningSessions"></a>
# **Get-V2024RoleMiningSessions**
> RoleMiningSessionDto[] Get-V2024RoleMiningSessions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves all role mining sessions

Returns all role mining sessions that match the query parameters

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Filters = "saved eq "true" and name sw "RM Session"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **saved**: *eq*  **name**: *eq, sw* (optional)
$Sorters = "createdBy,createdDate" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **createdBy, createdDate** (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves all role mining sessions
try {
    $Result = Get-V2024RoleMiningSessions -XSailPointExperimental $XSailPointExperimental -Filters $Filters -Sorters $Sorters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleMiningSessions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **saved**: *eq*  **name**: *eq, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **createdBy, createdDate** | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningSessionDto[]**](RoleMiningSessionDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SavedPotentialRoles"></a>
# **Get-V2024SavedPotentialRoles**
> RoleMiningSessionDraftRoleDto[] Get-V2024SavedPotentialRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Retrieves all saved potential roles

This method returns all saved potential roles (draft roles).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/) Sorting is supported for the following fields: **modified** (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Retrieves all saved potential roles
try {
    $Result = Get-V2024SavedPotentialRoles -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SavedPotentialRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/) Sorting is supported for the following fields: **modified** | [optional] 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**RoleMiningSessionDraftRoleDto[]**](RoleMiningSessionDraftRoleDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024PotentialRole"></a>
# **Update-V2024PotentialRole**
> SystemCollectionsHashtable Update-V2024PotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchPotentialRoleRequestInner] <PSCustomObject[]><br>

Update a potential role

The method updates an existing potential role using.  The following fields can be modified:  * `description`  * `name`  * `saved`   >**NOTE: All other fields cannot be modified.** 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The potential role summary id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$PatchPotentialRoleRequestInner = Initialize-PatchPotentialRoleRequestInner -Op "remove" -Path "/description" -Value $JsonPatchOperationValue # PatchPotentialRoleRequestInner[] | 

# Update a potential role
try {
    $Result = Update-V2024PotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -PatchPotentialRoleRequestInner $PatchPotentialRoleRequestInner
} catch {
    Write-Host ("Exception occurred when calling Update-V2024PotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| The potential role summary id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **PatchPotentialRoleRequestInner** | [**PatchPotentialRoleRequestInner[]**](PatchPotentialRoleRequestInner.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024PotentialRole0"></a>
# **Update-V2024PotentialRole0**
> SystemCollectionsHashtable Update-V2024PotentialRole0<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchPotentialRoleRequestInner] <PSCustomObject[]><br>

Update a potential role

The method updates an existing potential role using.  The following fields can be modified:  * `description`  * `name`  * `saved`   >**NOTE: All other fields cannot be modified.** 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The potential role summary id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$PatchPotentialRoleRequestInner = Initialize-PatchPotentialRoleRequestInner -Op "remove" -Path "/description" -Value $JsonPatchOperationValue # PatchPotentialRoleRequestInner[] | 

# Update a potential role
try {
    $Result = Update-V2024PotentialRole0 -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -PatchPotentialRoleRequestInner $PatchPotentialRoleRequestInner
} catch {
    Write-Host ("Exception occurred when calling Update-V2024PotentialRole0: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| The potential role summary id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **PatchPotentialRoleRequestInner** | [**PatchPotentialRoleRequestInner[]**](PatchPotentialRoleRequestInner.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024RoleMiningSession"></a>
# **Update-V2024RoleMiningSession**
> SystemCollectionsHashtable Update-V2024RoleMiningSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a role mining session

The  method updates an existing role mining session using PATCH. Supports op in {""replace""} and changes to pruneThreshold and/or minNumIdentitiesInPotentialRole. The potential roles in this role mining session is then re-calculated.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id to be patched
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | Replace pruneThreshold and/or minNumIdentitiesInPotentialRole in role mining session. Update saved status or saved name for a role mining session.

# Patch a role mining session
try {
    $Result = Update-V2024RoleMiningSession -SessionId $SessionId -XSailPointExperimental $XSailPointExperimental -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024RoleMiningSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id to be patched | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| Replace pruneThreshold and/or minNumIdentitiesInPotentialRole in role mining session. Update saved status or saved name for a role mining session. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024EntitlementsPotentialRole"></a>
# **Update-V2024EntitlementsPotentialRole**
> RoleMiningPotentialRole Update-V2024EntitlementsPotentialRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PotentialRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMiningPotentialRoleEditEntitlements] <PSCustomObject><br>

Edit entitlements for a potential role to exclude some entitlements

This endpoint adds or removes entitlements from an exclusion list for a potential role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SessionId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role mining session id
$PotentialRoleId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | A potential role id in a role mining session
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RoleMiningPotentialRoleEditEntitlements = Initialize-RoleMiningPotentialRoleEditEntitlements -Ids "MyIds" -Exclude $false # RoleMiningPotentialRoleEditEntitlements | Role mining session parameters

# Edit entitlements for a potential role to exclude some entitlements
try {
    $Result = Update-V2024EntitlementsPotentialRole -SessionId $SessionId -PotentialRoleId $PotentialRoleId -XSailPointExperimental $XSailPointExperimental -RoleMiningPotentialRoleEditEntitlements $RoleMiningPotentialRoleEditEntitlements
} catch {
    Write-Host ("Exception occurred when calling Update-V2024EntitlementsPotentialRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**| The role mining session id | 
 **PotentialRoleId** | **String**| A potential role id in a role mining session | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **RoleMiningPotentialRoleEditEntitlements** | [**RoleMiningPotentialRoleEditEntitlements**](RoleMiningPotentialRoleEditEntitlements.md)| Role mining session parameters | 

### Return type

[**RoleMiningPotentialRole**](RoleMiningPotentialRole.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

