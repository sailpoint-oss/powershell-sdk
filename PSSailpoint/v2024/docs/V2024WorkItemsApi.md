# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024WorkItemsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Approve-V2024ApprovalItem**](V2024WorkItemsApi.md#Approve-V2024ApprovalItem) | **POST** /work-items/{id}/approve/{approvalItemId} | Approve an Approval Item
[**Approve-V2024ApprovalItemsInBulk**](V2024WorkItemsApi.md#Approve-V2024ApprovalItemsInBulk) | **POST** /work-items/bulk-approve/{id} | Bulk approve Approval Items
[**Complete-V2024WorkItem**](V2024WorkItemsApi.md#Complete-V2024WorkItem) | **POST** /work-items/{id} | Complete a Work Item
[**Get-V2024CompletedWorkItems**](V2024WorkItemsApi.md#Get-V2024CompletedWorkItems) | **GET** /work-items/completed | Completed Work Items
[**Get-V2024CountCompletedWorkItems**](V2024WorkItemsApi.md#Get-V2024CountCompletedWorkItems) | **GET** /work-items/completed/count | Count Completed Work Items
[**Get-V2024CountWorkItems**](V2024WorkItemsApi.md#Get-V2024CountWorkItems) | **GET** /work-items/count | Count Work Items
[**Get-V2024WorkItem**](V2024WorkItemsApi.md#Get-V2024WorkItem) | **GET** /work-items/{id} | Get a Work Item
[**Get-V2024WorkItemsSummary**](V2024WorkItemsApi.md#Get-V2024WorkItemsSummary) | **GET** /work-items/summary | Work Items Summary
[**Get-V2024WorkItems**](V2024WorkItemsApi.md#Get-V2024WorkItems) | **GET** /work-items | List Work Items
[**Deny-V2024ApprovalItem**](V2024WorkItemsApi.md#Deny-V2024ApprovalItem) | **POST** /work-items/{id}/reject/{approvalItemId} | Reject an Approval Item
[**Deny-V2024ApprovalItemsInBulk**](V2024WorkItemsApi.md#Deny-V2024ApprovalItemsInBulk) | **POST** /work-items/bulk-reject/{id} | Bulk reject Approval Items
[**Send-V2024WorkItemForward**](V2024WorkItemsApi.md#Send-V2024WorkItemForward) | **POST** /work-items/{id}/forward | Forward a Work Item
[**Submit-V2024AccountSelection**](V2024WorkItemsApi.md#Submit-V2024AccountSelection) | **POST** /work-items/{id}/submit-account-selection | Submit Account Selections


<a id="Approve-V2024ApprovalItem"></a>
# **Approve-V2024ApprovalItem**
> WorkItems Approve-V2024ApprovalItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApprovalItemId] <String><br>

Approve an Approval Item

This API approves an Approval Item. Either an admin, or the owning/current user must make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$ApprovalItemId = "1211bcaa32112bcef6122adb21cef1ac" # String | The ID of the approval item.

# Approve an Approval Item
try {
    $Result = Approve-V2024ApprovalItem -Id $Id -ApprovalItemId $ApprovalItemId
} catch {
    Write-Host ("Exception occurred when calling Approve-V2024ApprovalItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 
 **ApprovalItemId** | **String**| The ID of the approval item. | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Approve-V2024ApprovalItemsInBulk"></a>
# **Approve-V2024ApprovalItemsInBulk**
> WorkItems Approve-V2024ApprovalItemsInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Bulk approve Approval Items

This API bulk approves Approval Items. Either an admin, or the owning/current user must make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item

# Bulk approve Approval Items
try {
    $Result = Approve-V2024ApprovalItemsInBulk -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Approve-V2024ApprovalItemsInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Complete-V2024WorkItem"></a>
# **Complete-V2024WorkItem**
> WorkItems Complete-V2024WorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Complete a Work Item

This API completes a work item. Either an admin, or the owning/current user must make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item

# Complete a Work Item
try {
    $Result = Complete-V2024WorkItem -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Complete-V2024WorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CompletedWorkItems"></a>
# **Get-V2024CompletedWorkItems**
> WorkItems[] Get-V2024CompletedWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Completed Work Items

This gets a collection of completed work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerId = "1211bcaa32112bcef6122adb21cef1ac" # String | The id of the owner of the work item list being requested.  Either an admin, or the owning/current user must make this request. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Completed Work Items
try {
    $Result = Get-V2024CompletedWorkItems -OwnerId $OwnerId -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CompletedWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| The id of the owner of the work item list being requested.  Either an admin, or the owning/current user must make this request. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**WorkItems[]**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CountCompletedWorkItems"></a>
# **Get-V2024CountCompletedWorkItems**
> WorkItemsCount Get-V2024CountCompletedWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Count Completed Work Items

This gets a count of completed work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerId = "1211bcaa32112bcef6122adb21cef1ac" # String | ID of the work item owner. (optional)

# Count Completed Work Items
try {
    $Result = Get-V2024CountCompletedWorkItems -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CountCompletedWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItemsCount**](WorkItemsCount.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CountWorkItems"></a>
# **Get-V2024CountWorkItems**
> WorkItemsCount Get-V2024CountWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Count Work Items

This gets a count of work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerId = "ef38f94347e94562b5bb8424a56397d8" # String | ID of the work item owner. (optional)

# Count Work Items
try {
    $Result = Get-V2024CountWorkItems -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CountWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItemsCount**](WorkItemsCount.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024WorkItem"></a>
# **Get-V2024WorkItem**
> WorkItems Get-V2024WorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Work Item

This gets the details of a Work Item belonging to either the specified user(admin required), or the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | ID of the work item.

# Get a Work Item
try {
    $Result = Get-V2024WorkItem -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024WorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the work item. | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024WorkItemsSummary"></a>
# **Get-V2024WorkItemsSummary**
> WorkItemsSummary Get-V2024WorkItemsSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Work Items Summary

This gets a summary of work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerId = "1211bcaa32112bcef6122adb21cef1ac" # String | ID of the work item owner. (optional)

# Work Items Summary
try {
    $Result = Get-V2024WorkItemsSummary -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024WorkItemsSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItemsSummary**](WorkItemsSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024WorkItems"></a>
# **Get-V2024WorkItems**
> WorkItems[] Get-V2024WorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

List Work Items

This gets a collection of work items belonging to either the specified user(admin required), or the current user.

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
$OwnerId = "1211bcaa32112bcef6122adb21cef1ac" # String | ID of the work item owner. (optional)

# List Work Items
try {
    $Result = Get-V2024WorkItems -Limit $Limit -Offset $Offset -Count $Count -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024WorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItems[]**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Deny-V2024ApprovalItem"></a>
# **Deny-V2024ApprovalItem**
> WorkItems Deny-V2024ApprovalItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApprovalItemId] <String><br>

Reject an Approval Item

This API rejects an Approval Item. Either an admin, or the owning/current user must make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$ApprovalItemId = "1211bcaa32112bcef6122adb21cef1ac" # String | The ID of the approval item.

# Reject an Approval Item
try {
    $Result = Deny-V2024ApprovalItem -Id $Id -ApprovalItemId $ApprovalItemId
} catch {
    Write-Host ("Exception occurred when calling Deny-V2024ApprovalItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 
 **ApprovalItemId** | **String**| The ID of the approval item. | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Deny-V2024ApprovalItemsInBulk"></a>
# **Deny-V2024ApprovalItemsInBulk**
> WorkItems Deny-V2024ApprovalItemsInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Bulk reject Approval Items

This API bulk rejects Approval Items. Either an admin, or the owning/current user must make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item

# Bulk reject Approval Items
try {
    $Result = Deny-V2024ApprovalItemsInBulk -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Deny-V2024ApprovalItemsInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024WorkItemForward"></a>
# **Send-V2024WorkItemForward**
> void Send-V2024WorkItemForward<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkItemForward] <PSCustomObject><br>

Forward a Work Item

This API forwards a work item to a new owner. Either an admin, or the owning/current user must make this request. Accessible to work-item Owner, ORG_ADMIN, REPORT_ADMIN, ROLE_ADMIN, ROLE_SUBADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$WorkItemForward = Initialize-WorkItemForward -TargetOwnerId "2c9180835d2e5168015d32f890ca1581" -Comment "I'm going on vacation." -SendNotifications $true # WorkItemForward | 

# Forward a Work Item
try {
    $Result = Send-V2024WorkItemForward -Id $Id -WorkItemForward $WorkItemForward
} catch {
    Write-Host ("Exception occurred when calling Send-V2024WorkItemForward: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 
 **WorkItemForward** | [**WorkItemForward**](WorkItemForward.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-V2024AccountSelection"></a>
# **Submit-V2024AccountSelection**
> WorkItems Submit-V2024AccountSelection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Submit Account Selections

This API submits account selections. Either an admin, or the owning/current user must make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$RequestBody = @{ key_example =  } # System.Collections.Hashtable | Account Selection Data map, keyed on fieldName

# Submit Account Selections
try {
    $Result = Submit-V2024AccountSelection -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Submit-V2024AccountSelection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the work item | 
 **RequestBody** | [**System.Collections.Hashtable**](AnyType.md)| Account Selection Data map, keyed on fieldName | 

### Return type

[**WorkItems**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

