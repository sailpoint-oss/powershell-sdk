# PSSailpoint.PSSailpoint\Api.WorkflowsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Suspend-WorkflowExecution**](WorkflowsApi.md#Suspend-WorkflowExecution) | **POST** /workflow-executions/{id}/cancel | Cancel Workflow Execution by ID
[**New-ExternalExecuteWorkflow**](WorkflowsApi.md#New-ExternalExecuteWorkflow) | **POST** /workflows/execute/external/{id} | Execute Workflow via External Trigger
[**New-Workflow**](WorkflowsApi.md#New-Workflow) | **POST** /workflows/{id} | Create Workflow
[**New-WorkflowExternalTrigger**](WorkflowsApi.md#New-WorkflowExternalTrigger) | **POST** /workflows/{id}/external/oauth-clients | Generate External Trigger OAuth Client
[**Remove-Workflow**](WorkflowsApi.md#Remove-Workflow) | **DELETE** /workflows/{id} | Delete Workflow By Id
[**Get-Workflow**](WorkflowsApi.md#Get-Workflow) | **GET** /workflows/{id} | Get Workflow By Id
[**Get-WorkflowExecution**](WorkflowsApi.md#Get-WorkflowExecution) | **GET** /workflow-executions/{id} | Get Workflow Execution
[**Get-WorkflowExecutionHistory**](WorkflowsApi.md#Get-WorkflowExecutionHistory) | **GET** /workflow-executions/{id}/history | Get Workflow Execution History
[**Get-WorkflowExecutions**](WorkflowsApi.md#Get-WorkflowExecutions) | **GET** /workflows/{id}/executions | List Workflow Executions
[**Get-CompleteWorkflowLibrary**](WorkflowsApi.md#Get-CompleteWorkflowLibrary) | **GET** /workflow-library | List Complete Workflow Library
[**Get-WorkflowLibraryActions**](WorkflowsApi.md#Get-WorkflowLibraryActions) | **GET** /workflow-library/actions | List Workflow Library Actions
[**Get-WorkflowLibraryOperators**](WorkflowsApi.md#Get-WorkflowLibraryOperators) | **GET** /workflow-library/operators | List Workflow Library Operators
[**Get-WorkflowLibraryTriggers**](WorkflowsApi.md#Get-WorkflowLibraryTriggers) | **GET** /workflow-library/triggers | List Workflow Library Triggers
[**Get-Workflows**](WorkflowsApi.md#Get-Workflows) | **GET** /workflows | List Workflows
[**Update-Workflow**](WorkflowsApi.md#Update-Workflow) | **PATCH** /workflows/{id} | Patch Workflow
[**Send-Workflow**](WorkflowsApi.md#Send-Workflow) | **PUT** /workflows/{id} | Update Workflow
[**Test-ExternalExecuteWorkflow**](WorkflowsApi.md#Test-ExternalExecuteWorkflow) | **POST** /workflows/execute/external/{id}/test | Test Workflow via External Trigger
[**Test-Workflow**](WorkflowsApi.md#Test-Workflow) | **POST** /workflows/{id}/test | Test Workflow By Id


<a id="Suspend-WorkflowExecution"></a>
# **Suspend-WorkflowExecution**
> void Suspend-WorkflowExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Cancel Workflow Execution by ID

Use this API to cancel a running workflow execution.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | The workflow execution ID

# Cancel Workflow Execution by ID
try {
    $Result = Suspend-WorkflowExecution -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Suspend-WorkflowExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ExternalExecuteWorkflow"></a>
# **New-ExternalExecuteWorkflow**
> CreateExternalExecuteWorkflow200Response New-ExternalExecuteWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateExternalExecuteWorkflowRequest] <PSCustomObject><br>

Execute Workflow via External Trigger

This endpoint allows a service outside of IdentityNow to initiate a workflow that uses the ""External Trigger"" step.  The external service will invoke this endpoint with the input data it wants to send to the workflow in the body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow
$CreateExternalExecuteWorkflowRequest = Initialize-CreateExternalExecuteWorkflowRequest -VarInput # CreateExternalExecuteWorkflowRequest |  (optional)

# Execute Workflow via External Trigger
try {
    $Result = New-ExternalExecuteWorkflow -Id $Id -CreateExternalExecuteWorkflowRequest $CreateExternalExecuteWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling New-ExternalExecuteWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the workflow | 
 **CreateExternalExecuteWorkflowRequest** | [**CreateExternalExecuteWorkflowRequest**](CreateExternalExecuteWorkflowRequest.md)|  | [optional] 

### Return type

[**CreateExternalExecuteWorkflow200Response**](CreateExternalExecuteWorkflow200Response.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-Workflow"></a>
# **New-Workflow**
> Workflow New-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWorkflowRequest] <PSCustomObject><br>

Create Workflow

Create a new workflow with the desired trigger and steps specified in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkflowBodyOwner = Initialize-WorkflowBodyOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$WorkflowDefinition = Initialize-WorkflowDefinition -Start "Send Email Test" -Steps @{ key_example =  }

$WorkflowTriggerAttributes = Initialize-WorkflowTriggerAttributes -Id "idn:identity-attributes-changed" -VarFilter "$.changes[?(@.attribute == 'manager')]" -Description "Run a search and notify the results" -Name "search-and-notify" -ClientId "87e239b2-b85b-4bde-b9a7-55bf304ddcdc" -Url "https://tenant.api.identitynow.com/beta/workflows/execute/external/c79e0079-562c-4df5-aa73-60a9e25c916d" -CronString "0 9 * * 1" -Frequency "daily" -TimeZone "America/Chicago" -WeeklyDays "MyWeeklyDays" -WeeklyTimes "MyWeeklyTimes"
$WorkflowTrigger = Initialize-WorkflowTrigger -Type "EVENT" -DisplayName "MyDisplayName" -Attributes $WorkflowTriggerAttributes

$CreateWorkflowRequest = Initialize-CreateWorkflowRequest -Name "Send Email" -Owner $WorkflowBodyOwner -Description "Send an email to the identity who's attributes changed." -Definition $WorkflowDefinition -Enabled $false -Trigger $WorkflowTrigger # CreateWorkflowRequest | 

# Create Workflow
try {
    $Result = New-Workflow -CreateWorkflowRequest $CreateWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling New-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-WorkflowExternalTrigger"></a>
# **New-WorkflowExternalTrigger**
> WorkflowOAuthClient New-WorkflowExternalTrigger<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Generate External Trigger OAuth Client

Create OAuth client ID, client secret, and callback URL for use in an external trigger.  External triggers will need this information to generate an access token to authenticate to the callback URL and submit a trigger payload that will initiate the workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow

# Generate External Trigger OAuth Client
try {
    $Result = New-WorkflowExternalTrigger -Id $Id
} catch {
    Write-Host ("Exception occurred when calling New-WorkflowExternalTrigger: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Workflow"></a>
# **Remove-Workflow**
> void Remove-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Workflow By Id

Delete a workflow.  **Enabled workflows cannot be deleted**.  They must first be disabled.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Workflow

# Delete Workflow By Id
try {
    $Result = Remove-Workflow -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Workflow"></a>
# **Get-Workflow**
> Workflow Get-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Workflow By Id

Get a single workflow by id.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow

# Get Workflow By Id
try {
    $Result = Get-Workflow -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowExecution"></a>
# **Get-WorkflowExecution**
> SystemCollectionsHashtable Get-WorkflowExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Workflow Execution

Use this API to get a single workflow execution. Workflow executions are available for up to 90 days before being archived. If you attempt to access a workflow execution that has been archived, you will receive a ""404 Not Found"" response.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Workflow execution ID.

# Get Workflow Execution
try {
    $Result = Get-WorkflowExecution -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Workflow execution ID. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowExecutionHistory"></a>
# **Get-WorkflowExecutionHistory**
> WorkflowExecutionEvent[] Get-WorkflowExecutionHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Workflow Execution History

Get a detailed history of a single workflow execution.  Workflow executions are available for up to 90 days before being archived.  If you attempt to access a workflow execution that has been archived, you will receive a 404 Not Found.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow execution

# Get Workflow Execution History
try {
    $Result = Get-WorkflowExecutionHistory -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowExecutionHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowExecutions"></a>
# **Get-WorkflowExecutions**
> WorkflowExecution[] Get-WorkflowExecutions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Workflow Executions

Use this API to list a specified workflow's executions. Workflow executions are available for up to 90 days before being archived. By default, you can get a maximum of 250 executions. To get executions past the first 250 records, you can do the following: 1. Use the [Get Workflows](https://developer.sailpoint.com/idn/api/beta/list-workflows) endpoint to get your workflows. 2. Get your workflow ID from the response. 3. You can then do either of the following:    - Filter to find relevant workflow executions.   For example, you can filter for failed workflow executions: `GET /workflows/:workflowID/executions?filters=status eq ""Failed""`    - Paginate through results with the `offset` parameter.   For example, you can page through 50 executions per page and use that as a way to get to the records past the first 250.   Refer to [Paginating Results](https://developer.sailpoint.com/idn/api/standard-collection-parameters#paginating-results) for more information about the query parameters you can use to achieve pagination.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Workflow ID.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "status eq "Failed"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **startTime**: *eq, lt, le, gt, ge*  **status**: *eq* (optional)

# List Workflow Executions
try {
    $Result = Get-WorkflowExecutions -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowExecutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Workflow ID. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **startTime**: *eq, lt, le, gt, ge*  **status**: *eq* | [optional] 

### Return type

[**WorkflowExecution[]**](WorkflowExecution.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CompleteWorkflowLibrary"></a>
# **Get-CompleteWorkflowLibrary**
> ListCompleteWorkflowLibrary200ResponseInner[] Get-CompleteWorkflowLibrary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

List Complete Workflow Library

This lists all triggers, actions, and operators in the library

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# List Complete Workflow Library
try {
    $Result = Get-CompleteWorkflowLibrary -Limit $Limit -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Get-CompleteWorkflowLibrary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowLibraryActions"></a>
# **Get-WorkflowLibraryActions**
> WorkflowLibraryAction[] Get-WorkflowLibraryActions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Workflow Library Actions

This lists the workflow actions available to you.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Filters = "id eq "sp:create-campaign"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq* (optional)

# List Workflow Library Actions
try {
    $Result = Get-WorkflowLibraryActions -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowLibraryActions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowLibraryOperators"></a>
# **Get-WorkflowLibraryOperators**
> WorkflowLibraryOperator[] Get-WorkflowLibraryOperators<br>

List Workflow Library Operators

This lists the workflow operators available to you

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Workflow Library Operators
try {
    $Result = Get-WorkflowLibraryOperators
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowLibraryOperators: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WorkflowLibraryOperator[]**](WorkflowLibraryOperator.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowLibraryTriggers"></a>
# **Get-WorkflowLibraryTriggers**
> WorkflowLibraryTrigger[] Get-WorkflowLibraryTriggers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Workflow Library Triggers

This lists the workflow triggers available to you

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Filters = "id eq "idn:identity-attributes-changed"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq* (optional)

# List Workflow Library Triggers
try {
    $Result = Get-WorkflowLibraryTriggers -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowLibraryTriggers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Workflows"></a>
# **Get-Workflows**
> Workflow[] Get-Workflows<br>

List Workflows

List all workflows in the tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Workflows
try {
    $Result = Get-Workflows
} catch {
    Write-Host ("Exception occurred when calling Get-Workflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Workflow[]**](Workflow.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Workflow"></a>
# **Update-Workflow**
> Workflow Update-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch Workflow

Partially update an existing Workflow using [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Workflow
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | 

# Patch Workflow
try {
    $Result = Update-Workflow -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-Workflow"></a>
# **Send-Workflow**
> Workflow Send-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowBody] <PSCustomObject><br>

Update Workflow

Perform a full update of a workflow.  The updated workflow object is returned in the response.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Workflow
$WorkflowBodyOwner = Initialize-WorkflowBodyOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$WorkflowDefinition = Initialize-WorkflowDefinition -Start "Send Email Test" -Steps @{ key_example =  }

$WorkflowTriggerAttributes = Initialize-WorkflowTriggerAttributes -Id "idn:identity-attributes-changed" -VarFilter "$.changes[?(@.attribute == 'manager')]" -Description "Run a search and notify the results" -Name "search-and-notify" -ClientId "87e239b2-b85b-4bde-b9a7-55bf304ddcdc" -Url "https://tenant.api.identitynow.com/beta/workflows/execute/external/c79e0079-562c-4df5-aa73-60a9e25c916d" -CronString "0 9 * * 1" -Frequency "daily" -TimeZone "America/Chicago" -WeeklyDays "MyWeeklyDays" -WeeklyTimes "MyWeeklyTimes"
$WorkflowTrigger = Initialize-WorkflowTrigger -Type "EVENT" -DisplayName "MyDisplayName" -Attributes $WorkflowTriggerAttributes

$WorkflowBody = Initialize-WorkflowBody -Name "Send Email" -Owner $WorkflowBodyOwner -Description "Send an email to the identity who's attributes changed." -Definition $WorkflowDefinition -Enabled $false -Trigger $WorkflowTrigger # WorkflowBody | 

# Update Workflow
try {
    $Result = Send-Workflow -Id $Id -WorkflowBody $WorkflowBody
} catch {
    Write-Host ("Exception occurred when calling Send-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-ExternalExecuteWorkflow"></a>
# **Test-ExternalExecuteWorkflow**
> TestExternalExecuteWorkflow200Response Test-ExternalExecuteWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestExternalExecuteWorkflowRequest] <PSCustomObject><br>

Test Workflow via External Trigger

Validate a workflow with an ""External Trigger"" can receive input.  The response includes the input that the workflow received, which can be used to validate that the input is intact when it reaches the workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow
$TestExternalExecuteWorkflowRequest = Initialize-TestExternalExecuteWorkflowRequest -VarInput # TestExternalExecuteWorkflowRequest |  (optional)

# Test Workflow via External Trigger
try {
    $Result = Test-ExternalExecuteWorkflow -Id $Id -TestExternalExecuteWorkflowRequest $TestExternalExecuteWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling Test-ExternalExecuteWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-Workflow"></a>
# **Test-Workflow**
> TestWorkflow200Response Test-Workflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestWorkflowRequest] <PSCustomObject><br>

Test Workflow By Id

Test a workflow with the provided input data.  The input data should resemble the input that the trigger will send the workflow.  See the [event trigger documentation](https://developer.sailpoint.com/idn/docs/event-triggers/available) for an example input for the trigger that initiates this workflow. This endpoint will return an execution ID, which can be used to lookup more information about the execution using the `Get a Workflow Execution` endpoint. **This will cause a live run of the workflow, which could result in unintended modifications to your IDN tenant.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the workflow
$TestWorkflowRequest = Initialize-TestWorkflowRequest -VarInput # TestWorkflowRequest | 

# Test Workflow By Id
try {
    $Result = Test-Workflow -Id $Id -TestWorkflowRequest $TestWorkflowRequest
} catch {
    Write-Host ("Exception occurred when calling Test-Workflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

