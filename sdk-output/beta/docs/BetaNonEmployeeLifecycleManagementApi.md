# PSSailpointBeta.PSSailpointBeta/Api.BetaNonEmployeeLifecycleManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#New-BetaSchemaAttribute) | **POST** /non-employee-sources/{sourceId}/schema-attributes | Create a new Schema Attribute for Non-Employee Source
[**Invoke-BetaDeleteSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaDeleteSchemaAttribute) | **DELETE** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Delete a Schema Attribute for Non-Employee Source
[**Invoke-BetaDeleteSchemaAttributes**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaDeleteSchemaAttributes) | **DELETE** /non-employee-sources/{sourceId}/schema-attributes | Delete all custom schema attributes for Non-Employee Source
[**Get-BetaSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaSchemaAttribute) | **GET** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Get Schema Attribute Non-Employee Source
[**Get-BetaSchemaAttributes**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaSchemaAttributes) | **GET** /non-employee-sources/{sourceId}/schema-attributes | List Schema Attributes Non-Employee Source
[**Invoke-BetaNonEmployeeApprovalGet**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeApprovalGet) | **GET** /non-employee-approvals/{id} | Get a non-employee approval item detail
[**Invoke-BetaNonEmployeeApprovalList**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeApprovalList) | **GET** /non-employee-approvals | Get List of Non-Employee Approval Requests
[**Invoke-BetaNonEmployeeApprovalSummary**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeApprovalSummary) | **GET** /non-employee-approvals/summary/{requested-for} | Get Summary of Non-Employee Approval Requests
[**Invoke-BetaNonEmployeeApproveRequest**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeApproveRequest) | **POST** /non-employee-approvals/{id}/approve | Approve a Non-Employee Request
[**Invoke-BetaNonEmployeeBulkUploadStatus**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeBulkUploadStatus) | **GET** /non-employee-sources/{id}/non-employee-bulk-upload/status | Obtain the status of bulk upload on the source
[**Invoke-BetaNonEmployeeExportSourceSchemaTemplate**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeExportSourceSchemaTemplate) | **GET** /non-employee-sources/{id}/schema-attributes-template/download | Exports Source Schema Template
[**Invoke-BetaNonEmployeeRecordBulkDelete**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordBulkDelete) | **POST** /non-employee-records/bulk-delete | Delete Multiple Non-Employee Records
[**Invoke-BetaNonEmployeeRecordCreation**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordCreation) | **POST** /non-employee-records | Create Non-Employee Record
[**Invoke-BetaNonEmployeeRecordDelete**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordDelete) | **DELETE** /non-employee-records/{id} | Delete Non-Employee Record
[**Invoke-BetaNonEmployeeRecordGet**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordGet) | **GET** /non-employee-records/{id} | Get a Non-Employee Record
[**Invoke-BetaNonEmployeeRecordList**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordList) | **GET** /non-employee-records | List Non-Employee Records
[**Invoke-BetaNonEmployeeRecordPatch**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordPatch) | **PATCH** /non-employee-records/{id} | Patch Non-Employee Record
[**Invoke-BetaNonEmployeeRecordUpdate**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordUpdate) | **PUT** /non-employee-records/{id} | Update Non-Employee Record
[**Invoke-BetaNonEmployeeRecordsBulkUpload**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordsBulkUpload) | **POST** /non-employee-sources/{id}/non-employee-bulk-upload | Imports, or Updates, Non-Employee Records
[**Invoke-BetaNonEmployeeRecordsExport**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRecordsExport) | **GET** /non-employee-sources/{id}/non-employees/download | Exports Non-Employee Records to CSV
[**Invoke-BetaNonEmployeeRejectRequest**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRejectRequest) | **POST** /non-employee-approvals/{id}/reject | Reject a Non-Employee Request
[**Invoke-BetaNonEmployeeRequestCreation**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRequestCreation) | **POST** /non-employee-requests | Create Non-Employee Request
[**Invoke-BetaNonEmployeeRequestDeletion**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRequestDeletion) | **DELETE** /non-employee-requests/{id} | Delete Non-Employee Request
[**Invoke-BetaNonEmployeeRequestGet**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRequestGet) | **GET** /non-employee-requests/{id} | Get a Non-Employee Request
[**Invoke-BetaNonEmployeeRequestList**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRequestList) | **GET** /non-employee-requests | List Non-Employee Requests
[**Invoke-BetaNonEmployeeRequestSummaryGet**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeRequestSummaryGet) | **GET** /non-employee-requests/summary/{requested-for} | Get Summary of Non-Employee Requests
[**Invoke-BetaNonEmployeeSourceDelete**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeSourceDelete) | **DELETE** /non-employee-sources/{sourceId} | Delete Non-Employee Source
[**Invoke-BetaNonEmployeeSourceGet**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeSourceGet) | **GET** /non-employee-sources/{sourceId} | Get a Non-Employee Source
[**Invoke-BetaNonEmployeeSourcePatch**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeSourcePatch) | **PATCH** /non-employee-sources/{sourceId} | Patch a Non-Employee Source
[**Invoke-BetaNonEmployeeSourcesCreation**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeSourcesCreation) | **POST** /non-employee-sources | Create Non-Employee Source
[**Invoke-BetaNonEmployeeSourcesList**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaNonEmployeeSourcesList) | **GET** /non-employee-sources | List Non-Employee Sources
[**Invoke-BetaPatchSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#Invoke-BetaPatchSchemaAttribute) | **PATCH** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Patch a Schema Attribute for Non-Employee Source


<a name="New-BetaSchemaAttribute"></a>
# **New-BetaSchemaAttribute**
> NonEmployeeSchemaAttribute New-BetaSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeSchemaAttributeBody] <PSCustomObject><br>

Create a new Schema Attribute for Non-Employee Source

This API creates a new schema attribute for Non-Employee Source. The schema technical name must be unique in the source. Attempts to create a schema attribute with an existing name will result in a ""400.1.409 Reference conflict"" response. At most, 10 custom attributes can be created per schema. Attempts to create more than 10 will result in a ""400.1.4 Limit violation"" response. Request requires a security scope of: 'idn:nesr:create'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "MySourceId" # String | The Source id
$NonEmployeeSchemaAttributeBody = Initialize-NonEmployeeSchemaAttributeBody -Type "TEXT" -Label "Account Name" -TechnicalName "account.name" -HelpText "The unique identifier for the account" -Placeholder "Enter a unique user name for this account." -Required $true # NonEmployeeSchemaAttributeBody | 

# Create a new Schema Attribute for Non-Employee Source
try {
    $Result = New-BetaSchemaAttribute -SourceId $SourceId -NonEmployeeSchemaAttributeBody $NonEmployeeSchemaAttributeBody
} catch {
    Write-Host ("Exception occurred when calling New-BetaSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaDeleteSchemaAttribute"></a>
# **Invoke-BetaDeleteSchemaAttribute**
> void Invoke-BetaDeleteSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete a Schema Attribute for Non-Employee Source

This end-point deletes a specific schema attribute for a non-employee source.  Request will require a security scope of:  'idn:nesr:delete' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AttributeId = "MyAttributeId" # String | The Schema Attribute Id (UUID)
$SourceId = "MySourceId" # String | The Source id

# Delete a Schema Attribute for Non-Employee Source
try {
    $Result = Invoke-BetaDeleteSchemaAttribute -AttributeId $AttributeId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaDeleteSchemaAttributes"></a>
# **Invoke-BetaDeleteSchemaAttributes**
> void Invoke-BetaDeleteSchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete all custom schema attributes for Non-Employee Source

This end-point deletes all custom schema attributes for a non-employee source. Request requires a security scope of: 'idn:nesr:delete'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "MySourceId" # String | The Source id

# Delete all custom schema attributes for Non-Employee Source
try {
    $Result = Invoke-BetaDeleteSchemaAttributes -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteSchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BetaSchemaAttribute"></a>
# **Get-BetaSchemaAttribute**
> NonEmployeeSchemaAttribute Get-BetaSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Get Schema Attribute Non-Employee Source

This API gets a schema attribute by Id for the specified Non-Employee SourceId.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AttributeId = "2c918085842e69ae018432d22ccb212f" # String | The Schema Attribute Id (UUID)
$SourceId = "2c918085842e69ae018432d22ccb212f" # String | The Source id

# Get Schema Attribute Non-Employee Source
try {
    $Result = Get-BetaSchemaAttribute -AttributeId $AttributeId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BetaSchemaAttributes"></a>
# **Get-BetaSchemaAttributes**
> NonEmployeeSchemaAttribute[] Get-BetaSchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

List Schema Attributes Non-Employee Source

This API gets the list of schema attributes for the specified Non-Employee SourceId. There are 8 mandatory attributes added to each new Non-Employee Source automatically. Additionaly, user can add up to 10 custom attributes. This interface returns all the mandatory attributes followed by any custom attributes. At most, a total of 18 attributes will be returned.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c918085842e69ae018432d22ccb212f" # String | The Source id

# List Schema Attributes Non-Employee Source
try {
    $Result = Get-BetaSchemaAttributes -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeApprovalGet"></a>
# **Invoke-BetaNonEmployeeApprovalGet**
> NonEmployeeApprovalItemDetail Invoke-BetaNonEmployeeApprovalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeDetail] <String><br>

Get a non-employee approval item detail

Approves a non-employee approval request and notifies the next approver.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | Non-Employee approval item id (UUID)
$IncludeDetail = "include-detail=false" # String | The object nonEmployeeRequest will not be included detail when set to false. *Default value is true* (optional)

# Get a non-employee approval item detail
try {
    $Result = Invoke-BetaNonEmployeeApprovalGet -Id $Id -IncludeDetail $IncludeDetail
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeApprovalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Non-Employee approval item id (UUID) | 
 **IncludeDetail** | **String**| The object nonEmployeeRequest will not be included detail when set to false. *Default value is true* | [optional] 

### Return type

[**NonEmployeeApprovalItemDetail**](NonEmployeeApprovalItemDetail.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaNonEmployeeApprovalList"></a>
# **Invoke-BetaNonEmployeeApprovalList**
> NonEmployeeApprovalItem[] Invoke-BetaNonEmployeeApprovalList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Get List of Non-Employee Approval Requests

This gets a list of non-employee approval requests.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | The identity for whom the request was made. *me* indicates the current user. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "filters=approvalStatus eq 'PENDING'" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators: **approvalStatus**: *eq*  *Example:* approvalStatus eq ""PENDING"" (optional)
$Sorters = "sorters=-created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **created, modified** (optional)

# Get List of Non-Employee Approval Requests
try {
    $Result = Invoke-BetaNonEmployeeApprovalList -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeApprovalList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators: **approvalStatus**: *eq*  *Example:* approvalStatus eq &quot;&quot;PENDING&quot;&quot; | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **created, modified** | [optional] 

### Return type

[**NonEmployeeApprovalItem[]**](NonEmployeeApprovalItem.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaNonEmployeeApprovalSummary"></a>
# **Invoke-BetaNonEmployeeApprovalSummary**
> NonEmployeeApprovalSummary Invoke-BetaNonEmployeeApprovalSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>

Get Summary of Non-Employee Approval Requests

This request will retrieve a summary of non-employee approval requests. There are two contextual uses for the `requested-for` path parameter: 1. The current user is the Org Admin, in which case he or she may request a summary of all non-employee approval requests assigned to a particular approver by passing in that approver's id. 2. The current user is an approver, in which case ""me"" should be provided as the `requested-for` value. This will provide the approver with a summary of the approval items assigned to him or her.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | The identity (UUID) of the approver for whom for whom the summary is being retrieved. Use ""me"" instead to indicate the current user.

# Get Summary of Non-Employee Approval Requests
try {
    $Result = Invoke-BetaNonEmployeeApprovalSummary -RequestedFor $RequestedFor
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeApprovalSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeApproveRequest"></a>
# **Invoke-BetaNonEmployeeApproveRequest**
> NonEmployeeApprovalItem Invoke-BetaNonEmployeeApproveRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeApprovalDecision] <PSCustomObject><br>

Approve a Non-Employee Request

Approves a non-employee approval request and notifies the next approver.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | Non-Employee approval item id (UUID)
$NonEmployeeApprovalDecision = Initialize-NonEmployeeApprovalDecision -Comment "MyComment" # NonEmployeeApprovalDecision | 

# Approve a Non-Employee Request
try {
    $Result = Invoke-BetaNonEmployeeApproveRequest -Id $Id -NonEmployeeApprovalDecision $NonEmployeeApprovalDecision
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeApproveRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeBulkUploadStatus"></a>
# **Invoke-BetaNonEmployeeBulkUploadStatus**
> NonEmployeeBulkUploadStatus Invoke-BetaNonEmployeeBulkUploadStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Obtain the status of bulk upload on the source

The nonEmployeeBulkUploadStatus API returns the status of the newest bulk upload job for the specified source.  Request will need the following scope:  'idn:nesr:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c918085842e69ae018432d22ccb212f" # String | Source ID (UUID)

# Obtain the status of bulk upload on the source
try {
    $Result = Invoke-BetaNonEmployeeBulkUploadStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeBulkUploadStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeExportSourceSchemaTemplate"></a>
# **Invoke-BetaNonEmployeeExportSourceSchemaTemplate**
> void Invoke-BetaNonEmployeeExportSourceSchemaTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Exports Source Schema Template

This requests a download for the Source Schema Template for a provided source. Request will require the following security scope: idn:nesr:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c918085842e69ae018432d22ccb212f" # String | Source Id (UUID)

# Exports Source Schema Template
try {
    $Result = Invoke-BetaNonEmployeeExportSourceSchemaTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeExportSourceSchemaTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordBulkDelete"></a>
# **Invoke-BetaNonEmployeeRecordBulkDelete**
> void Invoke-BetaNonEmployeeRecordBulkDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRecordBulkDeleteRequest] <PSCustomObject><br>

Delete Multiple Non-Employee Records

This request will delete multiple non-employee records based on the non-employee ids provided. Request will require the following scope: 'idn:nesr:delete'

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
    $Result = Invoke-BetaNonEmployeeRecordBulkDelete -NonEmployeeRecordBulkDeleteRequest $NonEmployeeRecordBulkDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordBulkDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordCreation"></a>
# **Invoke-BetaNonEmployeeRecordCreation**
> NonEmployeeRecord Invoke-BetaNonEmployeeRecordCreation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Create Non-Employee Record

This request will create a non-employee record. Request will require the following security scope: 'idn:nesr:create'

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
    $Result = Invoke-BetaNonEmployeeRecordCreation -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordCreation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordDelete"></a>
# **Invoke-BetaNonEmployeeRecordDelete**
> void Invoke-BetaNonEmployeeRecordDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Non-Employee Record

This request will delete a non-employee record. Request will require the following security scope: 'idn:nesr:delete'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | Non-Employee record id (UUID)

# Delete Non-Employee Record
try {
    $Result = Invoke-BetaNonEmployeeRecordDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordGet"></a>
# **Invoke-BetaNonEmployeeRecordGet**
> NonEmployeeRecord Invoke-BetaNonEmployeeRecordGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Non-Employee Record

This gets a non-employee record. Request will require the following scope: 'idn:nesr:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-Employee record id (UUID)

# Get a Non-Employee Record
try {
    $Result = Invoke-BetaNonEmployeeRecordGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordList"></a>
# **Invoke-BetaNonEmployeeRecordList**
> NonEmployeeRecord[] Invoke-BetaNonEmployeeRecordList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Non-Employee Records

This gets a list of non-employee records.

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
$Sorters = "accountName,sourceId" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **id, accountName, sourceId, manager, firstName, lastName, email, phone, startDate, endDate, created, modified** (optional)
$Filters = "sourceId eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq ""2c91808568c529c60168cca6f90c1313"" (optional)

# List Non-Employee Records
try {
    $Result = Invoke-BetaNonEmployeeRecordList -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **id, accountName, sourceId, manager, firstName, lastName, email, phone, startDate, endDate, created, modified** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq &quot;&quot;2c91808568c529c60168cca6f90c1313&quot;&quot; | [optional] 

### Return type

[**NonEmployeeRecord[]**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaNonEmployeeRecordPatch"></a>
# **Invoke-BetaNonEmployeeRecordPatch**
> NonEmployeeRecord Invoke-BetaNonEmployeeRecordPatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch Non-Employee Record

This request will patch a non-employee record.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | Non-employee record id (UUID)
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of non-employee update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields.

# Patch Non-Employee Record
try {
    $Result = Invoke-BetaNonEmployeeRecordPatch -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordPatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordUpdate"></a>
# **Invoke-BetaNonEmployeeRecordUpdate**
> NonEmployeeRecord Invoke-BetaNonEmployeeRecordUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Update Non-Employee Record

This request will update a non-employee record.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | Non-employee record id (UUID)
$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-employee record creation request body. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields.

# Update Non-Employee Record
try {
    $Result = Invoke-BetaNonEmployeeRecordUpdate -Id $Id -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordsBulkUpload"></a>
# **Invoke-BetaNonEmployeeRecordsBulkUpload**
> NonEmployeeBulkUploadJob Invoke-BetaNonEmployeeRecordsBulkUpload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <String><br>

Imports, or Updates, Non-Employee Records

This post will import, or update, Non-Employee records found in the CSV. Request will need the following security scope: 'idn:nesr:create'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | Source Id (UUID)
$Data = "MyData" # String | 

# Imports, or Updates, Non-Employee Records
try {
    $Result = Invoke-BetaNonEmployeeRecordsBulkUpload -Id $Id -Data $Data
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordsBulkUpload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRecordsExport"></a>
# **Invoke-BetaNonEmployeeRecordsExport**
> void Invoke-BetaNonEmployeeRecordsExport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Exports Non-Employee Records to CSV

This requests a CSV download for all non-employees from a provided source. Request will need the following security scope: 'idn:nesr:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c918085842e69ae018432d22ccb212f" # String | Source Id (UUID)

# Exports Non-Employee Records to CSV
try {
    $Result = Invoke-BetaNonEmployeeRecordsExport -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRecordsExport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRejectRequest"></a>
# **Invoke-BetaNonEmployeeRejectRequest**
> NonEmployeeApprovalItem Invoke-BetaNonEmployeeRejectRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRejectApprovalDecision] <PSCustomObject><br>

Reject a Non-Employee Request

This endpoint will reject an approval item request and notify user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | Non-Employee approval item id (UUID)
$NonEmployeeRejectApprovalDecision = Initialize-NonEmployeeRejectApprovalDecision -Comment "MyComment" # NonEmployeeRejectApprovalDecision | 

# Reject a Non-Employee Request
try {
    $Result = Invoke-BetaNonEmployeeRejectRequest -Id $Id -NonEmployeeRejectApprovalDecision $NonEmployeeRejectApprovalDecision
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRejectRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRequestCreation"></a>
# **Invoke-BetaNonEmployeeRequestCreation**
> NonEmployeeRequest Invoke-BetaNonEmployeeRequestCreation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Create Non-Employee Request

This request will create a non-employee request and notify the approver

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
    $Result = Invoke-BetaNonEmployeeRequestCreation -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRequestCreation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRequestDeletion"></a>
# **Invoke-BetaNonEmployeeRequestDeletion**
> void Invoke-BetaNonEmployeeRequestDeletion<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Non-Employee Request

This request will delete a non-employee request.   Request will require the following scope: 'idn:nesr:delete'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Non-Employee request id in the UUID format

# Delete Non-Employee Request
try {
    $Result = Invoke-BetaNonEmployeeRequestDeletion -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRequestDeletion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRequestGet"></a>
# **Invoke-BetaNonEmployeeRequestGet**
> NonEmployeeRequest Invoke-BetaNonEmployeeRequestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Non-Employee Request

This gets a non-employee request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-Employee request id (UUID)

# Get a Non-Employee Request
try {
    $Result = Invoke-BetaNonEmployeeRequestGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRequestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeRequestList"></a>
# **Invoke-BetaNonEmployeeRequestList**
> NonEmployeeRequest[] Invoke-BetaNonEmployeeRequestList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Non-Employee Requests

This gets a list of non-employee requests.

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
$Sorters = "approvalStatus,firstName" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **created, approvalStatus, firstName, lastName, email, phone, accountName, startDate, endDate** (optional)
$Filters = "sourceId eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq ""2c91808568c529c60168cca6f90c1313"" (optional)

# List Non-Employee Requests
try {
    $Result = Invoke-BetaNonEmployeeRequestList -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRequestList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **created, approvalStatus, firstName, lastName, email, phone, accountName, startDate, endDate** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators: **sourceId**: *eq*  *Example:* sourceId eq &quot;&quot;2c91808568c529c60168cca6f90c1313&quot;&quot; | [optional] 

### Return type

[**NonEmployeeRequest[]**](NonEmployeeRequest.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaNonEmployeeRequestSummaryGet"></a>
# **Invoke-BetaNonEmployeeRequestSummaryGet**
> NonEmployeeRequestSummary Invoke-BetaNonEmployeeRequestSummaryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>

Get Summary of Non-Employee Requests

This request will retrieve a summary of non-employee requests. There are two contextual uses for the `requested-for` path parameter: 1. The current user is the Org Admin, in which case he or she may request a summary of all non-employee approval requests assigned to a particular account manager by passing in that manager's id. 2. The current user is an account manager, in which case ""me"" should be provided as the `requested-for` value. This will provide the user with a summary of the non-employee requests in the source(s) he or she manages.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | The identity (UUID) of the non-employee account manager for whom the summary is being retrieved. Use ""me"" instead to indicate the current user.

# Get Summary of Non-Employee Requests
try {
    $Result = Invoke-BetaNonEmployeeRequestSummaryGet -RequestedFor $RequestedFor
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeRequestSummaryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeSourceDelete"></a>
# **Invoke-BetaNonEmployeeSourceDelete**
> void Invoke-BetaNonEmployeeSourceDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete Non-Employee Source

This request will delete a non-employee source. Request will require the following security scope: 'idn:nesr:delete'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "MySourceId" # String | Source Id

# Delete Non-Employee Source
try {
    $Result = Invoke-BetaNonEmployeeSourceDelete -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeSourceDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeSourceGet"></a>
# **Invoke-BetaNonEmployeeSourceGet**
> NonEmployeeSource Invoke-BetaNonEmployeeSourceGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Get a Non-Employee Source

This gets a non-employee source.

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
    $Result = Invoke-BetaNonEmployeeSourceGet -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeSourceGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeSourcePatch"></a>
# **Invoke-BetaNonEmployeeSourcePatch**
> NonEmployeeSource Invoke-BetaNonEmployeeSourcePatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a Non-Employee Source

patch a non-employee source. (Partial Update)  Patchable field: **name, description, approvers, accountManagers** Request will require the following security scope: 'idn:nesr:update'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "MySourceId" # String | Source Id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of non-employee source update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Patch a Non-Employee Source
try {
    $Result = Invoke-BetaNonEmployeeSourcePatch -SourceId $SourceId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeSourcePatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeSourcesCreation"></a>
# **Invoke-BetaNonEmployeeSourcesCreation**
> NonEmployeeSourceWithCloudExternalId Invoke-BetaNonEmployeeSourcesCreation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeSourceRequestBody] <PSCustomObject><br>

Create Non-Employee Source

This request will create a non-employee source. Request will require the following security scope: 'idn:nesr:create'

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
    $Result = Invoke-BetaNonEmployeeSourcesCreation -NonEmployeeSourceRequestBody $NonEmployeeSourceRequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeSourcesCreation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-BetaNonEmployeeSourcesList"></a>
# **Invoke-BetaNonEmployeeSourcesList**
> NonEmployeeSourceWithNECount[] Invoke-BetaNonEmployeeSourcesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeCount] <Boolean><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Non-Employee Sources

This gets a list of non-employee sources.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestedFor = "me" # String | The identity for whom the request was made. *me* indicates the current user.
$NonEmployeeCount = $false # Boolean | The flag to determine whether return a non-employee count associate with source.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "name,created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **name, created** (optional)

# List Non-Employee Sources
try {
    $Result = Invoke-BetaNonEmployeeSourcesList -RequestedFor $RequestedFor -NonEmployeeCount $NonEmployeeCount -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaNonEmployeeSourcesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestedFor** | **String**| The identity for whom the request was made. *me* indicates the current user. | 
 **NonEmployeeCount** | **Boolean**| The flag to determine whether return a non-employee count associate with source. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results) Sorting is supported for the following fields: **name, created** | [optional] 

### Return type

[**NonEmployeeSourceWithNECount[]**](NonEmployeeSourceWithNECount.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaPatchSchemaAttribute"></a>
# **Invoke-BetaPatchSchemaAttribute**
> NonEmployeeSchemaAttribute Invoke-BetaPatchSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a Schema Attribute for Non-Employee Source

This end-point patches a specific schema attribute for a non-employee SourceId.  Request will require a security scope of:  'idn:nesr:update' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AttributeId = "MyAttributeId" # String | The Schema Attribute Id (UUID)
$SourceId = "MySourceId" # String | The Source id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of schema attribute update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following properties are allowed for update ':' 'label', 'helpText', 'placeholder', 'required'.

# Patch a Schema Attribute for Non-Employee Source
try {
    $Result = Invoke-BetaPatchSchemaAttribute -AttributeId $AttributeId -SourceId $SourceId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaPatchSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

