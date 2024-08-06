# PSSailpointV2024.PSSailpointV2024\Api.V2024CustomFormsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024FormDefinition**](V2024CustomFormsApi.md#New-V2024FormDefinition) | **POST** /form-definitions | Creates a form definition.
[**New-V2024FormDefinitionDynamicSchema**](V2024CustomFormsApi.md#New-V2024FormDefinitionDynamicSchema) | **POST** /form-definitions/forms-action-dynamic-schema | Generate JSON Schema dynamically.
[**New-V2024FormDefinitionFileRequest**](V2024CustomFormsApi.md#New-V2024FormDefinitionFileRequest) | **POST** /form-definitions/{formDefinitionID}/upload | Upload new form definition file.
[**New-V2024FormInstance**](V2024CustomFormsApi.md#New-V2024FormInstance) | **POST** /form-instances | Creates a form instance.
[**Remove-V2024FormDefinition**](V2024CustomFormsApi.md#Remove-V2024FormDefinition) | **DELETE** /form-definitions/{formDefinitionID} | Deletes a form definition.
[**Export-V2024FormDefinitionsByTenant**](V2024CustomFormsApi.md#Export-V2024FormDefinitionsByTenant) | **GET** /form-definitions/export | List form definitions by tenant.
[**Get-V2024FileFromS3**](V2024CustomFormsApi.md#Get-V2024FileFromS3) | **GET** /form-definitions/{formDefinitionID}/file/{fileID} | Download definition file by fileId.
[**Get-V2024FormDefinitionByKey**](V2024CustomFormsApi.md#Get-V2024FormDefinitionByKey) | **GET** /form-definitions/{formDefinitionID} | Return a form definition.
[**Get-V2024FormInstanceByKey**](V2024CustomFormsApi.md#Get-V2024FormInstanceByKey) | **GET** /form-instances/{formInstanceID} | Returns a form instance.
[**Get-V2024FormInstanceFile**](V2024CustomFormsApi.md#Get-V2024FormInstanceFile) | **GET** /form-instances/{formInstanceID}/file/{fileID} | Download instance file by fileId.
[**Import-V2024FormDefinitions**](V2024CustomFormsApi.md#Import-V2024FormDefinitions) | **POST** /form-definitions/import | Import form definitions from export.
[**Update-V2024FormDefinition**](V2024CustomFormsApi.md#Update-V2024FormDefinition) | **PATCH** /form-definitions/{formDefinitionID} | Patch a form definition.
[**Update-V2024FormInstance**](V2024CustomFormsApi.md#Update-V2024FormInstance) | **PATCH** /form-instances/{formInstanceID} | Patch a form instance.
[**Search-V2024FormDefinitionsByTenant**](V2024CustomFormsApi.md#Search-V2024FormDefinitionsByTenant) | **GET** /form-definitions | Export form definitions by tenant.
[**Search-V2024FormElementDataByElementID**](V2024CustomFormsApi.md#Search-V2024FormElementDataByElementID) | **GET** /form-instances/{formInstanceID}/data-source/{formElementID} | Retrieves dynamic data by element.
[**Search-V2024FormInstancesByTenant**](V2024CustomFormsApi.md#Search-V2024FormInstancesByTenant) | **GET** /form-instances | List form instances by tenant.
[**Search-V2024PreDefinedSelectOptions**](V2024CustomFormsApi.md#Search-V2024PreDefinedSelectOptions) | **GET** /form-definitions/predefined-select-options | List predefined select options.
[**Show-V2024PreviewDataSource**](V2024CustomFormsApi.md#Show-V2024PreviewDataSource) | **POST** /form-definitions/{formDefinitionID}/data-source | Preview form definition data source.


<a id="New-V2024FormDefinition"></a>
# **New-V2024FormDefinition**
> FormDefinitionResponse New-V2024FormDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Creates a form definition.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$ConditionRule = Initialize-ConditionRule -SourceType "INPUT" -Source "department" -Operator "EQ" -ValueType "STRING" -Value 

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
    $Result = New-V2024FormDefinition -XSailPointExperimental $XSailPointExperimental -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-V2024FormDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Body** | [**CreateFormDefinitionRequest**](CreateFormDefinitionRequest.md)| Body is the request payload to create form definition request | [optional] 

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024FormDefinitionDynamicSchema"></a>
# **New-V2024FormDefinitionDynamicSchema**
> FormDefinitionDynamicSchemaResponse New-V2024FormDefinitionDynamicSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Generate JSON Schema dynamically.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$FormDefinitionDynamicSchemaRequestAttributes = Initialize-FormDefinitionDynamicSchemaRequestAttributes -FormDefinitionId "00000000-0000-0000-0000-000000000000"
$FormDefinitionDynamicSchemaRequest = Initialize-FormDefinitionDynamicSchemaRequest -Attributes $FormDefinitionDynamicSchemaRequestAttributes -Description "A description" -Id "00000000-0000-0000-0000-000000000000" -Type "action" -VersionNumber 1 # FormDefinitionDynamicSchemaRequest | Body is the request payload to create a form definition dynamic schema (optional)

# Generate JSON Schema dynamically.
try {
    $Result = New-V2024FormDefinitionDynamicSchema -XSailPointExperimental $XSailPointExperimental -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-V2024FormDefinitionDynamicSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Body** | [**FormDefinitionDynamicSchemaRequest**](FormDefinitionDynamicSchemaRequest.md)| Body is the request payload to create a form definition dynamic schema | [optional] 

### Return type

[**FormDefinitionDynamicSchemaResponse**](FormDefinitionDynamicSchemaResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024FormDefinitionFileRequest"></a>
# **New-V2024FormDefinitionFileRequest**
> FormDefinitionFileUploadResponse New-V2024FormDefinitionFileRequest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload new form definition file.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | FormDefinitionID  String specifying FormDefinitionID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$File =  # System.IO.FileInfo | File specifying the multipart

# Upload new form definition file.
try {
    $Result = New-V2024FormDefinitionFileRequest -FormDefinitionID $FormDefinitionID -XSailPointExperimental $XSailPointExperimental -File $File
} catch {
    Write-Host ("Exception occurred when calling New-V2024FormDefinitionFileRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| FormDefinitionID  String specifying FormDefinitionID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| File specifying the multipart | 

### Return type

[**FormDefinitionFileUploadResponse**](FormDefinitionFileUploadResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024FormInstance"></a>
# **New-V2024FormInstance**
> FormInstanceResponse New-V2024FormInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Creates a form instance.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$FormInstanceCreatedBy = Initialize-FormInstanceCreatedBy -Id "00000000-0000-0000-0000-000000000000" -Type "WORKFLOW_EXECUTION"
$FormInstanceRecipient = Initialize-FormInstanceRecipient -Id "00000000-0000-0000-0000-000000000000" -Type "IDENTITY"
$CreateFormInstanceRequest = Initialize-CreateFormInstanceRequest -CreatedBy $FormInstanceCreatedBy -Expire "2023-08-12T20:14:57.74486Z" -FormDefinitionId "00000000-0000-0000-0000-000000000000" -FormInput @{ key_example =  } -Recipients $FormInstanceRecipient -StandAloneForm $false -State "ASSIGNED" -Ttl 1571827560 # CreateFormInstanceRequest | Body is the request payload to create a form instance (optional)

# Creates a form instance.
try {
    $Result = New-V2024FormInstance -XSailPointExperimental $XSailPointExperimental -Body $Body
} catch {
    Write-Host ("Exception occurred when calling New-V2024FormInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Body** | [**CreateFormInstanceRequest**](CreateFormInstanceRequest.md)| Body is the request payload to create a form instance | [optional] 

### Return type

[**FormInstanceResponse**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024FormDefinition"></a>
# **Remove-V2024FormDefinition**
> SystemCollectionsHashtable Remove-V2024FormDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Deletes a form definition.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Deletes a form definition.
try {
    $Result = Remove-V2024FormDefinition -FormDefinitionID $FormDefinitionID -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024FormDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-V2024FormDefinitionsByTenant"></a>
# **Export-V2024FormDefinitionsByTenant**
> ExportFormDefinitionsByTenant200ResponseInner[] Export-V2024FormDefinitionsByTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Offset = 0 # Int64 | Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. (optional) (default to 0)
$Limit = 250 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 250)
$Filters = "name sw "my form"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** (optional) (default to "name")

# List form definitions by tenant.
try {
    $Result = Export-V2024FormDefinitionsByTenant -XSailPointExperimental $XSailPointExperimental -Offset $Offset -Limit $Limit -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Export-V2024FormDefinitionsByTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Offset** | **Int64**| Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. | [optional] [default to 0]
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 250]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** | [optional] [default to &quot;name&quot;]

### Return type

[**ExportFormDefinitionsByTenant200ResponseInner[]**](ExportFormDefinitionsByTenant200ResponseInner.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024FileFromS3"></a>
# **Get-V2024FileFromS3**
> System.IO.FileInfo Get-V2024FileFromS3<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Download definition file by fileId.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | FormDefinitionID  Form definition ID
$FileID = "00000031N0J7R2B57M8YG73J7M.png" # String | FileID  String specifying the hashed name of the uploaded file we are retrieving.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Download definition file by fileId.
try {
    $Result = Get-V2024FileFromS3 -FormDefinitionID $FormDefinitionID -FileID $FileID -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024FileFromS3: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| FormDefinitionID  Form definition ID | 
 **FileID** | **String**| FileID  String specifying the hashed name of the uploaded file we are retrieving. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, image/jpeg, image/png, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024FormDefinitionByKey"></a>
# **Get-V2024FormDefinitionByKey**
> FormDefinitionResponse Get-V2024FormDefinitionByKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Return a form definition.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Return a form definition.
try {
    $Result = Get-V2024FormDefinitionByKey -FormDefinitionID $FormDefinitionID -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024FormDefinitionByKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024FormInstanceByKey"></a>
# **Get-V2024FormInstanceByKey**
> FormInstanceResponse Get-V2024FormInstanceByKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Returns a form instance.

Parameter `{formInstanceID}` should match a form instance ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | Form instance ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Returns a form instance.
try {
    $Result = Get-V2024FormInstanceByKey -FormInstanceID $FormInstanceID -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024FormInstanceByKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| Form instance ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**FormInstanceResponse**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024FormInstanceFile"></a>
# **Get-V2024FormInstanceFile**
> System.IO.FileInfo Get-V2024FormInstanceFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Download instance file by fileId.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | FormInstanceID  Form instance ID
$FileID = "00000031N0J7R2B57M8YG73J7M.png" # String | FileID  String specifying the hashed name of the uploaded file we are retrieving.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Download instance file by fileId.
try {
    $Result = Get-V2024FormInstanceFile -FormInstanceID $FormInstanceID -FileID $FileID -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024FormInstanceFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| FormInstanceID  Form instance ID | 
 **FileID** | **String**| FileID  String specifying the hashed name of the uploaded file we are retrieving. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

**System.IO.FileInfo**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, image/jpeg, image/png, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024FormDefinitions"></a>
# **Import-V2024FormDefinitions**
> ImportFormDefinitions202Response Import-V2024FormDefinitions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject[]><br>

Import form definitions from export.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$FormOwner = Initialize-FormOwner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67" -Name "Grant Smith"
$FormUsedBy = Initialize-FormUsedBy -Type "WORKFLOW" -Id "61940a92-5484-42bc-bc10-b9982b218cdf" -Name "Access Request Form"
$FormDefinitionInput = Initialize-FormDefinitionInput -Id "00000000-0000-0000-0000-000000000000" -Type "STRING" -Label "input1" -Description "A single dynamic scalar value (i.e. number, string, date, etc.) that can be passed into the form for use in conditional logic"

$FormElementValidationsSet = Initialize-FormElementValidationsSet -ValidationType "REQUIRED"
$FormElement = Initialize-FormElement -Id "00000000-0000-0000-0000-000000000000" -ElementType "TEXT" -Config @{ key_example =  } -Key "department" -Validations $FormElementValidationsSet

$ConditionRule = Initialize-ConditionRule -SourceType "INPUT" -Source "department" -Operator "EQ" -ValueType "STRING" -Value 

$ConditionEffectConfig = Initialize-ConditionEffectConfig -DefaultValueLabel "Access to Remove" -Element "8110662963316867"
$ConditionEffect = Initialize-ConditionEffect -EffectType "HIDE" -Config $ConditionEffectConfig

$FormCondition = Initialize-FormCondition -RuleOperator "AND" -Rules $ConditionRule -Effects $ConditionEffect

$FormDefinitionResponse = Initialize-FormDefinitionResponse -Id "00000000-0000-0000-0000-000000000000" -Name "My form" -Description "My form description" -Owner $FormOwner -UsedBy $FormUsedBy -FormInput $FormDefinitionInput -FormElements $FormElement -FormConditions $FormCondition -Created (Get-Date) -Modified (Get-Date)

$ExportFormDefinitionsByTenant200ResponseInner = Initialize-ExportFormDefinitionsByTenant200ResponseInner -Object $FormDefinitionResponse -Self "MySelf" -Version 0 # ExportFormDefinitionsByTenant200ResponseInner[] | Body is the request payload to import form definitions (optional)

# Import form definitions from export.
try {
    $Result = Import-V2024FormDefinitions -XSailPointExperimental $XSailPointExperimental -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Import-V2024FormDefinitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Body** | [**ExportFormDefinitionsByTenant200ResponseInner[]**](ExportFormDefinitionsByTenant200ResponseInner.md)| Body is the request payload to import form definitions | [optional] 

### Return type

[**ImportFormDefinitions202Response**](ImportFormDefinitions202Response.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024FormDefinition"></a>
# **Update-V2024FormDefinition**
> FormDefinitionResponse Update-V2024FormDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Collections.Hashtable[]><br>

Patch a form definition.

Parameter `{formDefinitionID}` should match a form definition ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Body = @{ key_example =  } # Map[] | Body is the request payload to patch a form definition, check: https://jsonpatch.com (optional)

# Patch a form definition.
try {
    $Result = Update-V2024FormDefinition -FormDefinitionID $FormDefinitionID -XSailPointExperimental $XSailPointExperimental -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-V2024FormDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Body** | [**Map[]**](Map.md)| Body is the request payload to patch a form definition, check: https://jsonpatch.com | [optional] 

### Return type

[**FormDefinitionResponse**](FormDefinitionResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024FormInstance"></a>
# **Update-V2024FormInstance**
> FormInstanceResponse Update-V2024FormInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Collections.Hashtable[]><br>

Patch a form instance.

Parameter `{formInstanceID}` should match a form instance ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | Form instance ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Body = @{ key_example =  } # Map[] | Body is the request payload to patch a form instance, check: https://jsonpatch.com (optional)

# Patch a form instance.
try {
    $Result = Update-V2024FormInstance -FormInstanceID $FormInstanceID -XSailPointExperimental $XSailPointExperimental -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-V2024FormInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| Form instance ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Body** | [**Map[]**](Map.md)| Body is the request payload to patch a form instance, check: https://jsonpatch.com | [optional] 

### Return type

[**FormInstanceResponse**](FormInstanceResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024FormDefinitionsByTenant"></a>
# **Search-V2024FormDefinitionsByTenant**
> ListFormDefinitionsByTenantResponse Search-V2024FormDefinitionsByTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Offset = 250 # Int64 | Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. (optional) (default to 0)
$Limit = 250 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 250)
$Filters = "name sw "my form"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** (optional) (default to "name")

# Export form definitions by tenant.
try {
    $Result = Search-V2024FormDefinitionsByTenant -XSailPointExperimental $XSailPointExperimental -Offset $Offset -Limit $Limit -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Search-V2024FormDefinitionsByTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Offset** | **Int64**| Offset  Integer specifying the offset of the first result from the beginning of the collection. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). The offset value is record-based, not page-based, and the index starts at 0. | [optional] [default to 0]
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 250]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, gt, sw, in*  **description**: *eq, gt, sw, in*  **created**: *eq, gt, sw, in*  **modified**: *eq, gt, sw, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, created, modified** | [optional] [default to &quot;name&quot;]

### Return type

[**ListFormDefinitionsByTenantResponse**](ListFormDefinitionsByTenantResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024FormElementDataByElementID"></a>
# **Search-V2024FormElementDataByElementID**
> ListFormElementDataByElementIDResponse Search-V2024FormElementDataByElementID<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormInstanceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormElementID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Retrieves dynamic data by element.

Parameter `{formInstanceID}` should match a form instance ID. Parameter `{formElementID}` should match a form element ID at the data source configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormInstanceID = "00000000-0000-0000-0000-000000000000" # String | Form instance ID
$FormElementID = "1" # String | Form element ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = 250 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 250)
$Filters = "value eq "ID01"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the `in` operator. The `not` composite operator must be used in front of the field. For example, the following is valid: `not value in (""ID01"")` (optional)
$Query = "support" # String | String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a ""starts with"" filter against  several fields. (optional)

# Retrieves dynamic data by element.
try {
    $Result = Search-V2024FormElementDataByElementID -FormInstanceID $FormInstanceID -FormElementID $FormElementID -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Filters $Filters -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Search-V2024FormElementDataByElementID: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormInstanceID** | **String**| Form instance ID | 
 **FormElementID** | **String**| Form element ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 250]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the &#x60;in&#x60; operator. The &#x60;not&#x60; composite operator must be used in front of the field. For example, the following is valid: &#x60;not value in (&quot;&quot;ID01&quot;&quot;)&#x60; | [optional] 
 **Query** | **String**| String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a &quot;&quot;starts with&quot;&quot; filter against  several fields. | [optional] 

### Return type

[**ListFormElementDataByElementIDResponse**](ListFormElementDataByElementIDResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024FormInstancesByTenant"></a>
# **Search-V2024FormInstancesByTenant**
> ListFormInstancesByTenantResponse Search-V2024FormInstancesByTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List form instances by tenant.

No parameters required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List form instances by tenant.
try {
    $Result = Search-V2024FormInstancesByTenant -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Search-V2024FormInstancesByTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ListFormInstancesByTenantResponse**](ListFormInstancesByTenantResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-V2024PreDefinedSelectOptions"></a>
# **Search-V2024PreDefinedSelectOptions**
> ListPredefinedSelectOptionsResponse Search-V2024PreDefinedSelectOptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List predefined select options.

No parameters required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List predefined select options.
try {
    $Result = Search-V2024PreDefinedSelectOptions -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Search-V2024PreDefinedSelectOptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ListPredefinedSelectOptionsResponse**](ListPredefinedSelectOptionsResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Show-V2024PreviewDataSource"></a>
# **Show-V2024PreviewDataSource**
> PreviewDataSourceResponse Show-V2024PreviewDataSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormDefinitionID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormElementPreviewRequest] <PSCustomObject><br>

Preview form definition data source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FormDefinitionID = "00000000-0000-0000-0000-000000000000" # String | Form definition ID
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = 10 # Int64 | Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. (optional) (default to 10)
$Filters = "value eq "ID01"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the `in` operator. The `not` composite operator must be used in front of the field. For example, the following is valid: `not value in (""ID01"")` (optional)
$Query = "ac" # String | String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a ""starts with"" filter against  several fields. (optional)
"accessprofiles"$FormElementDynamicDataSourceConfig = Initialize-FormElementDynamicDataSourceConfig -AggregationBucketField "attributes.cloudStatus.exact" -Indices "accessprofiles" -ObjectType "IDENTITY" -Query "*"
$FormElementDynamicDataSource = Initialize-FormElementDynamicDataSource -Config $FormElementDynamicDataSourceConfig -DataSourceType "STATIC"

$FormElementPreviewRequest = Initialize-FormElementPreviewRequest -DataSource $FormElementDynamicDataSource # FormElementPreviewRequest | Body is the request payload to create a form definition dynamic schema (optional)

# Preview form definition data source.
try {
    $Result = Show-V2024PreviewDataSource -FormDefinitionID $FormDefinitionID -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Filters $Filters -Query $Query -FormElementPreviewRequest $FormElementPreviewRequest
} catch {
    Write-Host ("Exception occurred when calling Show-V2024PreviewDataSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormDefinitionID** | **String**| Form definition ID | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Limit** | **Int64**| Limit  Integer specifying the maximum number of records to return in a single API call. The standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results). If it is not specified, a default limit is used. | [optional] [default to 10]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **value**: *eq, ne, in*  Supported composite operators: *not*  Only a single *not* may be used, and it can only be used with the &#x60;in&#x60; operator. The &#x60;not&#x60; composite operator must be used in front of the field. For example, the following is valid: &#x60;not value in (&quot;&quot;ID01&quot;&quot;)&#x60; | [optional] 
 **Query** | **String**| String that is passed to the underlying API to filter other (non-ID) fields.  For example, for access  profile data sources, this string will be passed to the access profile api and used with a &quot;&quot;starts with&quot;&quot; filter against  several fields. | [optional] 
 **FormElementPreviewRequest** | [**FormElementPreviewRequest**](FormElementPreviewRequest.md)| Body is the request payload to create a form definition dynamic schema | [optional] 

### Return type

[**PreviewDataSourceResponse**](PreviewDataSourceResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

