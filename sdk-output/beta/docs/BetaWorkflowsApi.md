# PSSailpointBeta.PSSailpointBeta/Api.BetaWorkflowsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-BetaWorkflowExecution**](BetaWorkflowsApi.md#Stop-BetaWorkflowExecution) | **POST** /workflow-executions/{id}/cancel | Cancel Workflow Execution by ID
[**New-BetaWorkflow**](BetaWorkflowsApi.md#New-BetaWorkflow) | **POST** /workflows | Create Workflow
[**Invoke-BetaDeleteWorkflow**](BetaWorkflowsApi.md#Invoke-BetaDeleteWorkflow) | **DELETE** /workflows/{id} | Delete Workflow By Id
[**Get-BetaWorkflow**](BetaWorkflowsApi.md#Get-BetaWorkflow) | **GET** /workflows/{id} | Get Workflow By Id
[**Get-BetaWorkflowExecution**](BetaWorkflowsApi.md#Get-BetaWorkflowExecution) | **GET** /workflow-executions/{id} | Get a Workflow Execution
[**Get-BetaWorkflowExecutionHistory**](BetaWorkflowsApi.md#Get-BetaWorkflowExecutionHistory) | **GET** /workflow-executions/{id}/history | Get Workflow Execution History
[**Invoke-BetaListCompleteWorkflowLibrary**](BetaWorkflowsApi.md#Invoke-BetaListCompleteWorkflowLibrary) | **GET** /workflow-library | List Complete Workflow Library
[**Invoke-BetaListWorkflowExecutions**](BetaWorkflowsApi.md#Invoke-BetaListWorkflowExecutions) | **GET** /workflows/{id}/executions | List Workflow Executions
[**Invoke-BetaListWorkflowLibraryActions**](BetaWorkflowsApi.md#Invoke-BetaListWorkflowLibraryActions) | **GET** /workflow-library/actions | List Workflow Library Actions
[**Invoke-BetaListWorkflowLibraryOperators**](BetaWorkflowsApi.md#Invoke-BetaListWorkflowLibraryOperators) | **GET** /workflow-library/operators | List Workflow Library Operators
[**Invoke-BetaListWorkflowLibraryTriggers**](BetaWorkflowsApi.md#Invoke-BetaListWorkflowLibraryTriggers) | **GET** /workflow-library/triggers | List Workflow Library Triggers
[**Invoke-BetaListWorkflows**](BetaWorkflowsApi.md#Invoke-BetaListWorkflows) | **GET** /workflows | List Workflows
[**Invoke-BetaPatchWorkflow**](BetaWorkflowsApi.md#Invoke-BetaPatchWorkflow) | **PATCH** /workflows/{id} | Patch Workflow
[**Submit-BetaExternalExecuteWorkflow**](BetaWorkflowsApi.md#Submit-BetaExternalExecuteWorkflow) | **POST** /workflows/execute/external/{id} | Execute Workflow via External Trigger
[**Submit-BetaWorkflowExternalTrigger**](BetaWorkflowsApi.md#Submit-BetaWorkflowExternalTrigger) | **POST** /workflows/{id}/external/oauth-clients | Generate External Trigger OAuth Client
[**Test-BetaExternalExecuteWorkflow**](BetaWorkflowsApi.md#Test-BetaExternalExecuteWorkflow) | **POST** /workflows/execute/external/{id}/test | Test Workflow via External Trigger
[**Test-BetaWorkflow**](BetaWorkflowsApi.md#Test-BetaWorkflow) | **POST** /workflows/{id}/test | Test Workflow By Id
[**Update-BetaWorkflow**](BetaWorkflowsApi.md#Update-BetaWorkflow) | **PUT** /workflows/{id} | Update Workflow


<a name="Stop-BetaWorkflowExecution"></a>
# **Stop-BetaWorkflowExecution**
> void Stop-BetaWorkflowExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Cancel Workflow Execution by ID

Use this API to cancel a running workflow execution.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | The workflow execution ID

# Cancel Workflow Execution by ID
try {
    $Result = Stop-BetaWorkflowExecution -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Stop-BetaWorkflowExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The workflow execution ID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaWorkflow"></a>
# **New-BetaWorkflow**
> Workflow New-BetaWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWorkflowRequest] <PSCustomObject><br>

Create Workflow

Create a new workflow with the desired trigger and steps specified in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkflowBodyOwner = Initialize-WorkflowBodyOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$WorkflowDefinition = Initialize-WorkflowDefinition -Start "Send Email Test" -Steps @{ key_example =  }

$WorkflowTriggerAttributes = Initialize-WorkflowTriggerAttributes -Id "idn:identity-attributes-changed" -VarFilter "$.changes[?(@.attribute == 'manager')]" -CronString "0 * */3 */5 *"
$WorkflowTrigger = Initialize-WorkflowTrigger -Type "EVENT" -Attributes $WorkflowTriggerAttributes

$CreateWorkflowRequest = Initialize-CreateWorkflowRequest -Name "Send Email" -Owner $WorkflowBodyOwner -Description "Send an email to the identity who's attributes changed." -Definition $WorkflowDefinition -Enabled $false -Trigger $WorkflowTrigger # CreateWorkflowRequest | 

# Create Workflow
try {
    $Result = New-BetaWorkflow -CreateWorkflowRequest $CreateWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateWorkflowRequest** | [**CreateWorkflowRequest**](CreateWorkflowRequest.md)|  | 

### Return type

[**Workflow**](Workflow.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDeleteWorkflow"></a>
# **Invoke-BetaDeleteWorkflow**
> void Invoke-BetaDeleteWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Workflow By Id

Delete a workflow.  **Enabled workflows cannot be deleted**.  They must first be disabled.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Workflow

# Delete Workflow By Id
try {
    $Result = Invoke-BetaDeleteWorkflow -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the Workflow | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaWorkflow"></a>
# **Get-BetaWorkflow**
> Workflow Get-BetaWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Workflow By Id

Get a single workflow by id.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow

# Get Workflow By Id
try {
    $Result = Get-BetaWorkflow -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 

### Return type

[**Workflow**](Workflow.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaWorkflowExecution"></a>
# **Get-BetaWorkflowExecution**
> SystemCollectionsHashtable Get-BetaWorkflowExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Workflow Execution

Get a single workflow execution.  Workflow executions are available for up to 90 days before being archived.  If you attempt to access a workflow execution that has been archived, you will receive a 404 Not Found.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow execution

# Get a Workflow Execution
try {
    $Result = Get-BetaWorkflowExecution -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaWorkflowExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow execution | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaWorkflowExecutionHistory"></a>
# **Get-BetaWorkflowExecutionHistory**
> WorkflowExecutionEvent[] Get-BetaWorkflowExecutionHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Workflow Execution History

Get a detailed history of a single workflow execution.  Workflow executions are available for up to 90 days before being archived.  If you attempt to access a workflow execution that has been archived, you will receive a 404 Not Found.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow execution

# Get Workflow Execution History
try {
    $Result = Get-BetaWorkflowExecutionHistory -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaWorkflowExecutionHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow execution | 

### Return type

[**WorkflowExecutionEvent[]**](WorkflowExecutionEvent.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListCompleteWorkflowLibrary"></a>
# **Invoke-BetaListCompleteWorkflowLibrary**
> ListCompleteWorkflowLibrary200ResponseInner[] Invoke-BetaListCompleteWorkflowLibrary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

List Complete Workflow Library

This lists all triggers, actions, and operators in the library

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

# List Complete Workflow Library
try {
    $Result = Invoke-BetaListCompleteWorkflowLibrary -Limit $Limit -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListCompleteWorkflowLibrary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]

### Return type

[**ListCompleteWorkflowLibrary200ResponseInner[]**](ListCompleteWorkflowLibrary200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListWorkflowExecutions"></a>
# **Invoke-BetaListWorkflowExecutions**
> WorkflowExecution[] Invoke-BetaListWorkflowExecutions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

List Workflow Executions

This lists the executions for a given workflow. Workflow executions are available for up to 90 days before being archived.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow

# List Workflow Executions
try {
    $Result = Invoke-BetaListWorkflowExecutions -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListWorkflowExecutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 

### Return type

[**WorkflowExecution[]**](WorkflowExecution.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListWorkflowLibraryActions"></a>
# **Invoke-BetaListWorkflowLibraryActions**
> WorkflowLibraryAction[] Invoke-BetaListWorkflowLibraryActions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Workflow Library Actions

This lists the workflow actions available to you.

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
$Filters = "id eq "sp:create-campaign"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq* (optional)

# List Workflow Library Actions
try {
    $Result = Invoke-BetaListWorkflowLibraryActions -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListWorkflowLibraryActions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq* | [optional] 

### Return type

[**WorkflowLibraryAction[]**](WorkflowLibraryAction.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListWorkflowLibraryOperators"></a>
# **Invoke-BetaListWorkflowLibraryOperators**
> WorkflowLibraryOperator[] Invoke-BetaListWorkflowLibraryOperators<br>

List Workflow Library Operators

This lists the workflow operators available to you

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Workflow Library Operators
try {
    $Result = Invoke-BetaListWorkflowLibraryOperators
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListWorkflowLibraryOperators: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WorkflowLibraryOperator[]**](WorkflowLibraryOperator.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListWorkflowLibraryTriggers"></a>
# **Invoke-BetaListWorkflowLibraryTriggers**
> WorkflowLibraryTrigger[] Invoke-BetaListWorkflowLibraryTriggers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Workflow Library Triggers

This lists the workflow triggers available to you

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
$Filters = "id eq "idn:identity-attributes-changed"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq* (optional)

# List Workflow Library Triggers
try {
    $Result = Invoke-BetaListWorkflowLibraryTriggers -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListWorkflowLibraryTriggers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq* | [optional] 

### Return type

[**WorkflowLibraryTrigger[]**](WorkflowLibraryTrigger.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListWorkflows"></a>
# **Invoke-BetaListWorkflows**
> Workflow[] Invoke-BetaListWorkflows<br>

List Workflows

List all workflows in the tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Workflows
try {
    $Result = Invoke-BetaListWorkflows
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListWorkflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Workflow[]**](Workflow.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaPatchWorkflow"></a>
# **Invoke-BetaPatchWorkflow**
> Workflow Invoke-BetaPatchWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch Workflow

Partially update an existing Workflow using [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Workflow
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch Workflow
try {
    $Result = Invoke-BetaPatchWorkflow -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaPatchWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the Workflow | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)|  | 

### Return type

[**Workflow**](Workflow.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-BetaExternalExecuteWorkflow"></a>
# **Submit-BetaExternalExecuteWorkflow**
> PostExternalExecuteWorkflow200Response Submit-BetaExternalExecuteWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostExternalExecuteWorkflowRequest] <PSCustomObject><br>

Execute Workflow via External Trigger

This endpoint allows a service outside of IdentityNow to initiate a workflow that uses the ""External Trigger"" step.  The external service will invoke this endpoint with the input data it wants to send to the workflow in the body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow
$PostExternalExecuteWorkflowRequest = Initialize-PostExternalExecuteWorkflowRequest -VarInput # PostExternalExecuteWorkflowRequest |  (optional)

# Execute Workflow via External Trigger
try {
    $Result = Submit-BetaExternalExecuteWorkflow -Id $Id -PostExternalExecuteWorkflowRequest $PostExternalExecuteWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaExternalExecuteWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 
 **PostExternalExecuteWorkflowRequest** | [**PostExternalExecuteWorkflowRequest**](PostExternalExecuteWorkflowRequest.md)|  | [optional] 

### Return type

[**PostExternalExecuteWorkflow200Response**](PostExternalExecuteWorkflow200Response.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-BetaWorkflowExternalTrigger"></a>
# **Submit-BetaWorkflowExternalTrigger**
> WorkflowOAuthClient Submit-BetaWorkflowExternalTrigger<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Generate External Trigger OAuth Client

Create OAuth client ID, client secret, and callback URL for use in an external trigger.  External triggers will need this information to generate an access token to authenticate to the callback URL and submit a trigger payload that will initiate the workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow

# Generate External Trigger OAuth Client
try {
    $Result = Submit-BetaWorkflowExternalTrigger -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaWorkflowExternalTrigger: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 

### Return type

[**WorkflowOAuthClient**](WorkflowOAuthClient.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BetaExternalExecuteWorkflow"></a>
# **Test-BetaExternalExecuteWorkflow**
> TestExternalExecuteWorkflow200Response Test-BetaExternalExecuteWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestExternalExecuteWorkflowRequest] <PSCustomObject><br>

Test Workflow via External Trigger

Validate a workflow with an ""External Trigger"" can receive input.  The response includes the input that the workflow received, which can be used to validate that the input is intact when it reaches the workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow
$TestExternalExecuteWorkflowRequest = Initialize-TestExternalExecuteWorkflowRequest -VarInput # TestExternalExecuteWorkflowRequest |  (optional)

# Test Workflow via External Trigger
try {
    $Result = Test-BetaExternalExecuteWorkflow -Id $Id -TestExternalExecuteWorkflowRequest $TestExternalExecuteWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling Test-BetaExternalExecuteWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 
 **TestExternalExecuteWorkflowRequest** | [**TestExternalExecuteWorkflowRequest**](TestExternalExecuteWorkflowRequest.md)|  | [optional] 

### Return type

[**TestExternalExecuteWorkflow200Response**](TestExternalExecuteWorkflow200Response.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BetaWorkflow"></a>
# **Test-BetaWorkflow**
> TestWorkflow200Response Test-BetaWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestWorkflowRequest] <PSCustomObject><br>

Test Workflow By Id

Test a workflow with the provided input data.  The input data should resemble the input that the trigger will send the workflow.  See the [event trigger documentation](https://developer.sailpoint.com/idn/docs/event-triggers/available) for an example input for the trigger that initiates this workflow. This endpoint will return an execution ID, which can be used to lookup more information about the execution using the `Get a Workflow Execution` endpoint. **This will cause a live run of the workflow, which could result in unintended modifications to your IDN tenant.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow
$TestWorkflowRequest = Initialize-TestWorkflowRequest -VarInput # TestWorkflowRequest | 

# Test Workflow By Id
try {
    $Result = Test-BetaWorkflow -Id $Id -TestWorkflowRequest $TestWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling Test-BetaWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 
 **TestWorkflowRequest** | [**TestWorkflowRequest**](TestWorkflowRequest.md)|  | 

### Return type

[**TestWorkflow200Response**](TestWorkflow200Response.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaWorkflow"></a>
# **Update-BetaWorkflow**
> Workflow Update-BetaWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowBody] <PSCustomObject><br>

Update Workflow

Perform a full update of a workflow.  The updated workflow object is returned in the response.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Workflow
$WorkflowBodyOwner = Initialize-WorkflowBodyOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$WorkflowDefinition = Initialize-WorkflowDefinition -Start "Send Email Test" -Steps @{ key_example =  }

$WorkflowTriggerAttributes = Initialize-WorkflowTriggerAttributes -Id "idn:identity-attributes-changed" -VarFilter "$.changes[?(@.attribute == 'manager')]" -CronString "0 * */3 */5 *"
$WorkflowTrigger = Initialize-WorkflowTrigger -Type "EVENT" -Attributes $WorkflowTriggerAttributes

$WorkflowBody = Initialize-WorkflowBody -Name "Send Email" -Owner $WorkflowBodyOwner -Description "Send an email to the identity who's attributes changed." -Definition $WorkflowDefinition -Enabled $false -Trigger $WorkflowTrigger # WorkflowBody | 

# Update Workflow
try {
    $Result = Update-BetaWorkflow -Id $Id -WorkflowBody $WorkflowBody
} catch {
    Write-Host ("Exception occurred when calling Update-BetaWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the Workflow | 
 **WorkflowBody** | [**WorkflowBody**](WorkflowBody.md)|  | 

### Return type

[**Workflow**](Workflow.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

