# PSSailpointBeta.PSSailpointBeta/Api.BetaNonEmployeeLifecycleManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Approve-BetaNonEmployeeRequest**](BetaNonEmployeeLifecycleManagementApi.md#Approve-BetaNonEmployeeRequest) | **POST** /non-employee-approvals/{id}/approve | Approve a Non-Employee Request
[**New-BetaNonEmployeeRecord**](BetaNonEmployeeLifecycleManagementApi.md#New-BetaNonEmployeeRecord) | **POST** /non-employee-records | Create Non-Employee Record
[**New-BetaNonEmployeeRequest**](BetaNonEmployeeLifecycleManagementApi.md#New-BetaNonEmployeeRequest) | **POST** /non-employee-requests | Create Non-Employee Request
[**New-BetaNonEmployeeSource**](BetaNonEmployeeLifecycleManagementApi.md#New-BetaNonEmployeeSource) | **POST** /non-employee-sources | Create Non-Employee Source
[**New-BetaNonEmployeeSourceSchemaAttributes**](BetaNonEmployeeLifecycleManagementApi.md#New-BetaNonEmployeeSourceSchemaAttributes) | **POST** /non-employee-sources/{sourceId}/schema-attributes | Create Non-Employee Source Schema Attribute
[**Remove-BetaNonEmployeeRecord**](BetaNonEmployeeLifecycleManagementApi.md#Remove-BetaNonEmployeeRecord) | **DELETE** /non-employee-records/{id} | Delete Non-Employee Record
[**Remove-BetaNonEmployeeRecordInBulk**](BetaNonEmployeeLifecycleManagementApi.md#Remove-BetaNonEmployeeRecordInBulk) | **POST** /non-employee-records/bulk-delete | Delete Multiple Non-Employee Records
[**Remove-BetaNonEmployeeRequest**](BetaNonEmployeeLifecycleManagementApi.md#Remove-BetaNonEmployeeRequest) | **DELETE** /non-employee-requests/{id} | Delete Non-Employee Request
[**Remove-BetaNonEmployeeSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#Remove-BetaNonEmployeeSchemaAttribute) | **DELETE** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Delete Non-Employee Source&#39;s Schema Attribute
[**Remove-BetaNonEmployeeSource**](BetaNonEmployeeLifecycleManagementApi.md#Remove-BetaNonEmployeeSource) | **DELETE** /non-employee-sources/{sourceId} | Delete Non-Employee Source
[**Remove-BetaNonEmployeeSourceSchemaAttributes**](BetaNonEmployeeLifecycleManagementApi.md#Remove-BetaNonEmployeeSourceSchemaAttributes) | **DELETE** /non-employee-sources/{sourceId}/schema-attributes | Delete all custom schema attributes
[**Export-BetaNonEmployeeRecords**](BetaNonEmployeeLifecycleManagementApi.md#Export-BetaNonEmployeeRecords) | **GET** /non-employee-sources/{id}/non-employees/download | Exports Non-Employee Records to CSV
[**Export-BetaNonEmployeeSourceSchemaTemplate**](BetaNonEmployeeLifecycleManagementApi.md#Export-BetaNonEmployeeSourceSchemaTemplate) | **GET** /non-employee-sources/{id}/schema-attributes-template/download | Exports Source Schema Template
[**Get-BetaNonEmployeeApproval**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeApproval) | **GET** /non-employee-approvals/{id} | Get a non-employee approval item detail
[**Get-BetaNonEmployeeApprovalSummary**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeApprovalSummary) | **GET** /non-employee-approvals/summary/{requested-for} | Get Summary of Non-Employee Approval Requests
[**Get-BetaNonEmployeeBulkUploadStatus**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeBulkUploadStatus) | **GET** /non-employee-sources/{id}/non-employee-bulk-upload/status | Bulk upload status on source
[**Get-BetaNonEmployeeRecord**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeRecord) | **GET** /non-employee-records/{id} | Get a Non-Employee Record
[**Get-BetaNonEmployeeRequest**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeRequest) | **GET** /non-employee-requests/{id} | Get a Non-Employee Request
[**Get-BetaNonEmployeeRequestSummary**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeRequestSummary) | **GET** /non-employee-requests/summary/{requested-for} | Get Summary of Non-Employee Requests
[**Get-BetaNonEmployeeSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeSchemaAttribute) | **GET** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Get Schema Attribute Non-Employee Source
[**Get-BetaNonEmployeeSource**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeSource) | **GET** /non-employee-sources/{sourceId} | Get a Non-Employee Source
[**Get-BetaNonEmployeeSourceSchemaAttributes**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeSourceSchemaAttributes) | **GET** /non-employee-sources/{sourceId}/schema-attributes | List Schema Attributes Non-Employee Source
[**Import-BetaNonEmployeeRecordsInBulk**](BetaNonEmployeeLifecycleManagementApi.md#Import-BetaNonEmployeeRecordsInBulk) | **POST** /non-employee-sources/{id}/non-employee-bulk-upload | Imports, or Updates, Non-Employee Records
[**Get-BetaNonEmployeeApproval**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeApproval) | **GET** /non-employee-approvals | Get List of Non-Employee Approval Requests
[**Get-BetaNonEmployeeRecords**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeRecords) | **GET** /non-employee-records | List Non-Employee Records
[**Get-BetaNonEmployeeRequests**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeRequests) | **GET** /non-employee-requests | List Non-Employee Requests
[**Get-BetaNonEmployeeSources**](BetaNonEmployeeLifecycleManagementApi.md#Get-BetaNonEmployeeSources) | **GET** /non-employee-sources | List Non-Employee Sources
[**Update-BetaNonEmployeeRecord**](BetaNonEmployeeLifecycleManagementApi.md#Update-BetaNonEmployeeRecord) | **PATCH** /non-employee-records/{id} | Patch Non-Employee Record
[**Update-BetaNonEmployeeSchemaAttribute**](BetaNonEmployeeLifecycleManagementApi.md#Update-BetaNonEmployeeSchemaAttribute) | **PATCH** /non-employee-sources/{sourceId}/schema-attributes/{attributeId} | Patch Non-Employee Source&#39;s Schema Attribute
[**Update-BetaNonEmployeeSource**](BetaNonEmployeeLifecycleManagementApi.md#Update-BetaNonEmployeeSource) | **PATCH** /non-employee-sources/{sourceId} | Patch a Non-Employee Source
[**Deny-BetaNonEmployeeRequest**](BetaNonEmployeeLifecycleManagementApi.md#Deny-BetaNonEmployeeRequest) | **POST** /non-employee-approvals/{id}/reject | Reject a Non-Employee Request
[**Update-BetaNonEmployeeRecord**](BetaNonEmployeeLifecycleManagementApi.md#Update-BetaNonEmployeeRecord) | **PUT** /non-employee-records/{id} | Update Non-Employee Record


<a name="Approve-BetaNonEmployeeRequest"></a>
# **Approve-BetaNonEmployeeRequest**
> NonEmployeeApprovalItem Approve-BetaNonEmployeeRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeApprovalDecision] <PSCustomObject><br>

Approve a Non-Employee Request

Approves a non-employee approval request and notifies the next approver.

### Example
```powershell
$Id = "MyId" # String | Non-Employee approval item id (UUID)
$NonEmployeeApprovalDecision = Initialize-NonEmployeeApprovalDecision -Comment "MyComment" # NonEmployeeApprovalDecision | 

# Approve a Non-Employee Request
try {
    $Result = Approve-BetaNonEmployeeRequest -Id $Id -NonEmployeeApprovalDecision $NonEmployeeApprovalDecision
} catch {
    Write-Host ("Exception occurred when calling Approve-BetaNonEmployeeRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaNonEmployeeRecord"></a>
# **New-BetaNonEmployeeRecord**
> NonEmployeeRecord New-BetaNonEmployeeRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Create Non-Employee Record

This request will create a non-employee record. Request will require the following security scope: 'idn:nesr:create'

### Example
```powershell
$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-Employee record creation request body.

# Create Non-Employee Record
try {
    $Result = New-BetaNonEmployeeRecord -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling New-BetaNonEmployeeRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaNonEmployeeRequest"></a>
# **New-BetaNonEmployeeRequest**
> NonEmployeeRequest New-BetaNonEmployeeRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Create Non-Employee Request

This request will create a non-employee request and notify the approver

### Example
```powershell
$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-Employee creation request body

# Create Non-Employee Request
try {
    $Result = New-BetaNonEmployeeRequest -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling New-BetaNonEmployeeRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaNonEmployeeSource"></a>
# **New-BetaNonEmployeeSource**
> NonEmployeeSourceWithCloudExternalId New-BetaNonEmployeeSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeSourceRequestBody] <PSCustomObject><br>

Create Non-Employee Source

This request will create a non-employee source. Request will require the following security scope: 'idn:nesr:create'

### Example
```powershell
$NonEmployeeIdnUserRequest = Initialize-NonEmployeeIdnUserRequest -Id "2c91808570313110017040b06f344ec9"
$NonEmployeeSourceRequestBody = Initialize-NonEmployeeSourceRequestBody -Name "Retail" -Description "Source description" -Owner $NonEmployeeIdnUserRequest -ManagementWorkgroup "123299" -Approvers $NonEmployeeIdnUserRequest -AccountManagers $NonEmployeeIdnUserRequest # NonEmployeeSourceRequestBody | Non-Employee source creation request body.

# Create Non-Employee Source
try {
    $Result = New-BetaNonEmployeeSource -NonEmployeeSourceRequestBody $NonEmployeeSourceRequestBody
} catch {
    Write-Host ("Exception occurred when calling New-BetaNonEmployeeSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaNonEmployeeSourceSchemaAttributes"></a>
# **New-BetaNonEmployeeSourceSchemaAttributes**
> NonEmployeeSchemaAttribute New-BetaNonEmployeeSourceSchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeSchemaAttributeBody] <PSCustomObject><br>

Create Non-Employee Source Schema Attribute

This API creates a new schema attribute for Non-Employee Source. The schema technical name must be unique in the source. Attempts to create a schema attribute with an existing name will result in a ""400.1.409 Reference conflict"" response. At most, 10 custom attributes can be created per schema. Attempts to create more than 10 will result in a ""400.1.4 Limit violation"" response.

### Example
```powershell
$SourceId = "2c91808b6ef1d43e016efba0ce470904" # String | The Source id
$NonEmployeeSchemaAttributeBody = Initialize-NonEmployeeSchemaAttributeBody -Type "TEXT" -Label "Account Name" -TechnicalName "account.name" -HelpText "The unique identifier for the account" -Placeholder "Enter a unique user name for this account." -Required $true # NonEmployeeSchemaAttributeBody | 

# Create Non-Employee Source Schema Attribute
try {
    $Result = New-BetaNonEmployeeSourceSchemaAttributes -SourceId $SourceId -NonEmployeeSchemaAttributeBody $NonEmployeeSchemaAttributeBody
} catch {
    Write-Host ("Exception occurred when calling New-BetaNonEmployeeSourceSchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNonEmployeeRecord"></a>
# **Remove-BetaNonEmployeeRecord**
> void Remove-BetaNonEmployeeRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Non-Employee Record

This request will delete a non-employee record.

### Example
```powershell
$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-Employee record id (UUID)

# Delete Non-Employee Record
try {
    $Result = Remove-BetaNonEmployeeRecord -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNonEmployeeRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNonEmployeeRecordInBulk"></a>
# **Remove-BetaNonEmployeeRecordInBulk**
> void Remove-BetaNonEmployeeRecordInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteNonEmployeeRecordInBulkRequest] <PSCustomObject><br>

Delete Multiple Non-Employee Records

This request will delete multiple non-employee records based on the non-employee ids provided. Request will require the following scope: 'idn:nesr:delete'

### Example
```powershell
$DeleteNonEmployeeRecordInBulkRequest = Initialize-DeleteNonEmployeeRecordInBulkRequest -Ids "MyIds" # DeleteNonEmployeeRecordInBulkRequest | Non-Employee bulk delete request body.

# Delete Multiple Non-Employee Records
try {
    $Result = Remove-BetaNonEmployeeRecordInBulk -DeleteNonEmployeeRecordInBulkRequest $DeleteNonEmployeeRecordInBulkRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNonEmployeeRecordInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeleteNonEmployeeRecordInBulkRequest** | [**DeleteNonEmployeeRecordInBulkRequest**](DeleteNonEmployeeRecordInBulkRequest.md)| Non-Employee bulk delete request body. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNonEmployeeRequest"></a>
# **Remove-BetaNonEmployeeRequest**
> void Remove-BetaNonEmployeeRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Non-Employee Request

This request will delete a non-employee request.

### Example
```powershell
$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-Employee request id in the UUID format

# Delete Non-Employee Request
try {
    $Result = Remove-BetaNonEmployeeRequest -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNonEmployeeRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNonEmployeeSchemaAttribute"></a>
# **Remove-BetaNonEmployeeSchemaAttribute**
> void Remove-BetaNonEmployeeSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete Non-Employee Source's Schema Attribute

This end-point deletes a specific schema attribute for a non-employee source. 

### Example
```powershell
$AttributeId = "2c91808b6ef1d43e016efba0ce470904" # String | The Schema Attribute Id (UUID)
$SourceId = "2c91808b6ef1d43e016efba0ce470904" # String | The Source id

# Delete Non-Employee Source's Schema Attribute
try {
    $Result = Remove-BetaNonEmployeeSchemaAttribute -AttributeId $AttributeId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNonEmployeeSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNonEmployeeSource"></a>
# **Remove-BetaNonEmployeeSource**
> void Remove-BetaNonEmployeeSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete Non-Employee Source

This request will delete a non-employee source.

### Example
```powershell
$SourceId = "2c91808b6ef1d43e016efba0ce470904" # String | Source Id

# Delete Non-Employee Source
try {
    $Result = Remove-BetaNonEmployeeSource -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNonEmployeeSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNonEmployeeSourceSchemaAttributes"></a>
# **Remove-BetaNonEmployeeSourceSchemaAttributes**
> void Remove-BetaNonEmployeeSourceSchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Delete all custom schema attributes

This end-point deletes all custom schema attributes for a non-employee source.

### Example
```powershell
$SourceId = "2c91808b6ef1d43e016efba0ce470904" # String | The Source id

# Delete all custom schema attributes
try {
    $Result = Remove-BetaNonEmployeeSourceSchemaAttributes -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNonEmployeeSourceSchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Export-BetaNonEmployeeRecords"></a>
# **Export-BetaNonEmployeeRecords**
> void Export-BetaNonEmployeeRecords<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Exports Non-Employee Records to CSV

This requests a CSV download for all non-employees from a provided source.

### Example
```powershell
$Id = "2c918085842e69ae018432d22ccb212f" # String | Source Id (UUID)

# Exports Non-Employee Records to CSV
try {
    $Result = Export-BetaNonEmployeeRecords -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-BetaNonEmployeeRecords: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Export-BetaNonEmployeeSourceSchemaTemplate"></a>
# **Export-BetaNonEmployeeSourceSchemaTemplate**
> void Export-BetaNonEmployeeSourceSchemaTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Exports Source Schema Template

This requests a download for the Source Schema Template for a provided source. Request will require the following security scope: idn:nesr:read'

### Example
```powershell
$Id = "2c918085842e69ae018432d22ccb212f" # String | Source Id (UUID)

# Exports Source Schema Template
try {
    $Result = Export-BetaNonEmployeeSourceSchemaTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-BetaNonEmployeeSourceSchemaTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeApproval"></a>
# **Get-BetaNonEmployeeApproval**
> NonEmployeeApprovalItemDetail Get-BetaNonEmployeeApproval<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeDetail] <String><br>

Get a non-employee approval item detail

Approves a non-employee approval request and notifies the next approver.

### Example
```powershell
$Id = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | Non-Employee approval item id (UUID)
$IncludeDetail = "include-detail=false" # String | The object nonEmployeeRequest will not be included detail when set to false. *Default value is true* (optional)

# Get a non-employee approval item detail
try {
    $Result = Get-BetaNonEmployeeApproval -Id $Id -IncludeDetail $IncludeDetail
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeApproval: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeApprovalSummary"></a>
# **Get-BetaNonEmployeeApprovalSummary**
> NonEmployeeApprovalSummary Get-BetaNonEmployeeApprovalSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>

Get Summary of Non-Employee Approval Requests

This request will retrieve a summary of non-employee approval requests. There are two contextual uses for the `requested-for` path parameter: 1. The current user is the Org Admin, in which case he or she may request a summary of all non-employee approval requests assigned to a particular approver by passing in that approver's id. 2. The current user is an approver, in which case ""me"" should be provided as the `requested-for` value. This will provide the approver with a summary of the approval items assigned to him or her.

### Example
```powershell
$RequestedFor = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | The identity (UUID) of the approver for whom for whom the summary is being retrieved. Use ""me"" instead to indicate the current user.

# Get Summary of Non-Employee Approval Requests
try {
    $Result = Get-BetaNonEmployeeApprovalSummary -RequestedFor $RequestedFor
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeApprovalSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeBulkUploadStatus"></a>
# **Get-BetaNonEmployeeBulkUploadStatus**
> NonEmployeeBulkUploadStatus Get-BetaNonEmployeeBulkUploadStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Bulk upload status on source

The nonEmployeeBulkUploadStatus API returns the status of the newest bulk upload job for the specified source. 

### Example
```powershell
$Id = "2c918085842e69ae018432d22ccb212f" # String | Source ID (UUID)

# Bulk upload status on source
try {
    $Result = Get-BetaNonEmployeeBulkUploadStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeBulkUploadStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeRecord"></a>
# **Get-BetaNonEmployeeRecord**
> NonEmployeeRecord Get-BetaNonEmployeeRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Non-Employee Record

This gets a non-employee record.

### Example
```powershell
$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-Employee record id (UUID)

# Get a Non-Employee Record
try {
    $Result = Get-BetaNonEmployeeRecord -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeRequest"></a>
# **Get-BetaNonEmployeeRequest**
> NonEmployeeRequest Get-BetaNonEmployeeRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Non-Employee Request

This gets a non-employee request.

### Example
```powershell
$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-Employee request id (UUID)

# Get a Non-Employee Request
try {
    $Result = Get-BetaNonEmployeeRequest -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeRequestSummary"></a>
# **Get-BetaNonEmployeeRequestSummary**
> NonEmployeeRequestSummary Get-BetaNonEmployeeRequestSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestedFor] <String><br>

Get Summary of Non-Employee Requests

This request will retrieve a summary of non-employee requests. There are two contextual uses for the `requested-for` path parameter: 1. The current user is the Org Admin, in which case he or she may request a summary of all non-employee approval requests assigned to a particular account manager by passing in that manager's id. 2. The current user is an account manager, in which case ""me"" should be provided as the `requested-for` value. This will provide the user with a summary of the non-employee requests in the source(s) he or she manages.

### Example
```powershell
$RequestedFor = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | The identity (UUID) of the non-employee account manager for whom the summary is being retrieved. Use ""me"" instead to indicate the current user.

# Get Summary of Non-Employee Requests
try {
    $Result = Get-BetaNonEmployeeRequestSummary -RequestedFor $RequestedFor
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeRequestSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeSchemaAttribute"></a>
# **Get-BetaNonEmployeeSchemaAttribute**
> NonEmployeeSchemaAttribute Get-BetaNonEmployeeSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Get Schema Attribute Non-Employee Source

This API gets a schema attribute by Id for the specified Non-Employee SourceId.

### Example
```powershell
$AttributeId = "2c918085842e69ae018432d22ccb212f" # String | The Schema Attribute Id (UUID)
$SourceId = "2c918085842e69ae018432d22ccb212f" # String | The Source id

# Get Schema Attribute Non-Employee Source
try {
    $Result = Get-BetaNonEmployeeSchemaAttribute -AttributeId $AttributeId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeSource"></a>
# **Get-BetaNonEmployeeSource**
> NonEmployeeSource Get-BetaNonEmployeeSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Get a Non-Employee Source

This gets a non-employee source.

### Example
```powershell
$SourceId = "2c91808b7c28b350017c2a2ec5790aa1" # String | Source Id

# Get a Non-Employee Source
try {
    $Result = Get-BetaNonEmployeeSource -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeSourceSchemaAttributes"></a>
# **Get-BetaNonEmployeeSourceSchemaAttributes**
> NonEmployeeSchemaAttribute[] Get-BetaNonEmployeeSourceSchemaAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

List Schema Attributes Non-Employee Source

This API gets the list of schema attributes for the specified Non-Employee SourceId. There are 8 mandatory attributes added to each new Non-Employee Source automatically. Additionaly, user can add up to 10 custom attributes. This interface returns all the mandatory attributes followed by any custom attributes. At most, a total of 18 attributes will be returned.

### Example
```powershell
$SourceId = "2c918085842e69ae018432d22ccb212f" # String | The Source id

# List Schema Attributes Non-Employee Source
try {
    $Result = Get-BetaNonEmployeeSourceSchemaAttributes -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeSourceSchemaAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaNonEmployeeRecordsInBulk"></a>
# **Import-BetaNonEmployeeRecordsInBulk**
> NonEmployeeBulkUploadJob Import-BetaNonEmployeeRecordsInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Data] <System.IO.FileInfo><br>

Imports, or Updates, Non-Employee Records

This post will import, or update, Non-Employee records found in the CSV. Request will need the following security scope: 'idn:nesr:create'

### Example
```powershell
$Id = "e136567de87e4d029e60b3c3c55db56d" # String | Source Id (UUID)
$Data =  # System.IO.FileInfo | 

# Imports, or Updates, Non-Employee Records
try {
    $Result = Import-BetaNonEmployeeRecordsInBulk -Id $Id -Data $Data
} catch {
    Write-Host ("Exception occurred when calling Import-BetaNonEmployeeRecordsInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id (UUID) | 
 **Data** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

[**NonEmployeeBulkUploadJob**](NonEmployeeBulkUploadJob.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeApproval"></a>
# **Get-BetaNonEmployeeApproval**
> NonEmployeeApprovalItem[] Get-BetaNonEmployeeApproval<br>
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
$RequestedFor = "ac10d20a-841e-1e7d-8184-32d2e22c0179" # String | The identity for whom the request was made. *me* indicates the current user. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "approvalStatus eq "PENDING"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **approvalStatus**: *eq* (optional)
$Sorters = "created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified** (optional)

# Get List of Non-Employee Approval Requests
try {
    $Result = Get-BetaNonEmployeeApproval -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeApproval: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **approvalStatus**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified** | [optional] 

### Return type

[**NonEmployeeApprovalItem[]**](NonEmployeeApprovalItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeRecords"></a>
# **Get-BetaNonEmployeeRecords**
> NonEmployeeRecord[] Get-BetaNonEmployeeRecords<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Non-Employee Records

This gets a list of non-employee records.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "accountName,sourceId" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, accountName, sourceId, manager, firstName, lastName, email, phone, startDate, endDate, created, modified** (optional)
$Filters = "sourceId eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **sourceId**: *eq* (optional)

# List Non-Employee Records
try {
    $Result = Get-BetaNonEmployeeRecords -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeRecords: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, accountName, sourceId, manager, firstName, lastName, email, phone, startDate, endDate, created, modified** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **sourceId**: *eq* | [optional] 

### Return type

[**NonEmployeeRecord[]**](NonEmployeeRecord.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeRequests"></a>
# **Get-BetaNonEmployeeRequests**
> NonEmployeeRequest[] Get-BetaNonEmployeeRequests<br>
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
$RequestedFor = "me" # String | The identity for whom the request was made. *me* indicates the current user.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "approvalStatus,firstName" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, approvalStatus, firstName, lastName, email, phone, accountName, startDate, endDate** (optional)
$Filters = "sourceId eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **sourceId**: *eq* (optional)

# List Non-Employee Requests
try {
    $Result = Get-BetaNonEmployeeRequests -RequestedFor $RequestedFor -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeRequests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, approvalStatus, firstName, lastName, email, phone, accountName, startDate, endDate** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **sourceId**: *eq* | [optional] 

### Return type

[**NonEmployeeRequest[]**](NonEmployeeRequest.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNonEmployeeSources"></a>
# **Get-BetaNonEmployeeSources**
> NonEmployeeSourceWithNECount[] Get-BetaNonEmployeeSources<br>
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
$RequestedFor = "me" # String | The identity for whom the request was made. *me* indicates the current user.
$NonEmployeeCount = $false # Boolean | The flag to determine whether return a non-employee count associate with source.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "name,created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, sourceId** (optional)

# List Non-Employee Sources
try {
    $Result = Get-BetaNonEmployeeSources -RequestedFor $RequestedFor -NonEmployeeCount $NonEmployeeCount -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNonEmployeeSources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, sourceId** | [optional] 

### Return type

[**NonEmployeeSourceWithNECount[]**](NonEmployeeSourceWithNECount.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaNonEmployeeRecord"></a>
# **Update-BetaNonEmployeeRecord**
> NonEmployeeRecord Update-BetaNonEmployeeRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch Non-Employee Record

This request will patch a non-employee record.

### Example
```powershell
$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-employee record id (UUID)
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of non-employee update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields.

# Patch Non-Employee Record
try {
    $Result = Update-BetaNonEmployeeRecord -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaNonEmployeeRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaNonEmployeeSchemaAttribute"></a>
# **Update-BetaNonEmployeeSchemaAttribute**
> NonEmployeeSchemaAttribute Update-BetaNonEmployeeSchemaAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch Non-Employee Source's Schema Attribute

This end-point patches a specific schema attribute for a non-employee SourceId. 

### Example
```powershell
$AttributeId = "2c91808b6ef1d43e016efba0ce470904" # String | The Schema Attribute Id (UUID)
$SourceId = "2c91808b6ef1d43e016efba0ce470904" # String | The Source id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of schema attribute update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following properties are allowed for update ':' 'label', 'helpText', 'placeholder', 'required'.

# Patch Non-Employee Source's Schema Attribute
try {
    $Result = Update-BetaNonEmployeeSchemaAttribute -AttributeId $AttributeId -SourceId $SourceId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaNonEmployeeSchemaAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaNonEmployeeSource"></a>
# **Update-BetaNonEmployeeSource**
> NonEmployeeSource Update-BetaNonEmployeeSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch a Non-Employee Source

patch a non-employee source. (Partial Update)  Patchable field: **name, description, approvers, accountManagers**

### Example
```powershell
$SourceId = "2c91808b6ef1d43e016efba0ce470904" # String | Source Id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of non-employee source update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Patch a Non-Employee Source
try {
    $Result = Update-BetaNonEmployeeSource -SourceId $SourceId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaNonEmployeeSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Deny-BetaNonEmployeeRequest"></a>
# **Deny-BetaNonEmployeeRequest**
> NonEmployeeApprovalItem Deny-BetaNonEmployeeRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRejectApprovalDecision] <PSCustomObject><br>

Reject a Non-Employee Request

This endpoint will reject an approval item request and notify user.

### Example
```powershell
$Id = "MyId" # String | Non-Employee approval item id (UUID)
$NonEmployeeRejectApprovalDecision = Initialize-NonEmployeeRejectApprovalDecision -Comment "MyComment" # NonEmployeeRejectApprovalDecision | 

# Reject a Non-Employee Request
try {
    $Result = Deny-BetaNonEmployeeRequest -Id $Id -NonEmployeeRejectApprovalDecision $NonEmployeeRejectApprovalDecision
} catch {
    Write-Host ("Exception occurred when calling Deny-BetaNonEmployeeRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaNonEmployeeRecord"></a>
# **Update-BetaNonEmployeeRecord**
> NonEmployeeRecord Update-BetaNonEmployeeRecord<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NonEmployeeRequestBody] <PSCustomObject><br>

Update Non-Employee Record

This request will update a non-employee record.

### Example
```powershell
$Id = "2c91808b6ef1d43e016efba0ce470904" # String | Non-employee record id (UUID)
$NonEmployeeRequestBody = Initialize-NonEmployeeRequestBody -AccountName "william.smith" -FirstName "William" -LastName "Smith" -Email "william.smith@example.com" -Phone "5555555555" -Manager "jane.doe" -SourceId "2c91808568c529c60168cca6f90c1313" -VarData @{ key_example = "MyInner" } -StartDate (Get-Date) -EndDate (Get-Date) # NonEmployeeRequestBody | Non-employee record creation request body. Attributes are restricted by user type. Owner of source can update end date. Organization admins can update all available fields.

# Update Non-Employee Record
try {
    $Result = Update-BetaNonEmployeeRecord -Id $Id -NonEmployeeRequestBody $NonEmployeeRequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-BetaNonEmployeeRecord: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

