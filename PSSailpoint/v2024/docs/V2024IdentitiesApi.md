# PSSailpointV2024.PSSailpointV2024\Api.V2024IdentitiesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-V2024Identity**](V2024IdentitiesApi.md#Remove-V2024Identity) | **DELETE** /identities/{id} | Delete identity
[**Get-V2024Identity**](V2024IdentitiesApi.md#Get-V2024Identity) | **GET** /identities/{id} | Identity Details
[**Get-V2024IdentityOwnershipDetails**](V2024IdentitiesApi.md#Get-V2024IdentityOwnershipDetails) | **GET** /identities/{identityId}/ownership | Get ownership details
[**Get-V2024RoleAssignment**](V2024IdentitiesApi.md#Get-V2024RoleAssignment) | **GET** /identities/{identityId}/role-assignments/{assignmentId} | Role assignment details
[**Get-V2024RoleAssignments**](V2024IdentitiesApi.md#Get-V2024RoleAssignments) | **GET** /identities/{identityId}/role-assignments | List role assignments
[**Get-V2024Identities**](V2024IdentitiesApi.md#Get-V2024Identities) | **GET** /identities | List Identities
[**Reset-V2024Identity**](V2024IdentitiesApi.md#Reset-V2024Identity) | **POST** /identities/{id}/reset | Reset an identity
[**Start-V2024IdentityProcessing**](V2024IdentitiesApi.md#Start-V2024IdentityProcessing) | **POST** /identities/process | Process a list of identityIds
[**Sync-V2024hronizeAttributesForIdentity**](V2024IdentitiesApi.md#Sync-V2024hronizeAttributesForIdentity) | **POST** /identities/{identityId}/synchronize-attributes | Attribute synchronization for single identity.


<a id="Remove-V2024Identity"></a>
# **Remove-V2024Identity**
> void Remove-V2024Identity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete identity

The API returns successful response if the requested identity was deleted.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete identity
try {
    $Result = Remove-V2024Identity -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Identity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Identity Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Identity"></a>
# **Get-V2024Identity**
> Identity Get-V2024Identity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Identity Details

This API returns a single identity using the Identity ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Identity Details
try {
    $Result = Get-V2024Identity -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Identity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Identity Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**Identity**](Identity.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityOwnershipDetails"></a>
# **Get-V2024IdentityOwnershipDetails**
> IdentityOwnershipAssociationDetails Get-V2024IdentityOwnershipDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get ownership details

Use this API to return an identity's owned objects that will cause problems for deleting the identity.  Use this API as a checklist of objects that you need to reassign to a different identity before you can delete the identity.  For a full list of objects owned by an identity, use the [Search API](https://developer.sailpoint.com/docs/api/v3/search-post/).  When you search for identities, the returned identities have a property, `owns`, that contains a more comprehensive list of identity's owned objects.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "ff8081814d2a8036014d701f3fbf53fa" # String | Identity ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get ownership details
try {
    $Result = Get-V2024IdentityOwnershipDetails -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityOwnershipDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| Identity ID. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**IdentityOwnershipAssociationDetails**](IdentityOwnershipAssociationDetails.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleAssignment"></a>
# **Get-V2024RoleAssignment**
> RoleAssignmentDto Get-V2024RoleAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Role assignment details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id
$AssignmentId = "1cbb0705b38c4226b1334eadd8874086" # String | Assignment Id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Role assignment details
try {
    $Result = Get-V2024RoleAssignment -IdentityId $IdentityId -AssignmentId $AssignmentId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| Identity Id | 
 **AssignmentId** | **String**| Assignment Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleAssignmentDto**](RoleAssignmentDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleAssignments"></a>
# **Get-V2024RoleAssignments**
> GetRoleAssignments200ResponseInner[] Get-V2024RoleAssignments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleName] <String><br>

List role assignments

This returns either a list of Role Assignments when querying with either a Role Id or Role Name, or a list of Role Assignment References if querying with only identity Id.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id to get the role assignments for
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RoleId = "e7697a1e96d04db1ac7b0f4544915d2c" # String | Role Id to filter the role assignments with (optional)
$RoleName = "Engineer" # String | Role name to filter the role assignments with (optional)

# List role assignments
try {
    $Result = Get-V2024RoleAssignments -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental -RoleId $RoleId -RoleName $RoleName
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleAssignments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| Identity Id to get the role assignments for | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **RoleId** | **String**| Role Id to filter the role assignments with | [optional] 
 **RoleName** | **String**| Role name to filter the role assignments with | [optional] 

### Return type

[**GetRoleAssignments200ResponseInner[]**](GetRoleAssignments200ResponseInner.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Identities"></a>
# **Get-V2024Identities**
> Identity[] Get-V2024Identities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefaultFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

List Identities

This API returns a list of identities.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Filters = "id eq "6c9079b270a266a60170a2779fcb0006" or correlated eq false" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **alias**: *eq, sw*  **firstname**: *eq, sw*  **lastname**: *eq, sw*  **email**: *eq, sw*  **cloudStatus**: *eq*  **processingState**: *eq*  **correlated**: *eq*  **protected**: *eq* (optional)
$Sorters = "name,-cloudStatus" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, alias, cloudStatus** (optional)
$DefaultFilter = "CORRELATED_ONLY" # String | Adds additional filter to filters query parameter.  CORRELATED_ONLY adds correlated=true and returns only identities that are correlated.  NONE does not add any and returns all identities that satisfy filters query parameter. (optional) (default to "CORRELATED_ONLY")
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# List Identities
try {
    $Result = Get-V2024Identities -XSailPointExperimental $XSailPointExperimental -Filters $Filters -Sorters $Sorters -DefaultFilter $DefaultFilter -Count $Count -Limit $Limit -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Identities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **alias**: *eq, sw*  **firstname**: *eq, sw*  **lastname**: *eq, sw*  **email**: *eq, sw*  **cloudStatus**: *eq*  **processingState**: *eq*  **correlated**: *eq*  **protected**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, alias, cloudStatus** | [optional] 
 **DefaultFilter** | **String**| Adds additional filter to filters query parameter.  CORRELATED_ONLY adds correlated&#x3D;true and returns only identities that are correlated.  NONE does not add any and returns all identities that satisfy filters query parameter. | [optional] [default to &quot;CORRELATED_ONLY&quot;]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]

### Return type

[**Identity[]**](Identity.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Reset-V2024Identity"></a>
# **Reset-V2024Identity**
> void Reset-V2024Identity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Reset an identity

Use this endpoint to reset a user's identity if they have forgotten their authentication information like their answers to knowledge-based questions. Resetting an identity de-registers the user and removes any elevated user levels they have.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Reset an identity
try {
    $Result = Reset-V2024Identity -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Reset-V2024Identity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| Identity Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-V2024IdentityProcessing"></a>
# **Start-V2024IdentityProcessing**
> TaskResultResponse Start-V2024IdentityProcessing<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProcessIdentitiesRequest] <PSCustomObject><br>

Process a list of identityIds

This operation should not be used to schedule your own identity processing or to perform system wide identity refreshes. The system will use a combination of [event-based processing](https://documentation.sailpoint.com/saas/help/setup/identity_processing.html?h=process#event-based-processing) and [scheduled processing](https://documentation.sailpoint.com/saas/help/setup/identity_processing.html?h=process#scheduled-processing) that runs every day at 8:00 AM and 8:00 PM in the tenant's timezone to keep your identities synchronized.   This endpoint will perform the following tasks: 1. Calculate identity attributes, including applying or running any rules or transforms (e.g. calculate Lifecycle State at a point-in-time it's expected to change). 2. Evaluate role assignments, leading to assignment of new roles and removal of existing roles. 3. Enforce provisioning for any assigned accesses that haven't been fulfilled (e.g. failure due to source health). 4. Recalculate manager relationships. 5. Potentially clean-up identity processing errors, assuming the error has been resolved.  A token with ORG_ADMIN or HELPDESK authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$ProcessIdentitiesRequest = Initialize-ProcessIdentitiesRequest -IdentityIds "ef38f94347e94562b5bb8424a56397d8" # ProcessIdentitiesRequest | 

# Process a list of identityIds
try {
    $Result = Start-V2024IdentityProcessing -XSailPointExperimental $XSailPointExperimental -ProcessIdentitiesRequest $ProcessIdentitiesRequest
} catch {
    Write-Host ("Exception occurred when calling Start-V2024IdentityProcessing: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ProcessIdentitiesRequest** | [**ProcessIdentitiesRequest**](ProcessIdentitiesRequest.md)|  | 

### Return type

[**TaskResultResponse**](TaskResultResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Sync-V2024hronizeAttributesForIdentity"></a>
# **Sync-V2024hronizeAttributesForIdentity**
> IdentitySyncJob Sync-V2024hronizeAttributesForIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Attribute synchronization for single identity.

This end-point performs attribute synchronization for a selected identity. The endpoint can be called once in 10 seconds per identity. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "MyIdentityId" # String | The Identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Attribute synchronization for single identity.
try {
    $Result = Sync-V2024hronizeAttributesForIdentity -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Sync-V2024hronizeAttributesForIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| The Identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**IdentitySyncJob**](IdentitySyncJob.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

