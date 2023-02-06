# PSSailpoint.PSSailpoint/Api.NonEmployeeLifecycleManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SchemaAttribute**](NonEmployeeLifecycleManagementApi.md#New-SchemaAttribute) | **POST** /non-employee-sources/{sourceId}/schema-attributes | Create a new Schema Attribute for Non-Employee Source
[**Remove-SchemaAttribute**](NonEmployeeLifecycleManagementApi.md#Remove-SchemaAttribute) | **DELETE** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Delete a Schema Attribute for Non-Employee Source
[**Remove-SchemaAttributes**](NonEmployeeLifecycleManagementApi.md#Remove-SchemaAttributes) | **DELETE** /non-employee-sources/{sourceId}/schema-attributes | Delete all custom schema attributes for Non-Employee Source
[**Get-SchemaAttribute**](NonEmployeeLifecycleManagementApi.md#Get-SchemaAttribute) | **GET** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Get Schema Attribute Non-Employee Source
[**Get-SchemaAttributes**](NonEmployeeLifecycleManagementApi.md#Get-SchemaAttributes) | **GET** /non-employee-sources/{sourceId}/schema-attributes | List Schema Attributes Non-Employee Source
[**Invoke-NonEmployeeApprovalGet**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeApprovalGet) | **GET** /non-employee-approvals/{id} | Get a non-employee approval item detail
[**Invoke-NonEmployeeApprovalList**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeApprovalList) | **GET** /non-employee-approvals | Get List of Non-Employee Approval Requests
[**Invoke-NonEmployeeApprovalSummary**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeApprovalSummary) | **GET** /non-employee-approvals/summary/{requested-for} | Get Summary of Non-Employee Approval Requests
[**Invoke-NonEmployeeApproveRequest**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeApproveRequest) | **POST** /non-employee-approvals/{id}/approve | Approve a Non-Employee Request
[**Invoke-NonEmployeeBulkUploadStatus**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeBulkUploadStatus) | **GET** /non-employee-sources/{id}/non-employee-bulk-upload/status | Obtain the status of bulk upload on the source
[**Invoke-NonEmployeeExportSourceSchemaTemplate**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeExportSourceSchemaTemplate) | **GET** /non-employee-sources/{id}/schema-attributes-template/download | Exports Source Schema Template
[**Invoke-NonEmployeeRecordBulkDelete**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordBulkDelete) | **POST** /non-employee-records/bulk-delete | Delete Multiple Non-Employee Records
[**Invoke-NonEmployeeRecordCreation**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordCreation) | **POST** /non-employee-records | Create Non-Employee Record
[**Invoke-NonEmployeeRecordDelete**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordDelete) | **DELETE** /non-employee-records/{id} | Delete Non-Employee Record
[**Invoke-NonEmployeeRecordGet**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordGet) | **GET** /non-employee-records/{id} | Get a Non-Employee Record
[**Invoke-NonEmployeeRecordList**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordList) | **GET** /non-employee-records | List Non-Employee Records
[**Invoke-NonEmployeeRecordPatch**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordPatch) | **PATCH** /non-employee-records/{id} | Patch Non-Employee Record
[**Invoke-NonEmployeeRecordUpdate**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordUpdate) | **PUT** /non-employee-records/{id} | Update Non-Employee Record
[**Invoke-NonEmployeeRecordsBulkUpload**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordsBulkUpload) | **POST** /non-employee-sources/{id}/non-employee-bulk-upload | Imports, or Updates, Non-Employee Records
[**Invoke-NonEmployeeRecordsExport**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRecordsExport) | **GET** /non-employee-sources/{id}/non-employees/download | Exports Non-Employee Records to CSV
[**Invoke-NonEmployeeRejectRequest**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRejectRequest) | **POST** /non-employee-approvals/{id}/reject | Reject a Non-Employee Request
[**Invoke-NonEmployeeRequestCreation**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRequestCreation) | **POST** /non-employee-requests | Create Non-Employee Request
[**Invoke-NonEmployeeRequestDeletion**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRequestDeletion) | **DELETE** /non-employee-requests/{id} | Delete Non-Employee Request
[**Invoke-NonEmployeeRequestGet**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRequestGet) | **GET** /non-employee-requests/{id} | Get a Non-Employee Request
[**Invoke-NonEmployeeRequestList**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRequestList) | **GET** /non-employee-requests | List Non-Employee Requests
[**Invoke-NonEmployeeRequestSummaryGet**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeRequestSummaryGet) | **GET** /non-employee-requests/summary/{requested-for} | Get Summary of Non-Employee Requests
[**Invoke-NonEmployeeSourceDelete**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeSourceDelete) | **DELETE** /non-employee-sources/{sourceId} | Delete Non-Employee Source
[**Invoke-NonEmployeeSourceGet**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeSourceGet) | **GET** /non-employee-sources/{sourceId} | Get a Non-Employee Source
[**Invoke-NonEmployeeSourcePatch**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeSourcePatch) | **PATCH** /non-employee-sources/{sourceId} | Patch a Non-Employee Source
[**Invoke-NonEmployeeSourcesCreation**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeSourcesCreation) | **POST** /non-employee-sources | Create Non-Employee Source
[**Invoke-NonEmployeeSourcesList**](NonEmployeeLifecycleManagementApi.md#Invoke-NonEmployeeSourcesList) | **GET** /non-employee-sources | List Non-Employee Sources
[**Update-SchemaAttribute**](NonEmployeeLifecycleManagementApi.md#Update-SchemaAttribute) | **PATCH** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Patch a Schema Attribute for Non-Employee Source


<a name="New-SchemaAttribute"></a>
# **New-SchemaAttribute**
> NonEmployeeSchemaAttribute New-SchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeSchemaAttributeBody] <PSCustomObject><br>

Create a new Schema Attribute for Non-Employee Source

This API creates a new schema attribute for Non-Employee Source. The schema technical name must be unique in the source. Attempts to create a schema attribute with an existing name will result in a ""400.1.409 Reference conflict"" response. At most, 10 custom attributes can be created per schema. Attempts to create more than 10 will result in a ""400.1.4 Limit violation"" response. Requires role context of `idn:nesr:create`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "ef38f94347e94562b5bb8424a56397d8" # String | The Source id
$NonEmployeeSchemaAttributeBody = Initialize-NonEmployeeSchemaAttributeBody -Type "TEXT" -Label "Account Name" -TechnicalName "account.name" -HelpText "The unique identifier for the account" -Placeholder "Enter a unique user name for this account." -Required $true # NonEmployeeSchemaAttributeBody | 

# Create a new Schema Attribute for Non-Employee Source
try {
    $Result = New-SchemaAttribute -SourceId $SourceId -NonEmployeeSchemaAttributeBody $NonEmployeeSchemaAttributeBody
} catch {
    Write-Host ("Exception occurred when calling New-SchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id | 
 **NonEmployeeSchemaAttributeBody** | [**NonEmployeeSchemaAttributeBody**](NonEmployeeSchemaAttributeBody.md)|  | 

### Return type

[**NonEmployeeSchemaAttribute**](NonEmployeeSchemaAttribute.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-SchemaAttribute"></a>
# **Remove-SchemaAttribute**
> void Remove-SchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete a Schema Attribute for Non-Employee Source

This end-point deletes a specific schema attribute for a non-employee source. Requires role context of `idn:nesr:delete` 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AttributeId = "ef38f94347e94562b5bb8424a56397d8" # String | The Schema Attribute Id (UUID)
$SourceId = "ef38f94347e94562b5bb8424a56397d8" # String | The Source id

# Delete a Schema Attribute for Non-Employee Source
try {
    $Result = Remove-SchemaAttribute -AttributeId $AttributeId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Remove-SchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttributeId** | **String**| The Schema Attribute Id (UUID) | 
 **SourceId** | **String**| The Source id | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-SchemaAttributes"></a>
# **Remove-SchemaAttributes**
> void Remove-SchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete all custom schema attributes for Non-Employee Source

This end-point deletes all custom schema attributes for a non-employee source. Requires role context of `idn:nesr:delete`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "ef38f94347e94562b5bb8424a56397d8" # String | The Source id

# Delete all custom schema attributes for Non-Employee Source
try {
    $Result = Remove-SchemaAttributes -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Remove-SchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SchemaAttribute"></a>
# **Get-SchemaAttribute**
> NonEmployeeSchemaAttribute Get-SchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Get Schema Attribute Non-Employee Source

This API gets a schema attribute by Id for the specified Non-Employee SourceId. Requires role context of `idn:nesr:read` or the user must be an account manager of the source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AttributeId = "ef38f94347e94562b5bb8424a56397d8" # String | The Schema Attribute Id (UUID)
$SourceId = "ef38f94347e94562b5bb8424a56397d8" # String | The Source id

# Get Schema Attribute Non-Employee Source
try {
    $Result = Get-SchemaAttribute -AttributeId $AttributeId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-SchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttributeId** | **String**| The Schema Attribute Id (UUID) | 
 **SourceId** | **String**| The Source id | 

### Return type

[**NonEmployeeSchemaAttribute**](NonEmployeeSchemaAttribute.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SchemaAttributes"></a>
# **Get-SchemaAttributes**
> NonEmployeeSchemaAttribute[] Get-SchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

List Schema Attributes Non-Employee Source

This API gets the list of schema attributes for the specified Non-Employee SourceId. There are 8 mandatory attributes added to each new Non-Employee Source automatically. Additionaly, user can add up to 10 custom attributes. This interface returns all the mandatory attributes followed by any custom attributes. At most, a total of 18 attributes will be returned. Requires role context of `idn:nesr:read` or the user must be an account manager of the source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "ef38f94347e94562b5bb8424a56397d8" # String | The Source id

# List Schema Attributes Non-Employee Source
try {
    $Result = Get-SchemaAttributes -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-SchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id | 

### Return type

[**NonEmployeeSchemaAttribute[]**](NonEmployeeSchemaAttribute.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeApprovalGet"></a>
# **Invoke-NonEmployeeApprovalGet**
> NonEmployeeApprovalItemDetail Invoke-NonEmployeeApprovalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeDetail] <System.Nullable[Boolean]><br>

Get a non-employee approval item detail

Gets a non-employee approval item detail. There are two contextual uses for this endpoint:   1. The user has the role context of `idn:nesr:read`, in which case they can get any approval.   2. The user owns the requested approval.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Non-Employee approval item id (UUID)
$IncludeDetail = $true # Boolean | The object nonEmployeeRequest will not be included detail when set to false. *Default value is true* (optional)

# Get a non-employee approval item detail
try {
    $Result = Invoke-NonEmployeeApprovalGet -Id $Id -IncludeDetail $IncludeDetail
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeApprovalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee approval item id (UUID) | 
 **IncludeDetail** | **Boolean**| The object nonEmployeeRequest will not be included detail when set to false. *Default value is true* | [optional] 

### Return type

[**NonEmployeeApprovalItemDetail**](NonEmployeeApprovalItemDetail.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeApprovalList"></a>
# **Invoke-NonEmployeeApprovalList**
> NonEmployeeApprovalItem[] Invoke-NonEmployeeApprovalList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Get List of Non-Employee Approval Requests

This gets a list of non-employee approval requests. There are two contextual uses for this endpoint:   1. The user has the role context of `idn:nesr:read`, in which case they can list the approvals for any approver.   2. The user owns the requested approval.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "2c91808280430dfb0180431a59440460" # String | The identity for whom the request was made. *me* indicates the current user. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "approvalStatus eq "Pending"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407) Filtering is supported for the following fields and operators: **approvalStatus**: *eq*  *Example:* approvalStatus eq ""PENDING"" (optional)
$Sorters = "created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **created, modified** (optional)

# Get List of Non-Employee Approval Requests
try {
    $Result = Invoke-NonEmployeeApprovalList -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeApprovalList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| The identity for whom the request was made. *me* indicates the current user. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407) Filtering is supported for the following fields and operators: **approvalStatus**: *eq*  *Example:* approvalStatus eq &quot;&quot;PENDING&quot;&quot; | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **created, modified** | [optional] 

### Return type

[**NonEmployeeApprovalItem[]**](NonEmployeeApprovalItem.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeApprovalSummary"></a>
# **Invoke-NonEmployeeApprovalSummary**
> NonEmployeeApprovalSummary Invoke-NonEmployeeApprovalSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>

Get Summary of Non-Employee Approval Requests

This request will retrieve a summary of non-employee approval requests. There are two contextual uses for the `requested-for` path parameter:   1. The user has the role context of `idn:nesr:read`, in which case he or she may request a summary of all non-employee approval requests assigned to a particular approver by passing in that approver's id.   2. The current user is an approver, in which case ""me"" should be provided as the `requested-for` value. This will provide the approver with a summary of the approval items assigned to him or her.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "2c91808280430dfb0180431a59440460" # String | The identity (UUID) of the approver for whom for whom the summary is being retrieved. Use ""me"" instead to indicate the current user.

# Get Summary of Non-Employee Approval Requests
try {
    $Result = Invoke-NonEmployeeApprovalSummary -RequestedFor $RequestedFor
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeApprovalSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| The identity (UUID) of the approver for whom for whom the summary is being retrieved. Use &quot;&quot;me&quot;&quot; instead to indicate the current user. | 

### Return type

[**NonEmployeeApprovalSummary**](NonEmployeeApprovalSummary.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeApproveRequest"></a>
# **Invoke-NonEmployeeApproveRequest**
> NonEmployeeApprovalItem Invoke-NonEmployeeApproveRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeApprovalDecision] <PSCustomObject><br>

Approve a Non-Employee Request

Approves a non-employee approval request and notifies the next approver. The current user must be the requested approver.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Non-Employee approval item id (UUID)
$NonEmployeeApprovalDecision = Initialize-NonEmployeeApprovalDecision -Comment "Approved by manager" # NonEmployeeApprovalDecision | 

# Approve a Non-Employee Request
try {
    $Result = Invoke-NonEmployeeApproveRequest -Id $Id -NonEmployeeApprovalDecision $NonEmployeeApprovalDecision
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeApproveRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee approval item id (UUID) | 
 **NonEmployeeApprovalDecision** | [**NonEmployeeApprovalDecision**](NonEmployeeApprovalDecision.md)|  | 

### Return type

[**NonEmployeeApprovalItem**](NonEmployeeApprovalItem.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeBulkUploadStatus"></a>
# **Invoke-NonEmployeeBulkUploadStatus**
> NonEmployeeBulkUploadStatus Invoke-NonEmployeeBulkUploadStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Obtain the status of bulk upload on the source

The nonEmployeeBulkUploadStatus API returns the status of the newest bulk upload job for the specified source. Requires role context of `idn:nesr:read` 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Source ID (UUID)

# Obtain the status of bulk upload on the source
try {
    $Result = Invoke-NonEmployeeBulkUploadStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeBulkUploadStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source ID (UUID) | 

### Return type

[**NonEmployeeBulkUploadStatus**](NonEmployeeBulkUploadStatus.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeExportSourceSchemaTemplate"></a>
# **Invoke-NonEmployeeExportSourceSchemaTemplate**
> void Invoke-NonEmployeeExportSourceSchemaTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Exports Source Schema Template

This requests a download for the Source Schema Template for a provided source. Requires role context of `idn:nesr:read`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Source Id (UUID)

# Exports Source Schema Template
try {
    $Result = Invoke-NonEmployeeExportSourceSchemaTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeExportSourceSchemaTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id (UUID) | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordBulkDelete"></a>
# **Invoke-NonEmployeeRecordBulkDelete**
> void Invoke-NonEmployeeRecordBulkDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRecordBulkDeleteRequest] <PSCustomObject><br>

Delete Multiple Non-Employee Records

This request will delete multiple non-employee records based on the non-employee ids provided. Requires role context of `idn:nesr:delete`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$NonEmployeeRecordBulkDeleteRequest = Initialize-NonEmployeeRecordBulkDeleteRequest -Ids "MyIds" # NonEmployeeRecordBulkDeleteRequest | Non-Employee bulk delete request body.

# Delete Multiple Non-Employee Records
try {
    $Result = Invoke-NonEmployeeRecordBulkDelete -NonEmployeeRecordBulkDeleteRequest $NonEmployeeRecordBulkDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordBulkDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NonEmployeeRecordBulkDeleteRequest** | [**NonEmployeeRecordBulkDeleteRequest**](NonEmployeeRecordBulkDeleteRequest.md)| Non-Employee bulk delete request body. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordCreation"></a>
# **Invoke-NonEmployeeRecordCreation**
> NonEmployeeRecord Invoke-NonEmployeeRecordCreation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Create Non-Employee Record

This request will create a non-employee record. Requires role context of `idn:nesr:create`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-Employee record creation request body.

# Create Non-Employee Record
try {
    $Result = Invoke-NonEmployeeRecordCreation -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordCreation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NonEmployeeRequestBody** | [**NonEmployeeRequestBody**](NonEmployeeRequestBody.md)| Non-Employee record creation request body. | 

### Return type

[**NonEmployeeRecord**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordDelete"></a>
# **Invoke-NonEmployeeRecordDelete**
> void Invoke-NonEmployeeRecordDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Non-Employee Record

This request will delete a non-employee record. Requires role context of `idn:nesr:delete`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-Employee record id (UUID)

# Delete Non-Employee Record
try {
    $Result = Invoke-NonEmployeeRecordDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee record id (UUID) | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordGet"></a>
# **Invoke-NonEmployeeRecordGet**
> NonEmployeeRecord Invoke-NonEmployeeRecordGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Non-Employee Record

This gets a non-employee record. Requires role context of `idn:nesr:read`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-Employee record id (UUID)

# Get a Non-Employee Record
try {
    $Result = Invoke-NonEmployeeRecordGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee record id (UUID) | 

### Return type

[**NonEmployeeRecord**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordList"></a>
# **Invoke-NonEmployeeRecordList**
> NonEmployeeRecord[] Invoke-NonEmployeeRecordList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Non-Employee Records

This gets a list of non-employee records. There are two contextual uses for this endpoint:   1. The user has the role context of `idn:nesr:read`, in which case they can get a list of all of the non-employees.   2. The user is an account manager, in which case they can get a list of the non-employees that they manage.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "accountName,sourceId" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **id, accountName, sourceId, manager, firstName, lastName, email, phone, startDate, endDate, created, modified** (optional)
$Filters = "sourceId eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq ""2c91808568c529c60168cca6f90c1313"" (optional)

# List Non-Employee Records
try {
    $Result = Invoke-NonEmployeeRecordList -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **id, accountName, sourceId, manager, firstName, lastName, email, phone, startDate, endDate, created, modified** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq &quot;&quot;2c91808568c529c60168cca6f90c1313&quot;&quot; | [optional] 

### Return type

[**NonEmployeeRecord[]**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordPatch"></a>
# **Invoke-NonEmployeeRecordPatch**
> NonEmployeeRecord Invoke-NonEmployeeRecordPatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch Non-Employee Record

This request will patch a non-employee record. There are two contextual uses for this endpoint:   1. The user has the role context of `idn:nesr:update`, in which case they update all available fields.   2. The user is owner of the source, in this case they can only update the end date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-employee record id (UUID)
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of non-employee update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields.

# Patch Non-Employee Record
try {
    $Result = Invoke-NonEmployeeRecordPatch -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordPatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-employee record id (UUID) | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of non-employee update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields. | 

### Return type

[**NonEmployeeRecord**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordUpdate"></a>
# **Invoke-NonEmployeeRecordUpdate**
> NonEmployeeRecord Invoke-NonEmployeeRecordUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Update Non-Employee Record

This request will update a non-employee record. There are two contextual uses for this endpoint:   1. The user has the role context of `idn:nesr:update`, in which case they update all available fields.   2. The user is owner of the source, in this case they can only update the end date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-employee record id (UUID)
$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-employee record creation request body. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields.

# Update Non-Employee Record
try {
    $Result = Invoke-NonEmployeeRecordUpdate -Id $Id -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-employee record id (UUID) | 
 **NonEmployeeRequestBody** | [**NonEmployeeRequestBody**](NonEmployeeRequestBody.md)| Non-employee record creation request body. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields. | 

### Return type

[**NonEmployeeRecord**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordsBulkUpload"></a>
# **Invoke-NonEmployeeRecordsBulkUpload**
> NonEmployeeBulkUploadJob Invoke-NonEmployeeRecordsBulkUpload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <String><br>

Imports, or Updates, Non-Employee Records

This post will import, or update, Non-Employee records found in the CSV. Requires role context of `idn:nesr:create`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Source Id (UUID)
$Data = "MyData" # String | 

# Imports, or Updates, Non-Employee Records
try {
    $Result = Invoke-NonEmployeeRecordsBulkUpload -Id $Id -Data $Data
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordsBulkUpload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id (UUID) | 
 **Data** | **String**|  | 

### Return type

[**NonEmployeeBulkUploadJob**](NonEmployeeBulkUploadJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRecordsExport"></a>
# **Invoke-NonEmployeeRecordsExport**
> void Invoke-NonEmployeeRecordsExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Exports Non-Employee Records to CSV

This requests a CSV download for all non-employees from a provided source. Requires role context of `idn:nesr:read`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Source Id (UUID)

# Exports Non-Employee Records to CSV
try {
    $Result = Invoke-NonEmployeeRecordsExport -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRecordsExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id (UUID) | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRejectRequest"></a>
# **Invoke-NonEmployeeRejectRequest**
> NonEmployeeApprovalItem Invoke-NonEmployeeRejectRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRejectApprovalDecision] <PSCustomObject><br>

Reject a Non-Employee Request

This endpoint will reject an approval item request and notify user. The current user must be the requested approver.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Non-Employee approval item id (UUID)
$NonEmployeeRejectApprovalDecision = Initialize-NonEmployeeRejectApprovalDecision -Comment "approved" # NonEmployeeRejectApprovalDecision | 

# Reject a Non-Employee Request
try {
    $Result = Invoke-NonEmployeeRejectRequest -Id $Id -NonEmployeeRejectApprovalDecision $NonEmployeeRejectApprovalDecision
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRejectRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee approval item id (UUID) | 
 **NonEmployeeRejectApprovalDecision** | [**NonEmployeeRejectApprovalDecision**](NonEmployeeRejectApprovalDecision.md)|  | 

### Return type

[**NonEmployeeApprovalItem**](NonEmployeeApprovalItem.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRequestCreation"></a>
# **Invoke-NonEmployeeRequestCreation**
> NonEmployeeRequest Invoke-NonEmployeeRequestCreation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Create Non-Employee Request

This request will create a non-employee request and notify the approver. Requires role context of `idn:nesr:create` or the user must own the source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-Employee creation request body

# Create Non-Employee Request
try {
    $Result = Invoke-NonEmployeeRequestCreation -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRequestCreation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NonEmployeeRequestBody** | [**NonEmployeeRequestBody**](NonEmployeeRequestBody.md)| Non-Employee creation request body | 

### Return type

[**NonEmployeeRequest**](NonEmployeeRequest.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRequestDeletion"></a>
# **Invoke-NonEmployeeRequestDeletion**
> void Invoke-NonEmployeeRequestDeletion<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Non-Employee Request

This request will delete a non-employee request.  Requires role context of `idn:nesr:delete`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ac110005-7156-1150-8171-5b292e3e0084" # String | Non-Employee request id in the UUID format

# Delete Non-Employee Request
try {
    $Result = Invoke-NonEmployeeRequestDeletion -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRequestDeletion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee request id in the UUID format | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRequestGet"></a>
# **Invoke-NonEmployeeRequestGet**
> NonEmployeeRequest Invoke-NonEmployeeRequestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Non-Employee Request

This gets a non-employee request. There are two contextual uses for this endpoint:   1. The user has the role context of `idn:nesr:read`, in this case the user can get the non-employee request for any user.   2. The user must be the owner of the non-employee request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ac110005-7156-1150-8171-5b292e3e0084" # String | Non-Employee request id (UUID)

# Get a Non-Employee Request
try {
    $Result = Invoke-NonEmployeeRequestGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRequestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee request id (UUID) | 

### Return type

[**NonEmployeeRequest**](NonEmployeeRequest.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRequestList"></a>
# **Invoke-NonEmployeeRequestList**
> NonEmployeeRequest[] Invoke-NonEmployeeRequestList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Non-Employee Requests

This gets a list of non-employee requests. There are two contextual uses for the `requested-for` path parameter:   1. The user has the role context of `idn:nesr:read`, in which case he or she may request a list non-employee requests assigned to a particular account manager by passing in that manager's id.   2. The current user is an account manager, in which case ""me"" should be provided as the `requested-for` value. This will provide the user with a list of the non-employee requests in the source(s) he or she manages.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "e136567de87e4d029e60b3c3c55db56d" # String | The identity for whom the request was made. *me* indicates the current user.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "created,approvalStatus" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **created, approvalStatus, firstName, lastName, email, phone, accountName, startDate, endDate** (optional)
$Filters = "sourceId eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq ""2c91808568c529c60168cca6f90c1313"" (optional)

# List Non-Employee Requests
try {
    $Result = Invoke-NonEmployeeRequestList -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRequestList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| The identity for whom the request was made. *me* indicates the current user. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **created, approvalStatus, firstName, lastName, email, phone, accountName, startDate, endDate** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq &quot;&quot;2c91808568c529c60168cca6f90c1313&quot;&quot; | [optional] 

### Return type

[**NonEmployeeRequest[]**](NonEmployeeRequest.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeRequestSummaryGet"></a>
# **Invoke-NonEmployeeRequestSummaryGet**
> NonEmployeeRequestSummary Invoke-NonEmployeeRequestSummaryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>

Get Summary of Non-Employee Requests

This request will retrieve a summary of non-employee requests. There are two contextual uses for the `requested-for` path parameter:   1. The user has the role context of `idn:nesr:read`, in which case he or she may request a summary of all non-employee approval requests assigned to a particular account manager by passing in that manager's id.   2. The current user is an account manager, in which case ""me"" should be provided as the `requested-for` value. This will provide the user with a summary of the non-employee requests in the source(s) he or she manages.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "2c91808280430dfb0180431a59440460" # String | The identity (UUID) of the non-employee account manager for whom the summary is being retrieved. Use ""me"" instead to indicate the current user.

# Get Summary of Non-Employee Requests
try {
    $Result = Invoke-NonEmployeeRequestSummaryGet -RequestedFor $RequestedFor
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeRequestSummaryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| The identity (UUID) of the non-employee account manager for whom the summary is being retrieved. Use &quot;&quot;me&quot;&quot; instead to indicate the current user. | 

### Return type

[**NonEmployeeRequestSummary**](NonEmployeeRequestSummary.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeSourceDelete"></a>
# **Invoke-NonEmployeeSourceDelete**
> void Invoke-NonEmployeeSourceDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete Non-Employee Source

This request will delete a non-employee source. Requires role context of `idn:nesr:delete`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "e136567de87e4d029e60b3c3c55db56d" # String | Source Id

# Delete Non-Employee Source
try {
    $Result = Invoke-NonEmployeeSourceDelete -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeSourceDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source Id | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeSourceGet"></a>
# **Invoke-NonEmployeeSourceGet**
> NonEmployeeSource Invoke-NonEmployeeSourceGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Get a Non-Employee Source

This gets a non-employee source. There are two contextual uses for the requested-for path parameter:    1. The user has the role context of `idn:nesr:read`, in which case he or she may request any source.   2. The current user is an account manager, in which case the user can only request sources that they own.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c91808b7c28b350017c2a2ec5790aa1" # String | Source Id

# Get a Non-Employee Source
try {
    $Result = Invoke-NonEmployeeSourceGet -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeSourceGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source Id | 

### Return type

[**NonEmployeeSource**](NonEmployeeSource.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeSourcePatch"></a>
# **Invoke-NonEmployeeSourcePatch**
> NonEmployeeSource Invoke-NonEmployeeSourcePatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a Non-Employee Source

patch a non-employee source. (partial update) <br/> Patchable field: **name, description, approvers, accountManagers** Requires role context of `idn:nesr:update`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "e136567de87e4d029e60b3c3c55db56d" # String | Source Id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of non-employee source update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Patch a Non-Employee Source
try {
    $Result = Invoke-NonEmployeeSourcePatch -SourceId $SourceId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeSourcePatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source Id | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of non-employee source update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. | 

### Return type

[**NonEmployeeSource**](NonEmployeeSource.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeSourcesCreation"></a>
# **Invoke-NonEmployeeSourcesCreation**
> NonEmployeeSourceWithCloudExternalId Invoke-NonEmployeeSourcesCreation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeSourceRequestBody] <PSCustomObject><br>

Create Non-Employee Source

This request will create a non-employee source. Requires role context of `idn:nesr:create`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$NonEmployeeIdnUserRequest = Initialize-NonEmployeeIdnUserRequest -Id "2c91808570313110017040b06f344ec9"
$NonEmployeeSourceRequestBody = Initialize-NonEmployeeSourceRequestBody -Name "Retail" -Description "Source description" -Owner $NonEmployeeIdnUserRequest -ManagementWorkgroup "123299" -Approvers $NonEmployeeIdnUserRequest -AccountManagers $NonEmployeeIdnUserRequest # NonEmployeeSourceRequestBody | Non-Employee source creation request body.

# Create Non-Employee Source
try {
    $Result = Invoke-NonEmployeeSourcesCreation -NonEmployeeSourceRequestBody $NonEmployeeSourceRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeSourcesCreation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **NonEmployeeSourceRequestBody** | [**NonEmployeeSourceRequestBody**](NonEmployeeSourceRequestBody.md)| Non-Employee source creation request body. | 

### Return type

[**NonEmployeeSourceWithCloudExternalId**](NonEmployeeSourceWithCloudExternalId.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-NonEmployeeSourcesList"></a>
# **Invoke-NonEmployeeSourcesList**
> NonEmployeeSourceWithNECount[] Invoke-NonEmployeeSourcesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Non-Employee Sources

This gets a list of non-employee sources. There are two contextual uses for the requested-for path parameter:    1. The user has the role context of `idn:nesr:read`, in which case he or she may request a list sources assigned to a particular account manager by passing in that manager's id.   2. The current user is an account manager, in which case ""me"" should be provided as the `requested-for` value. This will provide the user with a list of the sources that he or she owns.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "me" # String | The identity for whom the request was made. *me* indicates the current user.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$NonEmployeeCount = $true # Boolean | The flag to determine whether return a non-employee count associate with source. (optional)
$Sorters = "name,created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **name, created** (optional)

# List Non-Employee Sources
try {
    $Result = Invoke-NonEmployeeSourcesList -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -NonEmployeeCount $NonEmployeeCount -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Invoke-NonEmployeeSourcesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| The identity for whom the request was made. *me* indicates the current user. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **NonEmployeeCount** | **Boolean**| The flag to determine whether return a non-employee count associate with source. | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407#toc-hId-2058949) Sorting is supported for the following fields: **name, created** | [optional] 

### Return type

[**NonEmployeeSourceWithNECount[]**](NonEmployeeSourceWithNECount.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-SchemaAttribute"></a>
# **Update-SchemaAttribute**
> NonEmployeeSchemaAttribute Update-SchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a Schema Attribute for Non-Employee Source

This end-point patches a specific schema attribute for a non-employee SourceId. Requires role context of `idn:nesr:update` 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AttributeId = "ef38f94347e94562b5bb8424a56397d8" # String | The Schema Attribute Id (UUID)
$SourceId = "ef38f94347e94562b5bb8424a56397d8" # String | The Source id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of schema attribute update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following properties are allowed for update ':' 'label', 'helpText', 'placeholder', 'required'.

# Patch a Schema Attribute for Non-Employee Source
try {
    $Result = Update-SchemaAttribute -AttributeId $AttributeId -SourceId $SourceId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-SchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttributeId** | **String**| The Schema Attribute Id (UUID) | 
 **SourceId** | **String**| The Source id | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of schema attribute update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following properties are allowed for update &#39;:&#39; &#39;label&#39;, &#39;helpText&#39;, &#39;placeholder&#39;, &#39;required&#39;. | 

### Return type

[**NonEmployeeSchemaAttribute**](NonEmployeeSchemaAttribute.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

