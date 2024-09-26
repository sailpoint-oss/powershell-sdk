# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaCustomFormsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaFormDefinition**](BetaCustomFormsApi.md#New-BetaFormDefinition) | **POST** /form-definitions | Creates a form definition.
[**New-BetaFormDefinitionByTemplate**](BetaCustomFormsApi.md#New-BetaFormDefinitionByTemplate) | **POST** /form-definitions/template | Create a form definition by template.
[**New-BetaFormDefinitionDynamicSchema**](BetaCustomFormsApi.md#New-BetaFormDefinitionDynamicSchema) | **POST** /form-definitions/forms-action-dynamic-schema | Generate JSON Schema dynamically.
[**New-BetaFormDefinitionFileRequest**](BetaCustomFormsApi.md#New-BetaFormDefinitionFileRequest) | **POST** /form-definitions/{formDefinitionID}/upload | Upload new form definition file.
[**New-BetaFormInstance**](BetaCustomFormsApi.md#New-BetaFormInstance) | **POST** /form-instances | Creates a form instance.
[**Remove-BetaFormDefinition**](BetaCustomFormsApi.md#Remove-BetaFormDefinition) | **DELETE** /form-definitions/{formDefinitionID} | Deletes a form definition.
[**Export-BetaFormDefinitionsByTenant**](BetaCustomFormsApi.md#Export-BetaFormDefinitionsByTenant) | **GET** /form-definitions/export | List form definitions by tenant.
[**Get-BetaFileFromS3**](BetaCustomFormsApi.md#Get-BetaFileFromS3) | **GET** /form-definitions/{formDefinitionID}/file/{fileID} | Download definition file by fileId.
[**Get-BetaFormDefinitionByKey**](BetaCustomFormsApi.md#Get-BetaFormDefinitionByKey) | **GET** /form-definitions/{formDefinitionID} | Return a form definition.
[**Get-BetaFormInstanceByKey**](BetaCustomFormsApi.md#Get-BetaFormInstanceByKey) | **GET** /form-instances/{formInstanceID} | Returns a form instance.
[**Get-BetaFormInstanceFile**](BetaCustomFormsApi.md#Get-BetaFormInstanceFile) | **GET** /form-instances/{formInstanceID}/file/{fileID} | Download instance file by fileId.
[**Import-BetaFormDefinitions**](BetaCustomFormsApi.md#Import-BetaFormDefinitions) | **POST** /form-definitions/import | Import form definitions from export.
[**Update-BetaFormDefinition**](BetaCustomFormsApi.md#Update-BetaFormDefinition) | **PATCH** /form-definitions/{formDefinitionID} | Patch a form definition.
[**Update-BetaFormInstance**](BetaCustomFormsApi.md#Update-BetaFormInstance) | **PATCH** /form-instances/{formInstanceID} | Patch a form instance.
[**Search-BetaFormDefinitionsByTenant**](BetaCustomFormsApi.md#Search-BetaFormDefinitionsByTenant) | **GET** /form-definitions | Export form definitions by tenant.
[**Search-BetaFormElementDataByElementID**](BetaCustomFormsApi.md#Search-BetaFormElementDataByElementID) | **GET** /form-instances/{formInstanceID}/data-source/{formElementID} | Retrieves dynamic data by element.
[**Search-BetaFormInstancesByTenant**](BetaCustomFormsApi.md#Search-BetaFormInstancesByTenant) | **GET** /form-instances | List form instances by tenant.
[**Search-BetaPreDefinedSelectOptions**](BetaCustomFormsApi.md#Search-BetaPreDefinedSelectOptions) | **GET** /form-definitions/predefined-select-options | List predefined select options.
[**Show-BetaPreviewDataSource**](BetaCustomFormsApi.md#Show-BetaPreviewDataSource) | **POST** /form-definitions/{formDefinitionID}/data-source | Preview form definition data source.


<a id="New-BetaFormDefinition"></a>
# **New-BetaFormDefinition**
> FormDefinitionResponse New-BetaFormDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateFormDefinitionRequest] <PSCustomObject><br>

Creates a form definition.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ConditionRule = Initialize-ConditionRule -SourceType "INPUT" -Source "department" -Operator "EQ" -ValueType "STRING" -Value "Engineering"

$ConditionEffectConfig = Initialize-ConditionEffectConfig -DefaultValueLabel "Access to Remove" -Element "8110662963316867"
$ConditionEffect = Initialize-ConditionEffect -EffectType "HIDE" -Config $ConditionEffectConfig

$FormCondition = Initialize-FormCondition -RuleOperator "AND" -Rules $ConditionRule -Effects $ConditionEffect

$FormElementValidationsSet = Initialize-FormElementValidationsSet -ValidationType "REQUIRED"
$FormElement = Initialize-FormElement -Id "00000000-0000-0000-0000-000000000000" -ElementType "TEXT" -Config @{ key_example =  } -Key "department" -Validations $FormElementValidationsSet

$FormDefinitionInput = Initialize-FormDefinitionInput -Id "00000000-0000-0000-0000-000000000000" -Type "STRING" -Label "input1" -Description "A single dynamic scalar value (i.e. number, string, date, etc.) that can be passed into the form for use in conditional logic"
$FormOwner = Initialize-FormOwner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67" -Name "Grant Smith"
$FormUsedBy = Initialize-FormUsedBy -Type "WORKFLOW" -Id "61940a92-5484-42bc-bc10-b9982b218cdf" -Name "Access Request Form"
$CreateFormDefinitionRequest = Initialize-CreateFormDefinitionRequest -Description "My form description" -FormConditions $FormCondition -FormElements $FormElement -FormInput $FormDefinitionInput -Name "My form" -Owner $FormOwner -UsedBy $FormUsedBy # CreateFormDefinitionRequest | Body is the request payload to create form definition request (optional)

# Creates a form definition.
try {
    $Result = New-BetaFormDefinition -CreateFormDefinitionRequest $CreateFormDefinitionRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaFormDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateFormDefinitionRequest** | [**CreateFormDefinitionRequest**](CreateFormDefinitionRequest.md)| Body is the request payload to create form definition request | [optional] 

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-BetaFormDefinitionByTemplate"></a>
# **New-BetaFormDefinitionByTemplate**
> FormDefinitionResponse New-BetaFormDefinitionByTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateFormDefinitionRequest] <PSCustomObject><br>

Create a form definition by template.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ConditionRule = Initialize-ConditionRule -SourceType "INPUT" -Source "department" -Operator "EQ" -ValueType "STRING" -Value "Engineering"

$ConditionEffectConfig = Initialize-ConditionEffectConfig -DefaultValueLabel "Access to Remove" -Element "8110662963316867"
$ConditionEffect = Initialize-ConditionEffect -EffectType "HIDE" -Config $ConditionEffectConfig

$FormCondition = Initialize-FormCondition -RuleOperator "AND" -Rules $ConditionRule -Effects $ConditionEffect

$FormElementValidationsSet = Initialize-FormElementValidationsSet -ValidationType "REQUIRED"
$FormElement = Initialize-FormElement -Id "00000000-0000-0000-0000-000000000000" -ElementType "TEXT" -Config @{ key_example =  } -Key "department" -Validations $FormElementValidationsSet

$FormDefinitionInput = Initialize-FormDefinitionInput -Id "00000000-0000-0000-0000-000000000000" -Type "STRING" -Label "input1" -Description "A single dynamic scalar value (i.e. number, string, date, etc.) that can be passed into the form for use in conditional logic"
$FormOwner = Initialize-FormOwner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67" -Name "Grant Smith"
$FormUsedBy = Initialize-FormUsedBy -Type "WORKFLOW" -Id "61940a92-5484-42bc-bc10-b9982b218cdf" -Name "Access Request Form"
$CreateFormDefinitionRequest = Initialize-CreateFormDefinitionRequest -Description "My form description" -FormConditions $FormCondition -FormElements $FormElement -FormInput $FormDefinitionInput -Name "My form" -Owner $FormOwner -UsedBy $FormUsedBy # CreateFormDefinitionRequest | Body is the request payload to create form definition request (optional)

# Create a form definition by template.
try {
    $Result = New-BetaFormDefinitionByTemplate -CreateFormDefinitionRequest $CreateFormDefinitionRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaFormDefinitionByTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateFormDefinitionRequest** | [**CreateFormDefinitionRequest**](CreateFormDefinitionRequest.md)| Body is the request payload to create form definition request | [optional] 

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-BetaFormDefinitionDynamicSchema"></a>
# **New-BetaFormDefinitionDynamicSchema**
> FormDefinitionDynamicSchemaResponse New-BetaFormDefinitionDynamicSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Generate JSON Schema dynamically.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionDynamicSchemaRequestAttributes = Initialize-FormDefinitionDynamicSchemaRequestAttributes -FormDefinitionId "00000000-0000-0000-0000-000000000000"
$FormDefinitionDynamicSchemaRequest = Initialize-FormDefinitionDynamicSchemaRequest -Attributes $FormDefinitionDynamicSchemaRequestAttributes -Description "A description" -Id "00000000-0000-0000-0000-000000000000" -Type "action" -VersionNumber 1 # FormDefinitionDynamicSchemaRequest | Body is the request payload to create a form definition dynamic schema (optional)

# Generate JSON Schema dynamically.
try {
    $Result = New-BetaFormDefinitionDynamicSchema -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-BetaFormDefinitionDynamicSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**FormDefinitionDynamicSchemaRequest**](FormDefinitionDynamicSchemaRequest.md)| Body is the request payload to create a form definition dynamic schema | [optional] 

### Return type

[**FormDefinitionDynamicSchemaResponse**](FormDefinitionDynamicSchemaResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-BetaFormDefinitionFileRequest"></a>
# **New-BetaFormDefinitionFileRequest**
> FormDefinitionFileUploadResponse New-BetaFormDefinitionFileRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload new form definition file.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | FormDefinitionID  String specifying FormDefinitionID
$File =  # System.IO.FileInfo | File specifying the multipart

# Upload new form definition file.
try {
    $Result = New-BetaFormDefinitionFileRequest -FormDefinitionID $FormDefinitionID -File $File
} catch {
    Write-Host ("Exception occurred when calling New-BetaFormDefinitionFileRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| FormDefinitionID  String specifying FormDefinitionID | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| File specifying the multipart | 

### Return type

[**FormDefinitionFileUploadResponse**](FormDefinitionFileUploadResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-BetaFormInstance"></a>
# **New-BetaFormInstance**
> FormInstanceResponse New-BetaFormInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Creates a form instance.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceCreatedBy = Initialize-FormInstanceCreatedBy -Id "00000000-0000-0000-0000-000000000000" -Type "WORKFLOW_EXECUTION"
$FormInstanceRecipient = Initialize-FormInstanceRecipient -Id "00000000-0000-0000-0000-000000000000" -Type "IDENTITY"
$CreateFormInstanceRequest = Initialize-CreateFormInstanceRequest -CreatedBy $FormInstanceCreatedBy -Expire "2023-08-12T20:14:57.74486Z" -FormDefinitionId "00000000-0000-0000-0000-000000000000" -FormInput @{ key_example =  } -Recipients $FormInstanceRecipient -StandAloneForm $false -State "ASSIGNED" -Ttl 1571827560 # CreateFormInstanceRequest | Body is the request payload to create a form instance (optional)

# Creates a form instance.
try {
    $Result = New-BetaFormInstance -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-BetaFormInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**CreateFormInstanceRequest**](CreateFormInstanceRequest.md)| Body is the request payload to create a form instance | [optional] 

### Return type

[**FormInstanceResponse**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaFormDefinition"></a>
# **Remove-BetaFormDefinition**
> SystemCollectionsHashtable Remove-BetaFormDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>

Deletes a form definition.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID

# Deletes a form definition.
try {
    $Result = Remove-BetaFormDefinition -FormDefinitionID $FormDefinitionID
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaFormDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-BetaFormDefinitionsByTenant"></a>
# **Export-BetaFormDefinitionsByTenant**
> ExportFormDefinitionsByTenant200ResponseInner[] Export-BetaFormDefinitionsByTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List form definitions by tenant.

No parameters required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int64 | Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. (optional) (default to 0)
$Limit = 250 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 250)
$Filters = "name sw "my form"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** (optional) (default to "name")

# List form definitions by tenant.
try {
    $Result = Export-BetaFormDefinitionsByTenant -Offset $Offset -Limit $Limit -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Export-BetaFormDefinitionsByTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**| Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. | [optional] [default to 0]
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 250]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** | [optional] [default to &quot;name&quot;]

### Return type

[**ExportFormDefinitionsByTenant200ResponseInner[]**](ExportFormDefinitionsByTenant200ResponseInner.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaFileFromS3"></a>
# **Get-BetaFileFromS3**
> System.IO.FileInfo Get-BetaFileFromS3<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileID] <String><br>

Download definition file by fileId.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | FormDefinitionID  Form definition ID
$FileID = "00000031N0J7R2B57M8YG73J7M.png" # String | FileID  String specifying the hashed name of the uploaded file we are retrieving.

# Download definition file by fileId.
try {
    $Result = Get-BetaFileFromS3 -FormDefinitionID $FormDefinitionID -FileID $FileID
} catch {
    Write-Host ("Exception occurred when calling Get-BetaFileFromS3: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| FormDefinitionID  Form definition ID | 
 **FileID** | **String**| FileID  String specifying the hashed name of the uploaded file we are retrieving. | 

### Return type

**System.IO.FileInfo**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, image/jpeg, image/png, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaFormDefinitionByKey"></a>
# **Get-BetaFormDefinitionByKey**
> FormDefinitionResponse Get-BetaFormDefinitionByKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>

Return a form definition.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID

# Return a form definition.
try {
    $Result = Get-BetaFormDefinitionByKey -FormDefinitionID $FormDefinitionID
} catch {
    Write-Host ("Exception occurred when calling Get-BetaFormDefinitionByKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaFormInstanceByKey"></a>
# **Get-BetaFormInstanceByKey**
> FormInstanceResponse Get-BetaFormInstanceByKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>

Returns a form instance.

Parameter `{formInstanceID}` should match a form instance ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | Form instance ID

# Returns a form instance.
try {
    $Result = Get-BetaFormInstanceByKey -FormInstanceID $FormInstanceID
} catch {
    Write-Host ("Exception occurred when calling Get-BetaFormInstanceByKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| Form instance ID | 

### Return type

[**FormInstanceResponse**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaFormInstanceFile"></a>
# **Get-BetaFormInstanceFile**
> System.IO.FileInfo Get-BetaFormInstanceFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileID] <String><br>

Download instance file by fileId.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | FormInstanceID  Form instance ID
$FileID = "00000031N0J7R2B57M8YG73J7M.png" # String | FileID  String specifying the hashed name of the uploaded file we are retrieving.

# Download instance file by fileId.
try {
    $Result = Get-BetaFormInstanceFile -FormInstanceID $FormInstanceID -FileID $FileID
} catch {
    Write-Host ("Exception occurred when calling Get-BetaFormInstanceFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| FormInstanceID  Form instance ID | 
 **FileID** | **String**| FileID  String specifying the hashed name of the uploaded file we are retrieving. | 

### Return type

**System.IO.FileInfo**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, image/jpeg, image/png, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-BetaFormDefinitions"></a>
# **Import-BetaFormDefinitions**
> ImportFormDefinitions202Response Import-BetaFormDefinitions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject[]><br>

Import form definitions from export.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormOwner = Initialize-FormOwner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67" -Name "Grant Smith"
$FormUsedBy = Initialize-FormUsedBy -Type "WORKFLOW" -Id "61940a92-5484-42bc-bc10-b9982b218cdf" -Name "Access Request Form"
$FormDefinitionInput = Initialize-FormDefinitionInput -Id "00000000-0000-0000-0000-000000000000" -Type "STRING" -Label "input1" -Description "A single dynamic scalar value (i.e. number, string, date, etc.) that can be passed into the form for use in conditional logic"

$FormElementValidationsSet = Initialize-FormElementValidationsSet -ValidationType "REQUIRED"
$FormElement = Initialize-FormElement -Id "00000000-0000-0000-0000-000000000000" -ElementType "TEXT" -Config @{ key_example =  } -Key "department" -Validations $FormElementValidationsSet

$ConditionRule = Initialize-ConditionRule -SourceType "INPUT" -Source "department" -Operator "EQ" -ValueType "STRING" -Value "Engineering"

$ConditionEffectConfig = Initialize-ConditionEffectConfig -DefaultValueLabel "Access to Remove" -Element "8110662963316867"
$ConditionEffect = Initialize-ConditionEffect -EffectType "HIDE" -Config $ConditionEffectConfig

$FormCondition = Initialize-FormCondition -RuleOperator "AND" -Rules $ConditionRule -Effects $ConditionEffect

$FormDefinitionResponse = Initialize-FormDefinitionResponse -Id "00000000-0000-0000-0000-000000000000" -Name "My form" -Description "My form description" -Owner $FormOwner -UsedBy $FormUsedBy -FormInput $FormDefinitionInput -FormElements $FormElement -FormConditions $FormCondition -Created (Get-Date) -Modified (Get-Date)

$ImportFormDefinitionsRequestInner = Initialize-ImportFormDefinitionsRequestInner -Object $FormDefinitionResponse -Self "MySelf" -Version 0 # ImportFormDefinitionsRequestInner[] | Body is the request payload to import form definitions (optional)

# Import form definitions from export.
try {
    $Result = Import-BetaFormDefinitions -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Import-BetaFormDefinitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**ImportFormDefinitionsRequestInner[]**](ImportFormDefinitionsRequestInner.md)| Body is the request payload to import form definitions | [optional] 

### Return type

[**ImportFormDefinitions202Response**](ImportFormDefinitions202Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaFormDefinition"></a>
# **Update-BetaFormDefinition**
> FormDefinitionResponse Update-BetaFormDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Collections.Hashtable[]><br>

Patch a form definition.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID
$Body = @{ key_example =  } # Map[] | Body is the request payload to patch a form definition, check: https://jsonpatch.com (optional)

# Patch a form definition.
try {
    $Result = Update-BetaFormDefinition -FormDefinitionID $FormDefinitionID -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-BetaFormDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 
 **Body** | [**Map[]**](Map.md)| Body is the request payload to patch a form definition, check: https://jsonpatch.com | [optional] 

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaFormInstance"></a>
# **Update-BetaFormInstance**
> FormInstanceResponse Update-BetaFormInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Collections.Hashtable[]><br>

Patch a form instance.

Parameter `{formInstanceID}` should match a form instance ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | Form instance ID
$Body = @{ key_example =  } # Map[] | Body is the request payload to patch a form instance, check: https://jsonpatch.com (optional)

# Patch a form instance.
try {
    $Result = Update-BetaFormInstance -FormInstanceID $FormInstanceID -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-BetaFormInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| Form instance ID | 
 **Body** | [**Map[]**](Map.md)| Body is the request payload to patch a form instance, check: https://jsonpatch.com | [optional] 

### Return type

[**FormInstanceResponse**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-BetaFormDefinitionsByTenant"></a>
# **Search-BetaFormDefinitionsByTenant**
> ListFormDefinitionsByTenantResponse Search-BetaFormDefinitionsByTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Export form definitions by tenant.

No parameters required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 250 # Int64 | Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. (optional) (default to 0)
$Limit = 250 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 250)
$Filters = "name sw "my form"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** (optional) (default to "name")

# Export form definitions by tenant.
try {
    $Result = Search-BetaFormDefinitionsByTenant -Offset $Offset -Limit $Limit -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Search-BetaFormDefinitionsByTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**| Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. | [optional] [default to 0]
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 250]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** | [optional] [default to &quot;name&quot;]

### Return type

[**ListFormDefinitionsByTenantResponse**](ListFormDefinitionsByTenantResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-BetaFormElementDataByElementID"></a>
# **Search-BetaFormElementDataByElementID**
> ListFormElementDataByElementIDResponse Search-BetaFormElementDataByElementID<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormElementID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Retrieves dynamic data by element.

Parameter `{formInstanceID}` should match a form instance ID. Parameter `{formElementID}` should match a form element ID at the data source configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | Form instance ID
$FormElementID = "1" # String | Form element ID
$Limit = 250 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 250)
$Filters = "value eq "ID01"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the `in` operator. The `not` composite operator must be used in front of the field. For example, the following is valid: `not value in (""ID01"")` (optional)
$Query = "support" # String | String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a ""starts with"" filter against  several fields. (optional)

# Retrieves dynamic data by element.
try {
    $Result = Search-BetaFormElementDataByElementID -FormInstanceID $FormInstanceID -FormElementID $FormElementID -Limit $Limit -Filters $Filters -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Search-BetaFormElementDataByElementID: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| Form instance ID | 
 **FormElementID** | **String**| Form element ID | 
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 250]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the &#x60;in&#x60; operator. The &#x60;not&#x60; composite operator must be used in front of the field. For example, the following is valid: &#x60;not value in (&quot;&quot;ID01&quot;&quot;)&#x60; | [optional] 
 **Query** | **String**| String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a &quot;&quot;starts with&quot;&quot; filter against  several fields. | [optional] 

### Return type

[**ListFormElementDataByElementIDResponse**](ListFormElementDataByElementIDResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-BetaFormInstancesByTenant"></a>
# **Search-BetaFormInstancesByTenant**
> FormInstanceResponse[] Search-BetaFormInstancesByTenant<br>

List form instances by tenant.

No parameters required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List form instances by tenant.
try {
    $Result = Search-BetaFormInstancesByTenant
} catch {
    Write-Host ("Exception occurred when calling Search-BetaFormInstancesByTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FormInstanceResponse[]**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-BetaPreDefinedSelectOptions"></a>
# **Search-BetaPreDefinedSelectOptions**
> ListPredefinedSelectOptionsResponse Search-BetaPreDefinedSelectOptions<br>

List predefined select options.

No parameters required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List predefined select options.
try {
    $Result = Search-BetaPreDefinedSelectOptions
} catch {
    Write-Host ("Exception occurred when calling Search-BetaPreDefinedSelectOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPredefinedSelectOptionsResponse**](ListPredefinedSelectOptionsResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Show-BetaPreviewDataSource"></a>
# **Show-BetaPreviewDataSource**
> PreviewDataSourceResponse Show-BetaPreviewDataSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormElementPreviewRequest] <PSCustomObject><br>

Preview form definition data source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID
$Limit = 10 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 10)
$Filters = "value eq "ID01"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the `in` operator. The `not` composite operator must be used in front of the field. For example, the following is valid: `not value in (""ID01"")` (optional)
$Query = "ac" # String | String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a ""starts with"" filter against  several fields. (optional)
"accessprofiles"$FormElementDynamicDataSourceConfig = Initialize-FormElementDynamicDataSourceConfig -AggregationBucketField "attributes.cloudStatus.exact" -Indices "accessprofiles" -ObjectType "IDENTITY" -Query "*"
$FormElementDynamicDataSource = Initialize-FormElementDynamicDataSource -Config $FormElementDynamicDataSourceConfig -DataSourceType "STATIC"

$FormElementPreviewRequest = Initialize-FormElementPreviewRequest -DataSource $FormElementDynamicDataSource # FormElementPreviewRequest | Body is the request payload to create a form definition dynamic schema (optional)

# Preview form definition data source.
try {
    $Result = Show-BetaPreviewDataSource -FormDefinitionID $FormDefinitionID -Limit $Limit -Filters $Filters -Query $Query -FormElementPreviewRequest $FormElementPreviewRequest
} catch {
    Write-Host ("Exception occurred when calling Show-BetaPreviewDataSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 10]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the &#x60;in&#x60; operator. The &#x60;not&#x60; composite operator must be used in front of the field. For example, the following is valid: &#x60;not value in (&quot;&quot;ID01&quot;&quot;)&#x60; | [optional] 
 **Query** | **String**| String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a &quot;&quot;starts with&quot;&quot; filter against  several fields. | [optional] 
 **FormElementPreviewRequest** | [**FormElementPreviewRequest**](FormElementPreviewRequest.md)| Body is the request payload to create a form definition dynamic schema | [optional] 

### Return type

[**PreviewDataSourceResponse**](PreviewDataSourceResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

