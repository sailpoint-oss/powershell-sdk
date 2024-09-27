# PSSailpoint.V3.PSSailpoint.V3\Api.AccessProfilesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-AccessProfile**](AccessProfilesApi.md#New-AccessProfile) | **POST** /access-profiles | Create Access Profile
[**Remove-AccessProfile**](AccessProfilesApi.md#Remove-AccessProfile) | **DELETE** /access-profiles/{id} | Delete the specified Access Profile
[**Remove-AccessProfilesInBulk**](AccessProfilesApi.md#Remove-AccessProfilesInBulk) | **POST** /access-profiles/bulk-delete | Delete Access Profile(s)
[**Get-AccessProfile**](AccessProfilesApi.md#Get-AccessProfile) | **GET** /access-profiles/{id} | Get an Access Profile
[**Get-AccessProfileEntitlements**](AccessProfilesApi.md#Get-AccessProfileEntitlements) | **GET** /access-profiles/{id}/entitlements | List Access Profile&#39;s Entitlements
[**Get-AccessProfiles**](AccessProfilesApi.md#Get-AccessProfiles) | **GET** /access-profiles | List Access Profiles
[**Update-AccessProfile**](AccessProfilesApi.md#Update-AccessProfile) | **PATCH** /access-profiles/{id} | Patch a specified Access Profile


<a id="New-AccessProfile"></a>
# **New-AccessProfile**
> AccessProfile New-AccessProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessProfile] <PSCustomObject><br>

Create Access Profile

Use this API to create an access profile. A user with only ROLE_SUBADMIN or SOURCE_SUBADMIN authority must be associated with the access profile's Source. The maximum supported length for the description field is 2000 characters. Longer descriptions will be preserved for existing access profiles. However, any new access profiles as well as any updates to existing descriptions are limited to 2000 characters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerReference = Initialize-OwnerReference -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "support"
$AccessProfileSourceRef = Initialize-AccessProfileSourceRef -Id "2c91809773dee3610173fdb0b6061ef4" -Type "SOURCE" -Name "ODS-AD-SOURCE"
$EntitlementRef = Initialize-EntitlementRef -Type "ENTITLEMENT" -Id "2c91809773dee32014e13e122092014e" -Name "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local"

$AccessProfileApprovalScheme = Initialize-AccessProfileApprovalScheme -ApproverType "APP_OWNER" -ApproverId "46c79819-a69f-49a2-becb-12c971ae66c6"
$Requestability = Initialize-Requestability -CommentsRequired $true -DenialCommentsRequired $true -ApprovalSchemes $AccessProfileApprovalScheme

$Revocability = Initialize-Revocability -ApprovalSchemes $AccessProfileApprovalScheme

$ProvisioningCriteriaLevel3 = Initialize-ProvisioningCriteriaLevel3 -Operation "EQUALS" -Attribute "email" -Value "carlee.cert1c9f9b6fd@mailinator.com" -Children "MyChildren"
$ProvisioningCriteriaLevel2 = Initialize-ProvisioningCriteriaLevel2 -Operation "EQUALS" -Attribute "email" -Value "carlee.cert1c9f9b6fd@mailinator.com" -Children $ProvisioningCriteriaLevel3

$ProvisioningCriteriaLevel1 = Initialize-ProvisioningCriteriaLevel1 -Operation "EQUALS" -Attribute "email" -Value "carlee.cert1c9f9b6fd@mailinator.com" -Children $ProvisioningCriteriaLevel2

$AccessProfile = Initialize-AccessProfile -Id "2c91808a7190d06e01719938fcd20792" -Name "Employee-database-read-write" -Description "Collection of entitlements to read/write the employee database" -Created (Get-Date) -Modified (Get-Date) -Enabled $true -Owner $OwnerReference -Source $AccessProfileSourceRef -Entitlements $EntitlementRef -Requestable $true -AccessRequestConfig $Requestability -RevocationRequestConfig $Revocability -Segments "MySegments" -ProvisioningCriteria $ProvisioningCriteriaLevel1 # AccessProfile | 

# Create Access Profile
try {
    $Result = New-AccessProfile -AccessProfile $AccessProfile
} catch {
    Write-Host ("Exception occurred when calling New-AccessProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessProfile** | [**AccessProfile**](AccessProfile.md)|  | 

### Return type

[**AccessProfile**](AccessProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-AccessProfile"></a>
# **Remove-AccessProfile**
> void Remove-AccessProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete the specified Access Profile

This API deletes an existing Access Profile.  The Access Profile must not be in use, for example, Access Profile can not be deleted if they belong to an Application, Life Cycle State or a Role. If it is, a 400 error is returned.  A user with SOURCE_SUBADMIN must be able to administer the Source associated with the Access Profile.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the Access Profile to delete

# Delete the specified Access Profile
try {
    $Result = Remove-AccessProfile -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-AccessProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Access Profile to delete | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-AccessProfilesInBulk"></a>
# **Remove-AccessProfilesInBulk**
> AccessProfileBulkDeleteResponse Remove-AccessProfilesInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessProfileBulkDeleteRequest] <PSCustomObject><br>

Delete Access Profile(s)

This endpoint initiates a bulk deletion of one or more access profiles. When the request is successful, the endpoint returns the bulk delete's task result ID.  To follow the task, you can use [Get Task Status by ID](https://developer.sailpoint.com/docs/api/beta/get-task-status), which will return the task result's status and information.  This endpoint can only bulk delete up to a limit of 50 access profiles per request.  By default, if any of the indicated access profiles are in use, no deletions will be performed and the **inUse** field of the response indicates the usages that must be removed first. If the request field **bestEffortOnly** is **true**, however, usages are reported in the **inUse** response field but all other indicated access profiles will be deleted. A SOURCE_SUBADMIN user can only use this endpoint to delete access profiles associated with sources they're able to administer.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AccessProfileBulkDeleteRequest = Initialize-AccessProfileBulkDeleteRequest -AccessProfileIds "MyAccessProfileIds" -BestEffortOnly $true # AccessProfileBulkDeleteRequest | 

# Delete Access Profile(s)
try {
    $Result = Remove-AccessProfilesInBulk -AccessProfileBulkDeleteRequest $AccessProfileBulkDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-AccessProfilesInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessProfileBulkDeleteRequest** | [**AccessProfileBulkDeleteRequest**](AccessProfileBulkDeleteRequest.md)|  | 

### Return type

[**AccessProfileBulkDeleteResponse**](AccessProfileBulkDeleteResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AccessProfile"></a>
# **Get-AccessProfile**
> AccessProfile Get-AccessProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an Access Profile

This API returns an Access Profile by its ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180837ca6693d017ca8d097500149" # String | ID of the Access Profile

# Get an Access Profile
try {
    $Result = Get-AccessProfile -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AccessProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Access Profile | 

### Return type

[**AccessProfile**](AccessProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AccessProfileEntitlements"></a>
# **Get-AccessProfileEntitlements**
> Entitlement[] Get-AccessProfileEntitlements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Access Profile's Entitlements

Use this API to get a list of an access profile's entitlements.  A SOURCE_SUBADMIN user must have access to the source associated with the specified access profile. >**Note:** When you filter for access profiles that have the '+' symbol in their names, the response is blank. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the access profile containing the entitlements.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "attribute eq "memberOf"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in*  Filtering is not supported for access profiles and entitlements that have the '+' symbol in their names.  (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** (optional)

# List Access Profile's Entitlements
try {
    $Result = Get-AccessProfileEntitlements -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-AccessProfileEntitlements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the access profile containing the entitlements. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in*  Filtering is not supported for access profiles and entitlements that have the &#39;+&#39; symbol in their names.  | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** | [optional] 

### Return type

[**Entitlement[]**](Entitlement.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AccessProfiles"></a>
# **Get-AccessProfiles**
> AccessProfile[] Get-AccessProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSegmentIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeUnsegmented] <System.Nullable[Boolean]><br>

List Access Profiles

Use this API to get a list of access profiles. >**Note:** When you filter for access profiles that have the '+' symbol in their names, the response is blank. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ForSubadmin = "8c190e6787aa4ed9a90bd9d5344523fb" # String | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN or SOURCE_SUBADMIN identity. The value of the parameter is either an identity ID, or the special value **me**, which is shorthand for the calling identity's ID.  A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an identity that is not a subadmin. (optional)
$Limit = 50 # Int32 | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name eq "SailPoint Support"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq*  **source.id**: *eq, in*  Composite operators supported: *and, or*  Filtering is not supported for access profiles and entitlements that have the '+' symbol in their names.  (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)
$ForSegmentIds = "0b5c9f25-83c6-4762-9073-e38f7bb2ae26,2e8d8180-24bc-4d21-91c6-7affdb473b0d" # String | If present and not empty, additionally filters access profiles to those which are assigned to the segment(s) with the specified IDs.  If segmentation is currently unavailable, specifying this parameter results in an error. (optional)
$IncludeUnsegmented = $false # Boolean | Indicates whether the response list should contain unsegmented access profiles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. (optional) (default to $true)

# List Access Profiles
try {
    $Result = Get-AccessProfiles -ForSubadmin $ForSubadmin -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -ForSegmentIds $ForSegmentIds -IncludeUnsegmented $IncludeUnsegmented
} catch {
    Write-Host ("Exception occurred when calling Get-AccessProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ForSubadmin** | **String**| If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN or SOURCE_SUBADMIN identity. The value of the parameter is either an identity ID, or the special value **me**, which is shorthand for the calling identity&#39;s ID.  A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an identity that is not a subadmin. | [optional] 
 **Limit** | **Int32**| Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 50]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq*  **source.id**: *eq, in*  Composite operators supported: *and, or*  Filtering is not supported for access profiles and entitlements that have the &#39;+&#39; symbol in their names.  | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** | [optional] 
 **ForSegmentIds** | **String**| If present and not empty, additionally filters access profiles to those which are assigned to the segment(s) with the specified IDs.  If segmentation is currently unavailable, specifying this parameter results in an error. | [optional] 
 **IncludeUnsegmented** | **Boolean**| Indicates whether the response list should contain unsegmented access profiles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. | [optional] [default to $true]

### Return type

[**AccessProfile[]**](AccessProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AccessProfile"></a>
# **Update-AccessProfile**
> AccessProfile Update-AccessProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a specified Access Profile

This API updates an existing Access Profile. The following fields are patchable:  **name**  **description**  **enabled**  **owner**  **requestable**  **accessRequestConfig**  **revokeRequestConfig**  **segments**  **entitlements**  **provisioningCriteria**  **source** (must be updated with entitlements belonging to new source in the same API call)  If you need to change the `source` of the access profile, you can do so only if you update the `entitlements` in the same API call.  The new entitlements can only come from the target source that you want to change to.  Look for the example ""Replace Source"" in the examples dropdown.  A user with SOURCE_SUBADMIN may only use this API to patch Access Profiles which are associated with Sources they are able to administer. >  The maximum supported length for the description field is 2000 characters. Longer descriptions will be preserved for existing access profiles, however, any new access profiles as well as any updates to existing descriptions will be limited to 2000 characters.  > You can only add or replace **entitlements** that exist on the source that the access profile is attached to. You can use the **list entitlements** endpoint with the **filters** query parameter to get a list of available entitlements on the access profile's source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the Access Profile to patch
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch a specified Access Profile
try {
    $Result = Update-AccessProfile -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-AccessProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Access Profile to patch | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**AccessProfile**](AccessProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

