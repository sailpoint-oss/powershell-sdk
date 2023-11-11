# PSSailpointBeta.PSSailpointBeta/Api.BetaAccessRequestsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Suspend-BetaAccessRequest**](BetaAccessRequestsApi.md#Suspend-BetaAccessRequest) | **POST** /access-requests/cancel | Cancel Access Request
[**Close-BetaAccessRequest**](BetaAccessRequestsApi.md#Close-BetaAccessRequest) | **POST** /access-requests/close | Close Access Request
[**New-BetaAccessRequest**](BetaAccessRequestsApi.md#New-BetaAccessRequest) | **POST** /access-requests | Submit an Access Request
[**Get-BetaAccessRequestConfig**](BetaAccessRequestsApi.md#Get-BetaAccessRequestConfig) | **GET** /access-request-config | Get Access Request Configuration
[**Get-BetaAccessRequestStatus**](BetaAccessRequestsApi.md#Get-BetaAccessRequestStatus) | **GET** /access-request-status | Access Request Status
[**Set-BetaAccessRequestConfig**](BetaAccessRequestsApi.md#Set-BetaAccessRequestConfig) | **PUT** /access-request-config | Update Access Request Configuration


<a name="Suspend-BetaAccessRequest"></a>
# **Suspend-BetaAccessRequest**
> SystemCollectionsHashtable Suspend-BetaAccessRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CancelAccessRequest] <PSCustomObject><br>

Cancel Access Request

This API endpoint cancels a pending access request. An access request can be cancelled only if it has not passed the approval step. Any token with ORG_ADMIN authority or token of the user who originally requested the access request is required to cancel it.

### Example
```powershell
$CancelAccessRequest = Initialize-CancelAccessRequest -AccountActivityId "2c9180835d2e5168015d32f890ca1581" -Comment "I requested this role by mistake." # CancelAccessRequest | 

# Cancel Access Request
try {
    $Result = Suspend-BetaAccessRequest -CancelAccessRequest $CancelAccessRequest
} catch {
    Write-Host ("Exception occurred when calling Suspend-BetaAccessRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CancelAccessRequest** | [**CancelAccessRequest**](CancelAccessRequest.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Close-BetaAccessRequest"></a>
# **Close-BetaAccessRequest**
> SystemCollectionsHashtable Close-BetaAccessRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloseAccessRequest] <PSCustomObject><br>

Close Access Request

This endpoint closes access requests that are stuck in a pending state. It can be used throughout a request's lifecycle (even after the approval state, unlike <a href=""https://developer.sailpoint.com/idn/api/v3/cancel-access-request"">Cancel Access Request</a>). A token with ORG_ADMIN authority is required.  To find pending access requests via the UI, navigate to Search and use this query: status: Pending AND ""Access Request"". Use the Column Chooser to select ""Tracking Number,"" and the Download button to export a CSV containing the Tracking Numbers.  To find pending access requests via the API, use <a href=""https://developer.sailpoint.com/idn/api/v3/list-account-activities"">List Account Activities</a>.  Input the ids from either source  To track the status of endpoint requests, navigate to Search and use this query: name:""Close Identity Requests"". Search will include ""Close Identity Requests Started"" audits when requests are initiated, and ""Close Identity Requests Completed"" audits when requests are completed. The completion audit will list the Identity Request IDs that finished in error.  This API triggers the <a href=""https://developer.sailpoint.com/idn/docs/event-triggers/triggers/provisioning-action-completed"">Provisioning Action Completed</a> event trigger for each access request that is closed. 

### Example
```powershell
$CloseAccessRequest = Initialize-CloseAccessRequest -AccessRequestIds "MyAccessRequestIds" -Message "The IdentityNow Administrator manually closed this request." -ExecutionStatus "Terminated" -CompletionStatus "Success" # CloseAccessRequest | 

# Close Access Request
try {
    $Result = Close-BetaAccessRequest -CloseAccessRequest $CloseAccessRequest
} catch {
    Write-Host ("Exception occurred when calling Close-BetaAccessRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CloseAccessRequest** | [**CloseAccessRequest**](CloseAccessRequest.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaAccessRequest"></a>
# **New-BetaAccessRequest**
> SystemCollectionsHashtable New-BetaAccessRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequest] <PSCustomObject><br>

Submit an Access Request

This submits the access request into IdentityNow, where it will follow any IdentityNow approval processes.  Access requests are processed asynchronously by IdentityNow.  A success response from this endpoint means the request has been submitted to IDN and is queued for processing.  Because this endpoint is asynchronous, it will not return an error if you submit duplicate access requests in quick succession, or you submit an access request for access that is already in progress, approved, or rejected. It is best practice to check for any existing access requests that reference the same access items before submitting a new access request.  This can be accomplished by using the [access request status](https://developer.sailpoint.com/idn/api/v3/list-access-request-status) or the [pending access request approvals](https://developer.sailpoint.com/idn/api/v3/list-pending-approvals) endpoints.  You can also use the [search API](https://developer.sailpoint.com/idn/api/v3/search) to check the existing access items that an identity has before submitting an access request to ensure you are not requesting access that is already granted.  There are two types of access request:  __GRANT_ACCESS__ * Can be requested for multiple identities in a single request. * Supports self request and request on behalf of other users. Refer to the [Get Access Request Configuration](https://developer.sailpoint.com/idn/api/v3/get-access-request-config) endpoint for request configuration options.   * Allows any authenticated token (except API) to call this endpoint to request to grant access to themselves. Depending on the configuration, a user can request access for others. * Roles, access profiles and entitlements can be requested. * While requesting entitlements, maximum of 25 entitlements and 10 recipients are allowed in a request.   __REVOKE_ACCESS__ * Can only be requested for a single identity at a time. * Does not support self request. Only manager can request to revoke access for their directly managed employees. * If a `removeDate` is specified, then the access will be removed on that date and time only for roles and access profiles. Entitlements are currently unsupported for `removeDate`. * Roles, access profiles, and entitlements can be requested for revocation. * Revoke requests for entitlements are limited to 1 entitlement per access request currently. * [Roles, Access Profiles] You can specify a `removeDate` if the access doesn't already have a sunset date. The `removeDate` must be a future date, in the UTC timezone.  * Allows a manager to request to revoke access for direct employees. A token with ORG_ADMIN authority can also request to revoke access from anyone.  >**Note:** There is no indication to the approver in the IdentityNow UI that the approval request is for a revoke action. Take this into consideration when calling this API.  A token with API authority cannot be used to call this endpoint.  

### Example
```powershell
$AccessRequestItem = Initialize-AccessRequestItem -Type "ACCESS_PROFILE" -Id "2c9180835d2e5168015d32f890ca1581" -Comment "Requesting access profile for John Doe" -ClientMetadata @{ key_example = "{requestedAppId=2c91808f7892918f0178b78da4a305a1, requestedAppName=test-app}" } -RemoveDate (Get-Date)
$AccessRequest = Initialize-AccessRequest -RequestedFor "2c918084660f45d6016617daa9210584" -RequestType "GRANT_ACCESS" -RequestedItems $AccessRequestItem -ClientMetadata @{ key_example = "{requestedAppId=2c91808f7892918f0178b78da4a305a1, requestedAppName=test-app}" } # AccessRequest | 

# Submit an Access Request
try {
    $Result = New-BetaAccessRequest -AccessRequest $AccessRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaAccessRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessRequest** | [**AccessRequest**](AccessRequest.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaAccessRequestConfig"></a>
# **Get-BetaAccessRequestConfig**
> AccessRequestConfig Get-BetaAccessRequestConfig<br>

Get Access Request Configuration

This endpoint returns the current access-request configuration.

### Example
```powershell

# Get Access Request Configuration
try {
    $Result = Get-BetaAccessRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccessRequestConfig**](AccessRequestConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaAccessRequestStatus"></a>
# **Get-BetaAccessRequestStatus**
> RequestedItemStatus[] Get-BetaAccessRequestStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegardingIdentity] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignedTo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Access Request Status

The Access Request Status API returns a list of access request statuses based on the specified query parameters. Any token with any authority can request their own status. A token with ORG_ADMIN authority is required to call this API to get a list of statuses for other users.

### Example
```powershell
$RequestedFor = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the identity for which the requests were made. *me* indicates the current user. Mutually exclusive with *regarding-identity*. (optional)
$RequestedBy = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the identity that made the requests. *me* indicates the current user. Mutually exclusive with *regarding-identity*. (optional)
$RegardingIdentity = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the specified identity which is either the requester or target of the requests. *me* indicates the current user. Mutually exclusive with *requested-for* and *requested-by*. (optional)
$AssignedTo = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the specified identity which is the owner of the Identity Request Work Item. *me* indicates the current user. (optional)
$Count = $false # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored. (optional) (default to $false)
$Limit = 100 # Int32 | Max number of results to return. (optional) (default to 250)
$Offset = 10 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. Defaults to 0 if not specified. (optional)
$Filters = "accountActivityItemId eq "2c918086771c86df0177401efcdf54c0"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **accountActivityItemId**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw* (optional)
$Sorters = "created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified, accountActivityItemId, name** (optional)

# Access Request Status
try {
    $Result = Get-BetaAccessRequestStatus -RequestedFor $RequestedFor -RequestedBy $RequestedBy -RegardingIdentity $RegardingIdentity -AssignedTo $AssignedTo -Count $Count -Limit $Limit -Offset $Offset -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessRequestStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| Filter the results by the identity for which the requests were made. *me* indicates the current user. Mutually exclusive with *regarding-identity*. | [optional] 
 **RequestedBy** | **String**| Filter the results by the identity that made the requests. *me* indicates the current user. Mutually exclusive with *regarding-identity*. | [optional] 
 **RegardingIdentity** | **String**| Filter the results by the specified identity which is either the requester or target of the requests. *me* indicates the current user. Mutually exclusive with *requested-for* and *requested-by*. | [optional] 
 **AssignedTo** | **String**| Filter the results by the specified identity which is the owner of the Identity Request Work Item. *me* indicates the current user. | [optional] 
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored. | [optional] [default to $false]
 **Limit** | **Int32**| Max number of results to return. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. Defaults to 0 if not specified. | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **accountActivityItemId**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified, accountActivityItemId, name** | [optional] 

### Return type

[**RequestedItemStatus[]**](RequestedItemStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-BetaAccessRequestConfig"></a>
# **Set-BetaAccessRequestConfig**
> AccessRequestConfig Set-BetaAccessRequestConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequestConfig] <PSCustomObject><br>

Update Access Request Configuration

This endpoint replaces the current access-request configuration. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$RequestOnBehalfOfConfig = Initialize-RequestOnBehalfOfConfig -AllowRequestOnBehalfOfAnyoneByAnyone $true -AllowRequestOnBehalfOfEmployeeByManager $true

$IdentityReferenceWithNameAndEmail = Initialize-IdentityReferenceWithNameAndEmail -Type "IDENTITY" -Id "5168015d32f890ca15812c9180835d2e" -Name "Alison Ferguso" -Email "alison.ferguso@identitysoon.com"
$ApprovalReminderAndEscalationConfig = Initialize-ApprovalReminderAndEscalationConfig -DaysUntilEscalation 0 -DaysBetweenReminders 0 -MaxReminders 1 -FallbackApproverRef $IdentityReferenceWithNameAndEmail

$EntitlementRequestConfig1 = Initialize-EntitlementRequestConfig1 -AllowEntitlementRequest $true -RequestCommentsRequired $false -DeniedCommentsRequired $false -GrantRequestApprovalSchemes "entitlementOwner, sourceOwner, manager, workgroup:2c918084660f45d6016617daa9210584"
$AccessRequestConfig = Initialize-AccessRequestConfig -ApprovalsMustBeExternal $true -AutoApprovalEnabled $true -RequestOnBehalfOfConfig $RequestOnBehalfOfConfig -ApprovalReminderAndEscalationConfig $ApprovalReminderAndEscalationConfig -EntitlementRequestConfig $EntitlementRequestConfig1 # AccessRequestConfig | 

# Update Access Request Configuration
try {
    $Result = Set-BetaAccessRequestConfig -AccessRequestConfig $AccessRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Set-BetaAccessRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessRequestConfig** | [**AccessRequestConfig**](AccessRequestConfig.md)|  | 

### Return type

[**AccessRequestConfig**](AccessRequestConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

