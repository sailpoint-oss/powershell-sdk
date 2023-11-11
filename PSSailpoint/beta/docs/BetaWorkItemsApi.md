# PSSailpointBeta.PSSailpointBeta/Api.BetaWorkItemsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Approve-BetaApprovalItem**](BetaWorkItemsApi.md#Approve-BetaApprovalItem) | **POST** /work-items/{id}/approve/{approvalItemId} | Approve an Approval Item
[**Approve-BetaApprovalItemsInBulk**](BetaWorkItemsApi.md#Approve-BetaApprovalItemsInBulk) | **POST** /work-items/bulk-approve/{id} | Bulk approve Approval Items
[**Complete-BetaWorkItem**](BetaWorkItemsApi.md#Complete-BetaWorkItem) | **POST** /work-items/{id} | Complete a Work Item
[**Invoke-BetaForwardWorkItem**](BetaWorkItemsApi.md#Invoke-BetaForwardWorkItem) | **POST** /work-items/{id}/forward | Forward a Work Item
[**Get-BetaCompletedWorkItems**](BetaWorkItemsApi.md#Get-BetaCompletedWorkItems) | **GET** /work-items/completed | Completed Work Items
[**Get-BetaCountCompletedWorkItems**](BetaWorkItemsApi.md#Get-BetaCountCompletedWorkItems) | **GET** /work-items/count/completed | Count Completed Work Items
[**Get-BetaCountWorkItems**](BetaWorkItemsApi.md#Get-BetaCountWorkItems) | **GET** /work-items/count | Count Work Items
[**Get-BetaWorkItem**](BetaWorkItemsApi.md#Get-BetaWorkItem) | **GET** /work-items/{id} | Get a Work Item
[**Get-BetaWorkItemsSummary**](BetaWorkItemsApi.md#Get-BetaWorkItemsSummary) | **GET** /work-items/summary | Work Items Summary
[**Get-BetaWorkItems**](BetaWorkItemsApi.md#Get-BetaWorkItems) | **GET** /work-items | List Work Items
[**Deny-BetaApprovalItem**](BetaWorkItemsApi.md#Deny-BetaApprovalItem) | **POST** /work-items/{id}/reject/{approvalItemId} | Reject an Approval Item
[**Deny-BetaApprovalItemsInBulk**](BetaWorkItemsApi.md#Deny-BetaApprovalItemsInBulk) | **POST** /work-items/bulk-reject/{id} | Bulk reject Approval Items
[**Submit-BetaAccountSelection**](BetaWorkItemsApi.md#Submit-BetaAccountSelection) | **POST** /work-items/{id}/submit-account-selection | Submit Account Selections


<a name="Approve-BetaApprovalItem"></a>
# **Approve-BetaApprovalItem**
> WorkItems Approve-BetaApprovalItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApprovalItemId] <String><br>

Approve an Approval Item

This API approves an Approval Item. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$ApprovalItemId = "1211bcaa32112bcef6122adb21cef1ac" # String | The ID of the approval item.

# Approve an Approval Item
try {
    $Result = Approve-BetaApprovalItem -Id $Id -ApprovalItemId $ApprovalItemId
} catch {
    Write-Host ("Exception occurred when calling Approve-BetaApprovalItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Approve-BetaApprovalItemsInBulk"></a>
# **Approve-BetaApprovalItemsInBulk**
> WorkItems Approve-BetaApprovalItemsInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Bulk approve Approval Items

This API bulk approves Approval Items. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item

# Bulk approve Approval Items
try {
    $Result = Approve-BetaApprovalItemsInBulk -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Approve-BetaApprovalItemsInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Complete-BetaWorkItem"></a>
# **Complete-BetaWorkItem**
> WorkItems Complete-BetaWorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Complete a Work Item

This API completes a work item. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item

# Complete a Work Item
try {
    $Result = Complete-BetaWorkItem -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Complete-BetaWorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaForwardWorkItem"></a>
# **Invoke-BetaForwardWorkItem**
> void Invoke-BetaForwardWorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkItemForward] <PSCustomObject><br>

Forward a Work Item

This API forwards a work item to a new owner. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$WorkItemForward = Initialize-WorkItemForward -TargetOwnerId "2c9180835d2e5168015d32f890ca1581" -Comment "I'm going on vacation." -SendNotifications $true # WorkItemForward | 

# Forward a Work Item
try {
    $Result = Invoke-BetaForwardWorkItem -Id $Id -WorkItemForward $WorkItemForward
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaForwardWorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BetaCompletedWorkItems"></a>
# **Get-BetaCompletedWorkItems**
> WorkItems[] Get-BetaCompletedWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Completed Work Items

This gets a collection of completed work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
$OwnerId = "MyOwnerId" # String | The id of the owner of the work item list being requested.  Either an admin, or the owning/current user must make this request. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Completed Work Items
try {
    $Result = Get-BetaCompletedWorkItems -OwnerId $OwnerId -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCompletedWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BetaCountCompletedWorkItems"></a>
# **Get-BetaCountCompletedWorkItems**
> WorkItemsCount[] Get-BetaCountCompletedWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Count Completed Work Items

This gets a count of completed work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
$OwnerId = "MyOwnerId" # String | ID of the work item owner. (optional)

# Count Completed Work Items
try {
    $Result = Get-BetaCountCompletedWorkItems -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCountCompletedWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItemsCount[]**](WorkItemsCount.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCountWorkItems"></a>
# **Get-BetaCountWorkItems**
> WorkItemsCount[] Get-BetaCountWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Count Work Items

This gets a count of work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
$OwnerId = "MyOwnerId" # String | ID of the work item owner. (optional)

# Count Work Items
try {
    $Result = Get-BetaCountWorkItems -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCountWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItemsCount[]**](WorkItemsCount.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaWorkItem"></a>
# **Get-BetaWorkItem**
> WorkItems[] Get-BetaWorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Get a Work Item

This gets the details of a Work Item belonging to either the specified user(admin required), or the current user.

### Example
```powershell
$Id = "MyId" # String | ID of the work item.
$OwnerId = "MyOwnerId" # String | ID of the work item owner. (optional)

# Get a Work Item
try {
    $Result = Get-BetaWorkItem -Id $Id -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaWorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the work item. | 
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItems[]**](WorkItems.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaWorkItemsSummary"></a>
# **Get-BetaWorkItemsSummary**
> WorkItemsSummary[] Get-BetaWorkItemsSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Work Items Summary

This gets a summary of work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
$OwnerId = "MyOwnerId" # String | ID of the work item owner. (optional)

# Work Items Summary
try {
    $Result = Get-BetaWorkItemsSummary -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaWorkItemsSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OwnerId** | **String**| ID of the work item owner. | [optional] 

### Return type

[**WorkItemsSummary[]**](WorkItemsSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaWorkItems"></a>
# **Get-BetaWorkItems**
> WorkItems[] Get-BetaWorkItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

List Work Items

This gets a collection of work items belonging to either the specified user(admin required), or the current user.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$OwnerId = "MyOwnerId" # String | ID of the work item owner. (optional)

# List Work Items
try {
    $Result = Get-BetaWorkItems -Limit $Limit -Offset $Offset -Count $Count -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaWorkItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Deny-BetaApprovalItem"></a>
# **Deny-BetaApprovalItem**
> WorkItems Deny-BetaApprovalItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApprovalItemId] <String><br>

Reject an Approval Item

This API rejects an Approval Item. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$ApprovalItemId = "1211bcaa32112bcef6122adb21cef1ac" # String | The ID of the approval item.

# Reject an Approval Item
try {
    $Result = Deny-BetaApprovalItem -Id $Id -ApprovalItemId $ApprovalItemId
} catch {
    Write-Host ("Exception occurred when calling Deny-BetaApprovalItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Deny-BetaApprovalItemsInBulk"></a>
# **Deny-BetaApprovalItemsInBulk**
> WorkItems Deny-BetaApprovalItemsInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Bulk reject Approval Items

This API bulk rejects Approval Items. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item

# Bulk reject Approval Items
try {
    $Result = Deny-BetaApprovalItemsInBulk -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Deny-BetaApprovalItemsInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Submit-BetaAccountSelection"></a>
# **Submit-BetaAccountSelection**
> WorkItems Submit-BetaAccountSelection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Submit Account Selections

This API submits account selections. Either an admin, or the owning/current user must make this request.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the work item
$RequestBody = @{ key_example =  } # System.Collections.Hashtable | Account Selection Data map, keyed on fieldName

# Submit Account Selections
try {
    $Result = Submit-BetaAccountSelection -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaAccountSelection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

