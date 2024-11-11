# PSSailpoint.V3.PSSailpoint.V3\Api.AccessRequestsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Suspend-AccessRequest**](AccessRequestsApi.md#Suspend-AccessRequest) | **POST** /access-requests/cancel | Cancel Access Request
[**New-AccessRequest**](AccessRequestsApi.md#New-AccessRequest) | **POST** /access-requests | Submit Access Request
[**Get-AccessRequestConfig**](AccessRequestsApi.md#Get-AccessRequestConfig) | **GET** /access-request-config | Get Access Request Configuration
[**Get-AccessRequestStatus**](AccessRequestsApi.md#Get-AccessRequestStatus) | **GET** /access-request-status | Access Request Status
[**Set-AccessRequestConfig**](AccessRequestsApi.md#Set-AccessRequestConfig) | **PUT** /access-request-config | Update Access Request Configuration


<a id="Suspend-AccessRequest"></a>
# **Suspend-AccessRequest**
> SystemCollectionsHashtable Suspend-AccessRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CancelAccessRequest] <PSCustomObject><br>

Cancel Access Request

This API endpoint cancels a pending access request. An access request can be cancelled only if it has not passed the approval step. In addition to users with ORG_ADMIN, any user who originally submitted the access request may cancel it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CancelAccessRequest = Initialize-CancelAccessRequest -AccountActivityId "2c9180835d2e5168015d32f890ca1581" -Comment "I requested this role by mistake." # CancelAccessRequest | 

# Cancel Access Request
try {
    $Result = Suspend-AccessRequest -CancelAccessRequest $CancelAccessRequest
} catch {
    Write-Host ("Exception occurred when calling Suspend-AccessRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-AccessRequest"></a>
# **New-AccessRequest**
> SystemCollectionsHashtable New-AccessRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequest] <PSCustomObject><br>

Submit Access Request

Use this API to submit an access request in Identity Security Cloud (ISC), where it follows any ISC approval processes.  Access requests are processed asynchronously by ISC. A successful response from this endpoint means that the request has been submitted to ISC and is queued for processing. Because this endpoint is asynchronous, it doesn't return an error if you submit duplicate access requests in quick succession or submit an access request for access that is already in progress, approved, or rejected.  It's best practice to check for any existing access requests that reference the same access items before submitting a new access request. This can be accomplished by using the [List Access Request Status](https://developer.sailpoint.com/idn/api/v3/list-access-request-status) or the [Pending Access Request Approvals](https://developer.sailpoint.com/idn/api/v3/list-pending-approvals) APIs. You can also use the [Search API](https://developer.sailpoint.com/idn/api/v3/search) to check the existing access items an identity has before submitting an access request to ensure that you aren't requesting access that is already granted. If you use this API to request access that an identity already has, the API will ignore the request.  These ignored requests do not display when you use the [List Access Request Status](https://developer.sailpoint.com/idn/api/v3/list-access-request-status) API.  There are two types of access request:  __GRANT_ACCESS__ * Can be requested for multiple identities in a single request. * Supports self request and request on behalf of other users. Refer to the [Get Access Request Configuration](https://developer.sailpoint.com/idn/api/v3/get-access-request-config) endpoint for request configuration options.   * Allows any authenticated token (except API) to call this endpoint to request to grant access to themselves. Depending on the configuration, a user can request access for others. * Roles, access profiles and entitlements can be requested. * While requesting entitlements, maximum of 25 entitlements and 10 recipients are allowed in a request.   __REVOKE_ACCESS__ * Can only be requested for a single identity at a time. * You cannot use an access request to revoke access from an identity if that access has been granted by role membership or by birthright provisioning.  * Does not support self request. Only manager can request to revoke access for their directly managed employees. * If a `removeDate` is specified, then the access will be removed on that date and time only for roles, access profiles and entitlements. * Roles, access profiles, and entitlements can be requested for revocation. * Revoke requests for entitlements are limited to 1 entitlement per access request currently. * You can specify a `removeDate` if the access doesn't already have a sunset date. The `removeDate` must be a future date, in the UTC timezone.  * Allows a manager to request to revoke access for direct employees. A user with ORG_ADMIN authority can also request to revoke access from anyone. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AccessRequestItem = Initialize-AccessRequestItem -Type "ACCESS_PROFILE" -Id "2c9180835d2e5168015d32f890ca1581" -Comment "Requesting access profile for John Doe" -ClientMetadata @{ key_example = "{requestedAppId=2c91808f7892918f0178b78da4a305a1, requestedAppName=test-app}" } -RemoveDate (Get-Date)
$AccessRequest = Initialize-AccessRequest -RequestedFor "2c918084660f45d6016617daa9210584" -RequestType "GRANT_ACCESS" -RequestedItems $AccessRequestItem -ClientMetadata @{ key_example = "{requestedAppId=2c91808f7892918f0178b78da4a305a1, requestedAppName=test-app}" } # AccessRequest | 

# Submit Access Request
try {
    $Result = New-AccessRequest -AccessRequest $AccessRequest
} catch {
    Write-Host ("Exception occurred when calling New-AccessRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AccessRequestConfig"></a>
# **Get-AccessRequestConfig**
> AccessRequestConfig Get-AccessRequestConfig<br>

Get Access Request Configuration

This endpoint returns the current access-request configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Access Request Configuration
try {
    $Result = Get-AccessRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Get-AccessRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccessRequestConfig**](AccessRequestConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AccessRequestStatus"></a>
# **Get-AccessRequestStatus**
> RequestedItemStatus[] Get-AccessRequestStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegardingIdentity] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignedTo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestState] <String><br>

Access Request Status

Use this API to return a list of access request statuses based on the specified query parameters. If an access request was made for access that an identity already has, the API ignores the access request.  These ignored requests do not display in the list of access request statuses. Any user with any user level can get the status of their own access requests. A user with ORG_ADMIN is required to call this API to get a list of statuses for other users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the identity the requests were made for. *me* indicates the current user. Mutually exclusive with *regarding-identity*. (optional)
$RequestedBy = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the identity who made the requests. *me* indicates the current user. Mutually exclusive with *regarding-identity*. (optional)
$RegardingIdentity = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the specified identity who is either the requester or target of the requests. *me* indicates the current user. Mutually exclusive with *requested-for* and *requested-by*. (optional)
$AssignedTo = "2c9180877b2b6ea4017b2c545f971429" # String | Filter the results by the specified identity who is the owner of the Identity Request Work Item. *me* indicates the current user. (optional)
$Count = $false # Boolean | If this is true, the *X-Total-Count* response header populates with the number of results that would be returned if limit and offset were ignored. (optional) (default to $false)
$Limit = 100 # Int32 | Max number of results to return. (optional) (default to 250)
$Offset = 10 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. Defaults to 0 if not specified. (optional)
$Filters = "accountActivityItemId eq "2c918086771c86df0177401efcdf54c0"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **accountActivityItemId**: *eq, in, ge, gt, le, lt, ne, isnull, sw* (optional)
$Sorters = "created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified, accountActivityItemId, name** (optional)
$RequestState = "request-state=EXECUTING" # String | Filter the results by the state of the request. The only valid value is *EXECUTING*. (optional)

# Access Request Status
try {
    $Result = Get-AccessRequestStatus -RequestedFor $RequestedFor -RequestedBy $RequestedBy -RegardingIdentity $RegardingIdentity -AssignedTo $AssignedTo -Count $Count -Limit $Limit -Offset $Offset -Filters $Filters -Sorters $Sorters -RequestState $RequestState
} catch {
    Write-Host ("Exception occurred when calling Get-AccessRequestStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| Filter the results by the identity the requests were made for. *me* indicates the current user. Mutually exclusive with *regarding-identity*. | [optional] 
 **RequestedBy** | **String**| Filter the results by the identity who made the requests. *me* indicates the current user. Mutually exclusive with *regarding-identity*. | [optional] 
 **RegardingIdentity** | **String**| Filter the results by the specified identity who is either the requester or target of the requests. *me* indicates the current user. Mutually exclusive with *requested-for* and *requested-by*. | [optional] 
 **AssignedTo** | **String**| Filter the results by the specified identity who is the owner of the Identity Request Work Item. *me* indicates the current user. | [optional] 
 **Count** | **Boolean**| If this is true, the *X-Total-Count* response header populates with the number of results that would be returned if limit and offset were ignored. | [optional] [default to $false]
 **Limit** | **Int32**| Max number of results to return. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. Defaults to 0 if not specified. | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **accountActivityItemId**: *eq, in, ge, gt, le, lt, ne, isnull, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified, accountActivityItemId, name** | [optional] 
 **RequestState** | **String**| Filter the results by the state of the request. The only valid value is *EXECUTING*. | [optional] 

### Return type

[**RequestedItemStatus[]**](RequestedItemStatus.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-AccessRequestConfig"></a>
# **Set-AccessRequestConfig**
> AccessRequestConfig Set-AccessRequestConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessRequestConfig] <PSCustomObject><br>

Update Access Request Configuration

This endpoint replaces the current access-request configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestOnBehalfOfConfig = Initialize-RequestOnBehalfOfConfig -AllowRequestOnBehalfOfAnyoneByAnyone $true -AllowRequestOnBehalfOfEmployeeByManager $true

$IdentityReferenceWithNameAndEmail = Initialize-IdentityReferenceWithNameAndEmail -Type "IDENTITY" -Id "5168015d32f890ca15812c9180835d2e" -Name "Alison Ferguso" -Email "alison.ferguso@identitysoon.com"
$ApprovalReminderAndEscalationConfig = Initialize-ApprovalReminderAndEscalationConfig -DaysUntilEscalation 0 -DaysBetweenReminders 0 -MaxReminders 1 -FallbackApproverRef $IdentityReferenceWithNameAndEmail

$EntitlementRequestConfig = Initialize-EntitlementRequestConfig -AllowEntitlementRequest $true -RequestCommentsRequired $false -DeniedCommentsRequired $false -GrantRequestApprovalSchemes "entitlementOwner, sourceOwner, manager, workgroup:2c918084660f45d6016617daa9210584"
$AccessRequestConfig = Initialize-AccessRequestConfig -ApprovalsMustBeExternal $true -AutoApprovalEnabled $true -RequestOnBehalfOfConfig $RequestOnBehalfOfConfig -ApprovalReminderAndEscalationConfig $ApprovalReminderAndEscalationConfig -EntitlementRequestConfig $EntitlementRequestConfig # AccessRequestConfig | 

# Update Access Request Configuration
try {
    $Result = Set-AccessRequestConfig -AccessRequestConfig $AccessRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Set-AccessRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

