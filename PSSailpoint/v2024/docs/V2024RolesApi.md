# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024RolesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024Role**](V2024RolesApi.md#New-V2024Role) | **POST** /roles | Create a Role
[**Remove-V2024BulkRoles**](V2024RolesApi.md#Remove-V2024BulkRoles) | **POST** /roles/bulk-delete | Delete Role(s)
[**Remove-V2024MetadataFromRoleByKeyAndValue**](V2024RolesApi.md#Remove-V2024MetadataFromRoleByKeyAndValue) | **DELETE** /roles/{id}/access-model-metadata/{attributeKey}/values/{attributeValue} | Remove a Metadata From Role.
[**Remove-V2024Role**](V2024RolesApi.md#Remove-V2024Role) | **DELETE** /roles/{id} | Delete a Role
[**Get-V2024BulkUpdateStatus**](V2024RolesApi.md#Get-V2024BulkUpdateStatus) | **GET** /roles/access-model-metadata/bulk-update | Get Bulk-Update Statuses
[**Get-V2024BulkUpdateStatusById**](V2024RolesApi.md#Get-V2024BulkUpdateStatusById) | **GET** /roles/access-model-metadata/bulk-update/id | Get Bulk-Update Status by ID
[**Get-V2024Role**](V2024RolesApi.md#Get-V2024Role) | **GET** /roles/{id} | Get a Role
[**Get-V2024RoleAssignedIdentities**](V2024RolesApi.md#Get-V2024RoleAssignedIdentities) | **GET** /roles/{id}/assigned-identities | List Identities assigned a Role
[**Get-V2024RoleEntitlements**](V2024RolesApi.md#Get-V2024RoleEntitlements) | **GET** /roles/{id}/entitlements | List role&#39;s Entitlements
[**Get-V2024Roles**](V2024RolesApi.md#Get-V2024Roles) | **GET** /roles | List Roles
[**Update-V2024Role**](V2024RolesApi.md#Update-V2024Role) | **PATCH** /roles/{id} | Patch a specified Role
[**Search-V2024RolesByFilter**](V2024RolesApi.md#Search-V2024RolesByFilter) | **POST** /roles/filter | Filter Roles by Metadata
[**Update-V2024AttributeKeyAndValueToRole**](V2024RolesApi.md#Update-V2024AttributeKeyAndValueToRole) | **POST** /roles/{id}/access-model-metadata/{attributeKey}/values/{attributeValue} | Add a Metadata to Role.
[**Update-V2024RolesMetadataByFilter**](V2024RolesApi.md#Update-V2024RolesMetadataByFilter) | **POST** /roles/access-model-metadata/bulk-update/filter | Bulk-Update Roles&#39; Metadata by Filters
[**Update-V2024RolesMetadataByIds**](V2024RolesApi.md#Update-V2024RolesMetadataByIds) | **POST** /roles/access-model-metadata/bulk-update/ids | Bulk-Update Roles&#39; Metadata by ID
[**Update-V2024RolesMetadataByQuery**](V2024RolesApi.md#Update-V2024RolesMetadataByQuery) | **POST** /roles/access-model-metadata/bulk-update/query | Bulk-Update Roles&#39; Metadata by Query


<a id="New-V2024Role"></a>
# **New-V2024Role**
> Role New-V2024Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Role] <PSCustomObject><br>

Create a Role

This API creates a role. In addition, a ROLE_SUBADMIN may not create a role including an access profile if that access profile is associated with a source the ROLE_SUBADMIN is not associated with themselves.   The maximum supported length for the description field is 2000 characters. Longer descriptions will be preserved for existing roles. However, any new roles as well as any updates to existing descriptions will be limited to 2000 characters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerReference = Initialize-OwnerReference -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "support"
$AccessProfileRef = Initialize-AccessProfileRef -Id "ff808081751e6e129f1518161919ecca" -Type "ACCESS_PROFILE" -Name "Access Profile 2567"
$EntitlementRef = Initialize-EntitlementRef -Type "ENTITLEMENT" -Id "2c91809773dee32014e13e122092014e" -Name "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local"

$RoleCriteriaKey = Initialize-RoleCriteriaKey -Type "IDENTITY" -Property "attribute.email" -SourceId "2c9180867427f3a301745aec18211519"

$RoleCriteriaLevel3 = Initialize-RoleCriteriaLevel3 -Operation "EQUALS" -Key $RoleCriteriaKey -StringValue "carlee.cert1c9f9b6fd@mailinator.com"

$RoleCriteriaLevel2 = Initialize-RoleCriteriaLevel2 -Operation "EQUALS" -Key $RoleCriteriaKey -StringValue "carlee.cert1c9f9b6fd@mailinator.com" -Children $RoleCriteriaLevel3

$RoleCriteriaLevel1 = Initialize-RoleCriteriaLevel1 -Operation "EQUALS" -Key $RoleCriteriaKey -StringValue "carlee.cert1c9f9b6fd@mailinator.com" -Children $RoleCriteriaLevel2

$RoleMembershipIdentity = Initialize-RoleMembershipIdentity -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Thomas Edison" -AliasName "t.edison"
$RoleMembershipSelector = Initialize-RoleMembershipSelector -Type "STANDARD" -Criteria $RoleCriteriaLevel1 -Identities $RoleMembershipIdentity

$ApprovalSchemeForRole = Initialize-ApprovalSchemeForRole -ApproverType "OWNER" -ApproverId "46c79819-a69f-49a2-becb-12c971ae66c6"
$RequestabilityForRole = Initialize-RequestabilityForRole -CommentsRequired $true -DenialCommentsRequired $true -ApprovalSchemes $ApprovalSchemeForRole

$RevocabilityForRole = Initialize-RevocabilityForRole -CommentsRequired $false -DenialCommentsRequired $false -ApprovalSchemes $ApprovalSchemeForRole

$DimensionRef = Initialize-DimensionRef -Type "DIMENSION" -Id "2c91808568c529c60168cca6f90c1313" -Name "Role 2"

$AttributeValueDTO = Initialize-AttributeValueDTO -Value "public" -Name "Public" -Status "active"
$AttributeDTO = Initialize-AttributeDTO -Key "iscPrivacy" -Name "Privacy" -Multiselect $false -Status "active" -Type "governance" -ObjectTypes "MyObjectTypes" -Description "Specifies the level of privacy associated with an access item." -Values $AttributeValueDTO

$AttributeDTOList = Initialize-AttributeDTOList -Attributes $AttributeDTO

$Role = Initialize-Role -Id "2c918086749d78830174a1a40e121518" -Name "Role 2567" -Created (Get-Date) -Modified (Get-Date) -Description "Urna amet cursus pellentesque nisl orci maximus lorem nisl euismod fusce morbi placerat adipiscing maecenas nisi tristique et metus et lacus sed morbi nunc nisl maximus magna arcu varius sollicitudin elementum enim maecenas nisi id ipsum tempus fusce diam ipsum tortor." -Owner $OwnerReference -AccessProfiles $AccessProfileRef -Entitlements $EntitlementRef -Membership $RoleMembershipSelector -LegacyMembershipInfo @{ key_example =  } -Enabled $true -Requestable $true -AccessRequestConfig $RequestabilityForRole -RevocationRequestConfig $RevocabilityForRole -Segments "MySegments" -Dimensional $false -DimensionRefs $DimensionRef -AccessModelMetadata $AttributeDTOList # Role | 

# Create a Role
try {
    $Result = New-V2024Role -Role $Role
} catch {
    Write-Host ("Exception occurred when calling New-V2024Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Role** | [**Role**](Role.md)|  | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024BulkRoles"></a>
# **Remove-V2024BulkRoles**
> TaskResultDto Remove-V2024BulkRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleBulkDeleteRequest] <PSCustomObject><br>

Delete Role(s)

This endpoint initiates a bulk deletion of one or more roles. When the request is successful, the endpoint returns the bulk delete's task result ID.  To follow the task, you can use [Get Task Status by ID](https://developer.sailpoint.com/docs/api/beta/get-task-status), which will return the task result's status and information.  This endpoint can only bulk delete up to a limit of 50 roles per request.  A user with ROLE_SUBADMIN authority can only call this endpoint if all roles included in the request are associated with sources with management workgroups the ROLE_SUBADMIN is a member of.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleBulkDeleteRequest = Initialize-RoleBulkDeleteRequest -RoleIds "MyRoleIds" # RoleBulkDeleteRequest | 

# Delete Role(s)
try {
    $Result = Remove-V2024BulkRoles -RoleBulkDeleteRequest $RoleBulkDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024BulkRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleBulkDeleteRequest** | [**RoleBulkDeleteRequest**](RoleBulkDeleteRequest.md)|  | 

### Return type

[**TaskResultDto**](TaskResultDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024MetadataFromRoleByKeyAndValue"></a>
# **Remove-V2024MetadataFromRoleByKeyAndValue**
> void Remove-V2024MetadataFromRoleByKeyAndValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeValue] <String><br>

Remove a Metadata From Role.

This API initialize a request to remove a single Access Model Metadata from a role by attribute key and value. A token with ORG_ADMIN, ROLE_ADMIN ROLE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808c74ff913f0175097daa9d59cd" # String | The role's id.
$AttributeKey = "iscPrivacy" # String | Technical name of the Attribute.
$AttributeValue = "public" # String | Technical name of the Attribute Value.

# Remove a Metadata From Role.
try {
    $Result = Remove-V2024MetadataFromRoleByKeyAndValue -Id $Id -AttributeKey $AttributeKey -AttributeValue $AttributeValue
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024MetadataFromRoleByKeyAndValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The role&#39;s id. | 
 **AttributeKey** | **String**| Technical name of the Attribute. | 
 **AttributeValue** | **String**| Technical name of the Attribute Value. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Role"></a>
# **Remove-V2024Role**
> void Remove-V2024Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Role

This API deletes a Role by its ID.  A user with ROLE_SUBADMIN authority may only call this API if all Access Profiles included in the Role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role

# Delete a Role
try {
    $Result = Remove-V2024Role -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Role | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024BulkUpdateStatus"></a>
# **Get-V2024BulkUpdateStatus**
> RoleGetAllBulkUpdateResponse[] Get-V2024BulkUpdateStatus<br>

Get Bulk-Update Statuses

This API returns a list of all unfinished bulk update process status of the tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Bulk-Update Statuses
try {
    $Result = Get-V2024BulkUpdateStatus
} catch {
    Write-Host ("Exception occurred when calling Get-V2024BulkUpdateStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoleGetAllBulkUpdateResponse[]**](RoleGetAllBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024BulkUpdateStatusById"></a>
# **Get-V2024BulkUpdateStatusById**
> RoleBulkUpdateResponse Get-V2024BulkUpdateStatusById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Bulk-Update Status by ID

 This API initial a request for one bulk update's status by bulk update Id returns the status of the bulk update process. A token with ORG_ADMIN, ROLE_ADMIN ROLE_SUBADMIN authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c24359c389374d0fb8585698a2189e3d" # String | The Id of the bulk update task.

# Get Bulk-Update Status by ID
try {
    $Result = Get-V2024BulkUpdateStatusById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024BulkUpdateStatusById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Id of the bulk update task. | 

### Return type

[**RoleBulkUpdateResponse**](RoleBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Role"></a>
# **Get-V2024Role**
> Role Get-V2024Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Role

This API returns a Role by its ID. A user with ROLE_SUBADMIN authority may only call this API if all Access Profiles included in the Role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role

# Get a Role
try {
    $Result = Get-V2024Role -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Role | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleAssignedIdentities"></a>
# **Get-V2024RoleAssignedIdentities**
> RoleIdentity[] Get-V2024RoleAssignedIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Identities assigned a Role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role for which the assigned Identities are to be listed
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name sw Joe" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **aliasName**: *eq, sw*  **email**: *eq, sw*  **name**: *eq, sw, co* (optional)
$Sorters = "aliasName,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, aliasName, email** (optional)

# List Identities assigned a Role
try {
    $Result = Get-V2024RoleAssignedIdentities -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleAssignedIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Role for which the assigned Identities are to be listed | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **aliasName**: *eq, sw*  **email**: *eq, sw*  **name**: *eq, sw, co* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, aliasName, email** | [optional] 

### Return type

[**RoleIdentity[]**](RoleIdentity.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleEntitlements"></a>
# **Get-V2024RoleEntitlements**
> Entitlement1[] Get-V2024RoleEntitlements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List role's Entitlements

This API lists the Entitlements associated with a given role.

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

$Id = "2c91808a7813090a017814121919ecca" # String | ID of the containing role
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "attribute eq "memberOf"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** (optional)

# List role's Entitlements
try {
    $Result = Get-V2024RoleEntitlements -Id $Id -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleEntitlements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the containing role | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** | [optional] 

### Return type

[**Entitlement1[]**](Entitlement1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Roles"></a>
# **Get-V2024Roles**
> Role[] Get-V2024Roles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSegmentIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeUnsegmented] <System.Nullable[Boolean]><br>

List Roles

This API returns a list of Roles.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ForSubadmin = "5168015d32f890ca15812c9180835d2e" # String | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity's ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. (optional)
$Limit = 50 # Int32 | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "requestable eq false" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)
$ForSegmentIds = "0b5c9f25-83c6-4762-9073-e38f7bb2ae26,2e8d8180-24bc-4d21-91c6-7affdb473b0d" # String | If present and not empty, additionally filters Roles to those which are assigned to the Segment(s) with the specified IDs.  If segmentation is currently unavailable, specifying this parameter results in an error. (optional)
$IncludeUnsegmented = $false # Boolean | Whether or not the response list should contain unsegmented Roles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. (optional) (default to $true)

# List Roles
try {
    $Result = Get-V2024Roles -ForSubadmin $ForSubadmin -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -ForSegmentIds $ForSegmentIds -IncludeUnsegmented $IncludeUnsegmented
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Roles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ForSubadmin** | **String**| If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity&#39;s ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. | [optional] 
 **Limit** | **Int32**| Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 50]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** | [optional] 
 **ForSegmentIds** | **String**| If present and not empty, additionally filters Roles to those which are assigned to the Segment(s) with the specified IDs.  If segmentation is currently unavailable, specifying this parameter results in an error. | [optional] 
 **IncludeUnsegmented** | **Boolean**| Whether or not the response list should contain unsegmented Roles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. | [optional] [default to $true]

### Return type

[**Role[]**](Role.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024Role"></a>
# **Update-V2024Role**
> Role Update-V2024Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a specified Role

This API updates an existing role using [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax. The following fields are patchable: * name * description * enabled * owner * accessProfiles * entitlements * membership * requestable * accessRequestConfig * revokeRequestConfig * segments * accessModelMetadata  A user with ROLE_SUBADMIN authority may only call this API if all access profiles included in the role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.  The maximum supported length for the description field is 2000 characters. Longer descriptions will be preserved for existing roles, however, any new roles as well as any updates to existing descriptions will be limited to 2000 characters.  When you use this API to modify a role's membership identities, you can only modify up to a limit of 500 membership identities at a time. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role to patch
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch a specified Role
try {
    $Result = Update-V2024Role -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Role to patch | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024RolesByFilter"></a>
# **Search-V2024RolesByFilter**
> Role Search-V2024RolesByFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSegmentIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeUnsegmented] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleListFilterDTO] <PSCustomObject><br>

Filter Roles by Metadata

This API returns a list of Role that filter by metadata and filter, it support filter by  both path parameter and attribute key and values. A token with API, ORG_ADMIN, ROLE_ADMIN, ROLE_SUBADMIN, HELPDESK, CERT_ADMIN, REPORT_ADMIN or SOURCE_ADMIN  authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ForSubadmin = "5168015d32f890ca15812c9180835d2e" # String | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity's ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. (optional)
$Limit = 50 # Int32 | Max number of results to return See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)
$ForSegmentIds = "0b5c9f25-83c6-4762-9073-e38f7bb2ae26,2e8d8180-24bc-4d21-91c6-7affdb473b0d" # String | If present and not empty, additionally filters Roles to those which are assigned to the Segment(s) with the specified IDs. If segmentation is currently unavailable, specifying this parameter results in an error. (optional)
$IncludeUnsegmented = $false # Boolean | Whether or not the response list should contain unsegmented Roles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. (optional) (default to $true)
$RoleListFilterDTOAmmKeyValuesInner = Initialize-RoleListFilterDTOAmmKeyValuesInner -Attribute "iscFederalClassifications" -Values "secret"
$RoleListFilterDTO = Initialize-RoleListFilterDTO -Filters "dimensional eq false" -AmmKeyValues $RoleListFilterDTOAmmKeyValuesInner # RoleListFilterDTO |  (optional)

# Filter Roles by Metadata
try {
    $Result = Search-V2024RolesByFilter -ForSubadmin $ForSubadmin -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -ForSegmentIds $ForSegmentIds -IncludeUnsegmented $IncludeUnsegmented -RoleListFilterDTO $RoleListFilterDTO
} catch {
    Write-Host ("Exception occurred when calling Search-V2024RolesByFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ForSubadmin** | **String**| If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity&#39;s ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. | [optional] 
 **Limit** | **Int32**| Max number of results to return See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 50]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** | [optional] 
 **ForSegmentIds** | **String**| If present and not empty, additionally filters Roles to those which are assigned to the Segment(s) with the specified IDs. If segmentation is currently unavailable, specifying this parameter results in an error. | [optional] 
 **IncludeUnsegmented** | **Boolean**| Whether or not the response list should contain unsegmented Roles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. | [optional] [default to $true]
 **RoleListFilterDTO** | [**RoleListFilterDTO**](RoleListFilterDTO.md)|  | [optional] 

### Return type

**Role**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024AttributeKeyAndValueToRole"></a>
# **Update-V2024AttributeKeyAndValueToRole**
> Role Update-V2024AttributeKeyAndValueToRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeValue] <String><br>

Add a Metadata to Role.

This API initialize a request to add a single Access Model Metadata to a role by attribute key and attribute value. A token with ORG_ADMIN, ROLE_ADMIN ROLE_SUBADMIN authority is required to call this API. The maximum number of attributes in one role is 25. Custom metadata update, including ADD and REPLACE need suit licensed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c24359c389374d0fb8585698a2189e3d" # String | The Id of a role
$AttributeKey = "iscPrivacy" # String | Technical name of the Attribute.
$AttributeValue = "public" # String | Technical name of the Attribute Value.

# Add a Metadata to Role.
try {
    $Result = Update-V2024AttributeKeyAndValueToRole -Id $Id -AttributeKey $AttributeKey -AttributeValue $AttributeValue
} catch {
    Write-Host ("Exception occurred when calling Update-V2024AttributeKeyAndValueToRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Id of a role | 
 **AttributeKey** | **String**| Technical name of the Attribute. | 
 **AttributeValue** | **String**| Technical name of the Attribute Value. | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024RolesMetadataByFilter"></a>
# **Update-V2024RolesMetadataByFilter**
> RoleBulkUpdateResponse Update-V2024RolesMetadataByFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMetadataBulkUpdateByFilterRequest] <PSCustomObject><br>

Bulk-Update Roles' Metadata by Filters

This API initiates a bulk update of metadata for one or more Roles by filter. A token with ORG_ADMIN, ROLE_ADMIN ROLE_SUBADMIN authority is required to call this API. The maximum metadata value count for a single role is 25. Custom metadata update, including add, replace need suit licensed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleMetadataBulkUpdateByFilterRequestValuesInner = Initialize-RoleMetadataBulkUpdateByFilterRequestValuesInner -AttributeKey "iscFederalClassifications" -Values "secret"
$RoleMetadataBulkUpdateByFilterRequest = Initialize-RoleMetadataBulkUpdateByFilterRequest -Filters " requestable eq false" -Operation "ADD" -ReplaceScope "ALL" -Values $RoleMetadataBulkUpdateByFilterRequestValuesInner # RoleMetadataBulkUpdateByFilterRequest | 

# Bulk-Update Roles' Metadata by Filters
try {
    $Result = Update-V2024RolesMetadataByFilter -RoleMetadataBulkUpdateByFilterRequest $RoleMetadataBulkUpdateByFilterRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2024RolesMetadataByFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleMetadataBulkUpdateByFilterRequest** | [**RoleMetadataBulkUpdateByFilterRequest**](RoleMetadataBulkUpdateByFilterRequest.md)|  | 

### Return type

[**RoleBulkUpdateResponse**](RoleBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024RolesMetadataByIds"></a>
# **Update-V2024RolesMetadataByIds**
> RoleBulkUpdateResponse Update-V2024RolesMetadataByIds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMetadataBulkUpdateByIdRequest] <PSCustomObject><br>

Bulk-Update Roles' Metadata by ID

This API initiates a bulk update of metadata for one or more Roles by a list of Role Ids. A token with ORG_ADMIN, ROLE_ADMIN ROLE_SUBADMIN authority is required to call this API. The maximum role count in a single update request is 3000. The maximum metadata value count for a single role is 25. Custom metadata update, including add, replace need suit licensed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleMetadataBulkUpdateByIdRequestValuesInner = Initialize-RoleMetadataBulkUpdateByIdRequestValuesInner -Attribute "iscFederalClassifications" -Values "secret"
$RoleMetadataBulkUpdateByIdRequest = Initialize-RoleMetadataBulkUpdateByIdRequest -Roles "MyRoles" -Operation "ADD" -ReplaceScope "ALL" -Values $RoleMetadataBulkUpdateByIdRequestValuesInner # RoleMetadataBulkUpdateByIdRequest | 

# Bulk-Update Roles' Metadata by ID
try {
    $Result = Update-V2024RolesMetadataByIds -RoleMetadataBulkUpdateByIdRequest $RoleMetadataBulkUpdateByIdRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2024RolesMetadataByIds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleMetadataBulkUpdateByIdRequest** | [**RoleMetadataBulkUpdateByIdRequest**](RoleMetadataBulkUpdateByIdRequest.md)|  | 

### Return type

[**RoleBulkUpdateResponse**](RoleBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024RolesMetadataByQuery"></a>
# **Update-V2024RolesMetadataByQuery**
> RoleBulkUpdateResponse Update-V2024RolesMetadataByQuery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleMetadataBulkUpdateByQueryRequest] <PSCustomObject><br>

Bulk-Update Roles' Metadata by Query

This API initiates a bulk update of metadata for one or more Roles by query. A token with ORG_ADMIN, ROLE_ADMIN ROLE_SUBADMIN authority is required to call this API. The maximum metadata value count for a single role is 25. Custom metadata update, including add, replace need suit licensed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RoleMetadataBulkUpdateByQueryRequestValuesInner = Initialize-RoleMetadataBulkUpdateByQueryRequestValuesInner -AttributeKey "iscFederalClassifications" -AttributeValue "topSecret"
$RoleMetadataBulkUpdateByQueryRequest = Initialize-RoleMetadataBulkUpdateByQueryRequest -Query  -Operation "ADD" -ReplaceScope "ALL" -Values $RoleMetadataBulkUpdateByQueryRequestValuesInner # RoleMetadataBulkUpdateByQueryRequest | 

# Bulk-Update Roles' Metadata by Query
try {
    $Result = Update-V2024RolesMetadataByQuery -RoleMetadataBulkUpdateByQueryRequest $RoleMetadataBulkUpdateByQueryRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2024RolesMetadataByQuery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleMetadataBulkUpdateByQueryRequest** | [**RoleMetadataBulkUpdateByQueryRequest**](RoleMetadataBulkUpdateByQueryRequest.md)|  | 

### Return type

[**RoleBulkUpdateResponse**](RoleBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

