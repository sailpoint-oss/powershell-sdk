# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024DimensionsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024Dimension**](V2024DimensionsApi.md#New-V2024Dimension) | **POST** /roles/{roleId}/dimensions | Create a Dimension
[**Remove-V2024BulkDimensions**](V2024DimensionsApi.md#Remove-V2024BulkDimensions) | **POST** /roles/{roleId}/dimensions/bulk-delete | Delete Dimension(s)
[**Remove-V2024Dimension**](V2024DimensionsApi.md#Remove-V2024Dimension) | **DELETE** /roles/{roleId}/dimensions/{dimensionId} | Delete a Dimension
[**Get-V2024Dimension**](V2024DimensionsApi.md#Get-V2024Dimension) | **GET** /roles/{roleId}/dimensions/{dimensionId} | Get a Dimension under Role.
[**Get-V2024DimensionEntitlements**](V2024DimensionsApi.md#Get-V2024DimensionEntitlements) | **GET** /roles/{roleId}/dimensions/{dimensionId}/entitlements | List Dimension&#39;s Entitlements
[**Get-V2024DimensionAccessProfiles**](V2024DimensionsApi.md#Get-V2024DimensionAccessProfiles) | **GET** /roles/{roleId}/dimensions/{dimensionId}/access-profiles | List Dimension&#39;s Access Profiles
[**Get-V2024Dimensions**](V2024DimensionsApi.md#Get-V2024Dimensions) | **GET** /roles/{roleId}/dimensions | List Dimensions
[**Update-V2024Dimension**](V2024DimensionsApi.md#Update-V2024Dimension) | **PATCH** /roles/{roleId}/dimensions/{dimensionId} | Patch a specified Dimension


<a id="New-V2024Dimension"></a>
# **New-V2024Dimension**
> Dimension New-V2024Dimension<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Dimension] <PSCustomObject><br>

Create a Dimension

This API creates a dimension. You must have a token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority to call this API.  Additionally, a ROLE_SUBADMIN cannot create a dimension that includes an access profile or entitlement if that access profile or entitlement is linked to a source that the ROLE_SUBADMIN is not associated with.  The maximum supported length for the description field is 2000 characters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$OwnerReference = Initialize-OwnerReference -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "support"
$AccessProfileRef = Initialize-AccessProfileRef -Id "ff808081751e6e129f1518161919ecca" -Type "ACCESS_PROFILE" -Name "Access Profile 2567"
$EntitlementRef = Initialize-EntitlementRef -Type "ENTITLEMENT" -Id "2c91809773dee32014e13e122092014e" -Name "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local"

$DimensionCriteriaKey = Initialize-DimensionCriteriaKey -Type "IDENTITY" -Property "attribute.email"

$DimensionCriteriaLevel3 = Initialize-DimensionCriteriaLevel3 -Operation "EQUALS" -Key $DimensionCriteriaKey -StringValue "carlee.cert1c9f9b6fd@mailinator.com"

$DimensionCriteriaLevel2 = Initialize-DimensionCriteriaLevel2 -Operation "EQUALS" -Key $DimensionCriteriaKey -StringValue "carlee.cert1c9f9b6fd@mailinator.com" -Children $DimensionCriteriaLevel3

$DimensionCriteriaLevel1 = Initialize-DimensionCriteriaLevel1 -Operation "EQUALS" -Key $DimensionCriteriaKey -StringValue "carlee.cert1c9f9b6fd@mailinator.com" -Children $DimensionCriteriaLevel2

$DimensionMembershipSelector = Initialize-DimensionMembershipSelector -Type "STANDARD" -Criteria $DimensionCriteriaLevel1

$Dimension = Initialize-Dimension -Id "2c918086749d78830174a1a40e121518" -Name "Dimension 2567" -Created (Get-Date) -Modified (Get-Date) -Description "Urna amet cursus pellentesque nisl orci maximus lorem nisl euismod fusce morbi placerat adipiscing maecenas nisi tristique et metus et lacus sed morbi nunc nisl maximus magna arcu varius sollicitudin elementum enim maecenas nisi id ipsum tempus fusce diam ipsum tortor." -Owner $OwnerReference -AccessProfiles $AccessProfileRef -Entitlements $EntitlementRef -Membership $DimensionMembershipSelector -ParentId "2c918086749d78830174a1a40e121518" # Dimension | 

# Create a Dimension
try {
    $Result = New-V2024Dimension -RoleId $RoleId -Dimension $Dimension
} catch {
    Write-Host ("Exception occurred when calling New-V2024Dimension: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **Dimension** | [**Dimension**](Dimension.md)|  | 

### Return type

[**Dimension**](Dimension.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024BulkDimensions"></a>
# **Remove-V2024BulkDimensions**
> TaskResultDto Remove-V2024BulkDimensions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DimensionBulkDeleteRequest] <PSCustomObject><br>

Delete Dimension(s)

This endpoint initiates a bulk deletion of one or more dimensions. When the request is successful, the endpoint returns the bulk delete's task result ID.  To follow the task, you can use [Get Task Status by ID](https://developer.sailpoint.com/docs/api/beta/get-task-status), which will return the task result's status and information.  This endpoint can only bulk delete up to a limit of 50 roles per request.  A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this endpoint. In addition, a token with ROLE_SUBADMIN authority can only call this endpoint if all dimensions included in the request are associated with sources with management workgroups the ROLE_SUBADMIN is a member of.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimensions.
$DimensionBulkDeleteRequest = Initialize-DimensionBulkDeleteRequest -DimensionIds "MyDimensionIds" # DimensionBulkDeleteRequest | 

# Delete Dimension(s)
try {
    $Result = Remove-V2024BulkDimensions -RoleId $RoleId -DimensionBulkDeleteRequest $DimensionBulkDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024BulkDimensions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimensions. | 
 **DimensionBulkDeleteRequest** | [**DimensionBulkDeleteRequest**](DimensionBulkDeleteRequest.md)|  | 

### Return type

[**TaskResultDto**](TaskResultDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Dimension"></a>
# **Remove-V2024Dimension**
> void Remove-V2024Dimension<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DimensionId] <String><br>

Delete a Dimension

This API deletes a Dimension by its ID. A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all Access Profiles/Entitlements included in the Dimension are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$DimensionId = "2c9180835d191a86015d28455b4a2329" # String | Id of the Dimension

# Delete a Dimension
try {
    $Result = Remove-V2024Dimension -RoleId $RoleId -DimensionId $DimensionId
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Dimension: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **DimensionId** | **String**| Id of the Dimension | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Dimension"></a>
# **Get-V2024Dimension**
> Dimension Get-V2024Dimension<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DimensionId] <String><br>

Get a Dimension under Role.

This API returns a Dimension by its ID.  A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all Access Profiles or Entitlements included in the Dimension or Parent Role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$DimensionId = "2c9180835d191a86015d28455b4a2329" # String | Id of the Dimension

# Get a Dimension under Role.
try {
    $Result = Get-V2024Dimension -RoleId $RoleId -DimensionId $DimensionId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Dimension: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **DimensionId** | **String**| Id of the Dimension | 

### Return type

[**Dimension**](Dimension.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024DimensionEntitlements"></a>
# **Get-V2024DimensionEntitlements**
> Entitlement1[] Get-V2024DimensionEntitlements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DimensionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Dimension's Entitlements

This API lists the Entitlements associated with a given dimension.  A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$DimensionId = "2c9180835d191a86015d28455b4a2329" # String | Id of the Dimension
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "attribute eq "memberOf"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** (optional)

# List Dimension's Entitlements
try {
    $Result = Get-V2024DimensionEntitlements -RoleId $RoleId -DimensionId $DimensionId -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024DimensionEntitlements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **DimensionId** | **String**| Id of the Dimension | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** | [optional] 

### Return type

[**Entitlement1[]**](Entitlement1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024DimensionAccessProfiles"></a>
# **Get-V2024DimensionAccessProfiles**
> AccessProfile[] Get-V2024DimensionAccessProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DimensionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Dimension's Access Profiles

This API lists the Access Profiles associated with a given Dimension  A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all Access Profiles included in the Role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$DimensionId = "2c9180835d191a86015d28455b4a2329" # String | Id of the Dimension
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "source.id eq "2c91808982f979270182f99e386d00fa"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)

# List Dimension's Access Profiles
try {
    $Result = Get-V2024DimensionAccessProfiles -RoleId $RoleId -DimensionId $DimensionId -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024DimensionAccessProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **DimensionId** | **String**| Id of the Dimension | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** | [optional] 

### Return type

[**AccessProfile[]**](AccessProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Dimensions"></a>
# **Get-V2024Dimensions**
> Dimension[] Get-V2024Dimensions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Dimensions

This API returns a list of dimensions under a specified role.  A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$ForSubadmin = "5168015d32f890ca15812c9180835d2e" # String | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity's ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. (optional)
$Limit = 50 # Int32 | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq '2c918086749d78830174a1a40e121518'" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)

# List Dimensions
try {
    $Result = Get-V2024Dimensions -RoleId $RoleId -ForSubadmin $ForSubadmin -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Dimensions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **ForSubadmin** | **String**| If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity&#39;s ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. | [optional] 
 **Limit** | **Int32**| Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 50]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** | [optional] 

### Return type

[**Dimension[]**](Dimension.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024Dimension"></a>
# **Update-V2024Dimension**
> Dimension Update-V2024Dimension<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DimensionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a specified Dimension

This API updates an existing dimension using [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax. The following fields are patchable: **name** **description** **owner** **accessProfiles** **entitlements** **membership** A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all access profiles/entitlements included in the dimension are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member. The maximum supported length for the description field is 2000 characters. When you use this API to modify a dimension's membership identities, you can only modify up to a limit of 500 membership identities at a time.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleId = "6603fba3004f43c687610a29195252ce" # String | Parent Role Id of the dimension.
$DimensionId = "2c9180835d191a86015d28455b4a2329" # String | Id of the Dimension
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch a specified Dimension
try {
    $Result = Update-V2024Dimension -RoleId $RoleId -DimensionId $DimensionId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Dimension: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Parent Role Id of the dimension. | 
 **DimensionId** | **String**| Id of the Dimension | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**Dimension**](Dimension.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

