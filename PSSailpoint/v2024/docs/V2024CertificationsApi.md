# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024CertificationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024CertificationTask**](V2024CertificationsApi.md#Get-V2024CertificationTask) | **GET** /certification-tasks/{id} | Certification Task by ID
[**Get-V2024IdentityCertification**](V2024CertificationsApi.md#Get-V2024IdentityCertification) | **GET** /certifications/{id} | Identity Certification by ID
[**Get-V2024IdentityCertificationItemPermissions**](V2024CertificationsApi.md#Get-V2024IdentityCertificationItemPermissions) | **GET** /certifications/{certificationId}/access-review-items/{itemId}/permissions | Permissions for Entitlement Certification Item
[**Get-V2024PendingCertificationTasks**](V2024CertificationsApi.md#Get-V2024PendingCertificationTasks) | **GET** /certification-tasks | List of Pending Certification Tasks
[**Get-V2024CertificationReviewers**](V2024CertificationsApi.md#Get-V2024CertificationReviewers) | **GET** /certifications/{id}/reviewers | List of Reviewers for certification
[**Get-V2024IdentityAccessReviewItems**](V2024CertificationsApi.md#Get-V2024IdentityAccessReviewItems) | **GET** /certifications/{id}/access-review-items | List of Access Review Items
[**Get-V2024IdentityCertifications**](V2024CertificationsApi.md#Get-V2024IdentityCertifications) | **GET** /certifications | List Identity Campaign Certifications
[**Select-V2024IdentityDecision**](V2024CertificationsApi.md#Select-V2024IdentityDecision) | **POST** /certifications/{id}/decide | Decide on a Certification Item
[**Invoke-V2024ReassignIdentityCertifications**](V2024CertificationsApi.md#Invoke-V2024ReassignIdentityCertifications) | **POST** /certifications/{id}/reassign | Reassign Identities or Items
[**Invoke-V2024SignOffIdentityCertification**](V2024CertificationsApi.md#Invoke-V2024SignOffIdentityCertification) | **POST** /certifications/{id}/sign-off | Finalize Identity Certification Decisions
[**Submit-V2024ReassignCertsAsync**](V2024CertificationsApi.md#Submit-V2024ReassignCertsAsync) | **POST** /certifications/{id}/reassign-async | Reassign Certifications Asynchronously


<a id="Get-V2024CertificationTask"></a>
# **Get-V2024CertificationTask**
> CertificationTask Get-V2024CertificationTask<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Certification Task by ID

This API returns the certification task for the specified ID. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for the specified certification can also call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "63b32151-26c0-42f4-9299-8898dc1c9daa" # String | The task ID

# Certification Task by ID
try {
    $Result = Get-V2024CertificationTask -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CertificationTask: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The task ID | 

### Return type

[**CertificationTask**](CertificationTask.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityCertification"></a>
# **Get-V2024IdentityCertification**
> IdentityCertificationDto Get-V2024IdentityCertification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Identity Certification by ID

This API returns a single identity campaign certification by its ID. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API. This API does not support requests for certifications assigned to Governance Groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The certification id

# Identity Certification by ID
try {
    $Result = Get-V2024IdentityCertification -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityCertification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The certification id | 

### Return type

[**IdentityCertificationDto**](IdentityCertificationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityCertificationItemPermissions"></a>
# **Get-V2024IdentityCertificationItemPermissions**
> PermissionDto[] Get-V2024IdentityCertificationItemPermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertificationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Permissions for Entitlement Certification Item

This API returns the permissions associated with an entitlement certification item based on the certification item's ID. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CertificationId = "ef38f94347e94562b5bb8424a56397d8" # String | The certification ID
$ItemId = "2c91808671bcbab40171bd945d961227" # String | The certification item ID
$Filters = "target eq "SYS.OBJAUTH2"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **target**: *eq, sw*  **rights**: *ca*  Supported composite operators: *and, or*  All field values (second filter operands) are case-insensitive for this API.  Only a single *and* or *or* composite filter operator may be used. It must also be used between a target filter and a rights filter, not between 2 filters for the same field.  For example, the following is valid: `?filters=rights+ca+(%22CREATE%22)+and+target+eq+%22SYS.OBJAUTH2%22`  The following is invalid: 1?filters=rights+ca+(%22CREATE%22)+and+rights+ca+(%SELECT%22)1 (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Permissions for Entitlement Certification Item
try {
    $Result = Get-V2024IdentityCertificationItemPermissions -CertificationId $CertificationId -ItemId $ItemId -Filters $Filters -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityCertificationItemPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertificationId** | **String**| The certification ID | 
 **ItemId** | **String**| The certification item ID | 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **target**: *eq, sw*  **rights**: *ca*  Supported composite operators: *and, or*  All field values (second filter operands) are case-insensitive for this API.  Only a single *and* or *or* composite filter operator may be used. It must also be used between a target filter and a rights filter, not between 2 filters for the same field.  For example, the following is valid: &#x60;?filters&#x3D;rights+ca+(%22CREATE%22)+and+target+eq+%22SYS.OBJAUTH2%22&#x60;  The following is invalid: 1?filters&#x3D;rights+ca+(%22CREATE%22)+and+rights+ca+(%SELECT%22)1 | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**PermissionDto[]**](PermissionDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PendingCertificationTasks"></a>
# **Get-V2024PendingCertificationTasks**
> CertificationTask[] Get-V2024PendingCertificationTasks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewerIdentity] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List of Pending Certification Tasks

This API returns a list of pending (`QUEUED` or `IN_PROGRESS`) certification tasks. Any authenticated token can call this API, but only certification tasks you are authorized to review will be returned.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReviewerIdentity = "Ada.1de82e55078344" # String | The ID of reviewer identity. *me* indicates the current user. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "type eq "ADMIN_REASSIGN"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **targetId**: *eq, in*  **type**: *eq, in* (optional)

# List of Pending Certification Tasks
try {
    $Result = Get-V2024PendingCertificationTasks -ReviewerIdentity $ReviewerIdentity -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PendingCertificationTasks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReviewerIdentity** | **String**| The ID of reviewer identity. *me* indicates the current user. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **targetId**: *eq, in*  **type**: *eq, in* | [optional] 

### Return type

[**CertificationTask[]**](CertificationTask.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CertificationReviewers"></a>
# **Get-V2024CertificationReviewers**
> IdentityReferenceWithNameAndEmail[] Get-V2024CertificationReviewers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List of Reviewers for certification

This API returns a list of reviewers for the certification. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The certification ID
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name eq "Bob"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **email**: *eq, sw* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, email** (optional)

# List of Reviewers for certification
try {
    $Result = Get-V2024CertificationReviewers -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CertificationReviewers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The certification ID | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **email**: *eq, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, email** | [optional] 

### Return type

[**IdentityReferenceWithNameAndEmail[]**](IdentityReferenceWithNameAndEmail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityAccessReviewItems"></a>
# **Get-V2024IdentityAccessReviewItems**
> AccessReviewItem[] Get-V2024IdentityAccessReviewItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Entitlements] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessProfiles] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Roles] <String><br>

List of Access Review Items

This API returns a list of access review items for an identity campaign certification. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API. This API does not support requests for certifications assigned to Governance Groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The identity campaign certification ID
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "ef38f94347e94562b5bb8424a56397d8"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **type**: *eq*  **access.type**: *eq*  **completed**: *eq, ne*  **identitySummary.id**: *eq, in*  **identitySummary.name**: *eq, sw*  **access.id**: *eq, in*  **access.name**: *eq, sw*  **entitlement.sourceName**: *eq, sw*  **accessProfile.sourceName**: *eq, sw* (optional)
$Sorters = "access.name,-accessProfile.sourceName" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitySummary.name, access.name, access.type, entitlement.sourceName, accessProfile.sourceName** (optional)
$Entitlements = "identityEntitlement" # String | Filter results to view access review items that pertain to any of the specified comma-separated entitlement IDs.  An error will occur if this param is used with **access-profiles** or **roles** as only one of these query params can be used at a time. (optional)
$AccessProfiles = "accessProfile1" # String | Filter results to view access review items that pertain to any of the specified comma-separated access-profle IDs.  An error will occur if this param is used with **entitlements** or **roles** as only one of these query params can be used at a time. (optional)
$Roles = "userRole" # String | Filter results to view access review items that pertain to any of the specified comma-separated role IDs.  An error will occur if this param is used with **entitlements** or **access-profiles** as only one of these query params can be used at a time. (optional)

# List of Access Review Items
try {
    $Result = Get-V2024IdentityAccessReviewItems -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -Entitlements $Entitlements -AccessProfiles $AccessProfiles -Roles $Roles
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityAccessReviewItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity campaign certification ID | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **type**: *eq*  **access.type**: *eq*  **completed**: *eq, ne*  **identitySummary.id**: *eq, in*  **identitySummary.name**: *eq, sw*  **access.id**: *eq, in*  **access.name**: *eq, sw*  **entitlement.sourceName**: *eq, sw*  **accessProfile.sourceName**: *eq, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitySummary.name, access.name, access.type, entitlement.sourceName, accessProfile.sourceName** | [optional] 
 **Entitlements** | **String**| Filter results to view access review items that pertain to any of the specified comma-separated entitlement IDs.  An error will occur if this param is used with **access-profiles** or **roles** as only one of these query params can be used at a time. | [optional] 
 **AccessProfiles** | **String**| Filter results to view access review items that pertain to any of the specified comma-separated access-profle IDs.  An error will occur if this param is used with **entitlements** or **roles** as only one of these query params can be used at a time. | [optional] 
 **Roles** | **String**| Filter results to view access review items that pertain to any of the specified comma-separated role IDs.  An error will occur if this param is used with **entitlements** or **access-profiles** as only one of these query params can be used at a time. | [optional] 

### Return type

[**AccessReviewItem[]**](AccessReviewItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityCertifications"></a>
# **Get-V2024IdentityCertifications**
> IdentityCertificationDto[] Get-V2024IdentityCertifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewerIdentity] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Identity Campaign Certifications

Use this API to get a list of identity campaign certifications for the specified query parameters. Any authenticated token can call this API, but only certifications you are authorized to review will be returned. This API does not support requests for certifications assigned to governance groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReviewerIdentity = "me" # String | Reviewer's identity. *me* indicates the current user. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "ef38f94347e94562b5bb8424a56397d8"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **campaign.id**: *eq, in*  **phase**: *eq*  **completed**: *eq* (optional)
$Sorters = "name,due" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, due, signed** (optional)

# List Identity Campaign Certifications
try {
    $Result = Get-V2024IdentityCertifications -ReviewerIdentity $ReviewerIdentity -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityCertifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReviewerIdentity** | **String**| Reviewer&#39;s identity. *me* indicates the current user. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **campaign.id**: *eq, in*  **phase**: *eq*  **completed**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, due, signed** | [optional] 

### Return type

[**IdentityCertificationDto[]**](IdentityCertificationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Select-V2024IdentityDecision"></a>
# **Select-V2024IdentityDecision**
> IdentityCertificationDto Select-V2024IdentityDecision<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewDecision] <PSCustomObject[]><br>

Decide on a Certification Item

The API makes a decision to approve or revoke one or more identity campaign certification items. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API. This API does not support requests for certifications assigned to Governance Groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the identity campaign certification on which to make decisions
$ReviewRecommendation = Initialize-ReviewRecommendation -Recommendation "MyRecommendation" -Reasons "MyReasons" -Timestamp (Get-Date)
$ReviewDecision = Initialize-ReviewDecision -Id "ef38f94347e94562b5bb8424a56397d8" -Decision "APPROVE" -ProposedEndDate (Get-Date) -Bulk $true -Recommendation $ReviewRecommendation -Comments "This user no longer needs access to this source" # ReviewDecision[] | A non-empty array of decisions to be made.

# Decide on a Certification Item
try {
    $Result = Select-V2024IdentityDecision -Id $Id -ReviewDecision $ReviewDecision
} catch {
    Write-Host ("Exception occurred when calling Select-V2024IdentityDecision: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the identity campaign certification on which to make decisions | 
 **ReviewDecision** | [**ReviewDecision[]**](ReviewDecision.md)| A non-empty array of decisions to be made. | 

### Return type

[**IdentityCertificationDto**](IdentityCertificationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2024ReassignIdentityCertifications"></a>
# **Invoke-V2024ReassignIdentityCertifications**
> IdentityCertificationDto Invoke-V2024ReassignIdentityCertifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewReassign] <PSCustomObject><br>

Reassign Identities or Items

This API reassigns up to 50 identities or items in an identity campaign certification to another reviewer. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API. This API does not support requests for certifications assigned to Governance Groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The identity campaign certification ID
$ReassignReference = Initialize-ReassignReference -Id "ef38f94347e94562b5bb8424a56397d8" -Type "TARGET_SUMMARY"
$ReviewReassign = Initialize-ReviewReassign -Reassign $ReassignReference -ReassignTo "ef38f94347e94562b5bb8424a56397d8" -Reason "reassigned for some reason" # ReviewReassign | 

# Reassign Identities or Items
try {
    $Result = Invoke-V2024ReassignIdentityCertifications -Id $Id -ReviewReassign $ReviewReassign
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2024ReassignIdentityCertifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity campaign certification ID | 
 **ReviewReassign** | [**ReviewReassign**](ReviewReassign.md)|  | 

### Return type

[**IdentityCertificationDto**](IdentityCertificationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2024SignOffIdentityCertification"></a>
# **Invoke-V2024SignOffIdentityCertification**
> IdentityCertificationDto Invoke-V2024SignOffIdentityCertification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Finalize Identity Certification Decisions

This API finalizes all decisions made on an identity campaign certification and initiates any remediations required. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API. This API does not support requests for certifications assigned to Governance Groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The identity campaign certification ID

# Finalize Identity Certification Decisions
try {
    $Result = Invoke-V2024SignOffIdentityCertification -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2024SignOffIdentityCertification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity campaign certification ID | 

### Return type

[**IdentityCertificationDto**](IdentityCertificationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-V2024ReassignCertsAsync"></a>
# **Submit-V2024ReassignCertsAsync**
> CertificationTask Submit-V2024ReassignCertsAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewReassign] <PSCustomObject><br>

Reassign Certifications Asynchronously

This API initiates a task to reassign up to 500 identities or items in an identity campaign certification to another reviewer. The `certification-tasks` API can be used to get an updated status on the task and determine when the reassignment is complete.   A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API. Reviewers for this certification can also call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The identity campaign certification ID
$ReassignReference = Initialize-ReassignReference -Id "ef38f94347e94562b5bb8424a56397d8" -Type "TARGET_SUMMARY"
$ReviewReassign = Initialize-ReviewReassign -Reassign $ReassignReference -ReassignTo "ef38f94347e94562b5bb8424a56397d8" -Reason "reassigned for some reason" # ReviewReassign | 

# Reassign Certifications Asynchronously
try {
    $Result = Submit-V2024ReassignCertsAsync -Id $Id -ReviewReassign $ReviewReassign
} catch {
    Write-Host ("Exception occurred when calling Submit-V2024ReassignCertsAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity campaign certification ID | 
 **ReviewReassign** | [**ReviewReassign**](ReviewReassign.md)|  | 

### Return type

[**CertificationTask**](CertificationTask.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

