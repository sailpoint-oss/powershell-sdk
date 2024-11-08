# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaServiceDeskIntegrationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaServiceDeskIntegration**](BetaServiceDeskIntegrationApi.md#New-BetaServiceDeskIntegration) | **POST** /service-desk-integrations | Create new Service Desk integration
[**Remove-BetaServiceDeskIntegration**](BetaServiceDeskIntegrationApi.md#Remove-BetaServiceDeskIntegration) | **DELETE** /service-desk-integrations/{id} | Delete a Service Desk integration
[**Get-BetaServiceDeskIntegration**](BetaServiceDeskIntegrationApi.md#Get-BetaServiceDeskIntegration) | **GET** /service-desk-integrations/{id} | Get a Service Desk integration
[**Get-BetaServiceDeskIntegrationList**](BetaServiceDeskIntegrationApi.md#Get-BetaServiceDeskIntegrationList) | **GET** /service-desk-integrations | List existing Service Desk integrations
[**Get-BetaServiceDeskIntegrationTemplate**](BetaServiceDeskIntegrationApi.md#Get-BetaServiceDeskIntegrationTemplate) | **GET** /service-desk-integrations/templates/{scriptName} | Service Desk integration template by scriptName
[**Get-BetaServiceDeskIntegrationTypes**](BetaServiceDeskIntegrationApi.md#Get-BetaServiceDeskIntegrationTypes) | **GET** /service-desk-integrations/types | List Service Desk integration types
[**Get-BetaStatusCheckDetails**](BetaServiceDeskIntegrationApi.md#Get-BetaStatusCheckDetails) | **GET** /service-desk-integrations/status-check-configuration | Get the time check configuration
[**Update-BetaServiceDeskIntegration**](BetaServiceDeskIntegrationApi.md#Update-BetaServiceDeskIntegration) | **PATCH** /service-desk-integrations/{id} | Patch a Service Desk Integration
[**Send-BetaServiceDeskIntegration**](BetaServiceDeskIntegrationApi.md#Send-BetaServiceDeskIntegration) | **PUT** /service-desk-integrations/{id} | Update a Service Desk integration
[**Update-BetaStatusCheckDetails**](BetaServiceDeskIntegrationApi.md#Update-BetaStatusCheckDetails) | **PUT** /service-desk-integrations/status-check-configuration | Update the time check configuration


<a id="New-BetaServiceDeskIntegration"></a>
# **New-BetaServiceDeskIntegration**
> ServiceDeskIntegrationDto New-BetaServiceDeskIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceDeskIntegrationDto] <PSCustomObject><br>

Create new Service Desk integration

Create a new Service Desk integration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerDto = Initialize-OwnerDto -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"
$SourceClusterDto = Initialize-SourceClusterDto -Type "CLUSTER" -Id "2c9180847a7fccdd017aa5896f9f4f6f" -Name "Training VA"

$ProvisioningConfigManagedResourceRefsInner = Initialize-ProvisioningConfigManagedResourceRefsInner -Type "SOURCE" -Id  -Name 
$ProvisioningConfigPlanInitializerScript = Initialize-ProvisioningConfigPlanInitializerScript -Source "<?xml version='1.0' encoding='UTF-8'?>\r\n<!DOCTYPE Rule PUBLIC \"sailpoint.dtd\" \"sailpoint.dtd\">\r\n<Rule name=\"Example Rule\" type=\"BeforeProvisioning\">\r\n  <Description>Before Provisioning Rule which changes disables and enables to a modify.</Description>\r\n  <Source><![CDATA[\r\nimport sailpoint.object.*;\r\nimport sailpoint.object.ProvisioningPlan.AccountRequest;\r\nimport sailpoint.object.ProvisioningPlan.AccountRequest.Operation;\r\nimport sailpoint.object.ProvisioningPlan.AttributeRequest;\r\nimport sailpoint.object.ProvisioningPlan;\r\nimport sailpoint.object.ProvisioningPlan.Operation;\r\n\r\nfor ( AccountRequest accountRequest : plan.getAccountRequests() ) {\r\n  if ( accountRequest.getOp().equals( ProvisioningPlan.ObjectOperation.Disable ) ) {\r\n    accountRequest.setOp( ProvisioningPlan.ObjectOperation.Modify );\r\n  }\r\n  if ( accountRequest.getOp().equals( ProvisioningPlan.ObjectOperation.Enable ) ) {\r\n    accountRequest.setOp( ProvisioningPlan.ObjectOperation.Modify );\r\n  }\r\n}\r\n\r\n  ]]></Source>
"
$ProvisioningConfig = Initialize-ProvisioningConfig -UniversalManager $true -ManagedResourceRefs $ProvisioningConfigManagedResourceRefsInner -PlanInitializerScript $ProvisioningConfigPlanInitializerScript -NoProvisioningRequests $true -ProvisioningRequestExpiration 7

$BeforeProvisioningRuleDto = Initialize-BeforeProvisioningRuleDto -Type "RULE" -Id "048eb3d55c5a4758bd07dccb87741c78" -Name "Before Provisioning Airtable Rule"
$ServiceDeskIntegrationDto = Initialize-ServiceDeskIntegrationDto -Name "Service Desk Integration Name" -Description "A very nice Service Desk integration" -Type "ServiceNowSDIM" -OwnerRef $OwnerDto -ClusterRef $SourceClusterDto -Cluster "xyzzy999" -ManagedSources "MyManagedSources" -ProvisioningConfig $ProvisioningConfig -Attributes @{ key_example =  } -BeforeProvisioningRule $BeforeProvisioningRuleDto # ServiceDeskIntegrationDto | The specifics of a new integration to create

# Create new Service Desk integration
try {
    $Result = New-BetaServiceDeskIntegration -ServiceDeskIntegrationDto $ServiceDeskIntegrationDto
} catch {
    Write-Host ("Exception occurred when calling New-BetaServiceDeskIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ServiceDeskIntegrationDto** | [**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md)| The specifics of a new integration to create | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaServiceDeskIntegration"></a>
# **Remove-BetaServiceDeskIntegration**
> void Remove-BetaServiceDeskIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Service Desk integration

Delete an existing Service Desk integration by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "anId" # String | ID of Service Desk integration to delete

# Delete a Service Desk integration
try {
    $Result = Remove-BetaServiceDeskIntegration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaServiceDeskIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of Service Desk integration to delete | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaServiceDeskIntegration"></a>
# **Get-BetaServiceDeskIntegration**
> ServiceDeskIntegrationDto Get-BetaServiceDeskIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Service Desk integration

Get an existing Service Desk integration by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "anId" # String | ID of the Service Desk integration to get

# Get a Service Desk integration
try {
    $Result = Get-BetaServiceDeskIntegration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaServiceDeskIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Service Desk integration to get | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaServiceDeskIntegrationList"></a>
# **Get-BetaServiceDeskIntegrationList**
> ServiceDeskIntegrationDto[] Get-BetaServiceDeskIntegrationList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List existing Service Desk integrations

Get a list of Service Desk integration objects.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** (optional)
$Filters = "id eq 2c91808b6ef1d43e016efba0ce470904" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq*  **type**: *eq, in*  **cluster**: *eq, in* (optional)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List existing Service Desk integrations
try {
    $Result = Get-BetaServiceDeskIntegrationList -Offset $Offset -Limit $Limit -Sorters $Sorters -Filters $Filters -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-BetaServiceDeskIntegrationList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq*  **type**: *eq, in*  **cluster**: *eq, in* | [optional] 
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**ServiceDeskIntegrationDto[]**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaServiceDeskIntegrationTemplate"></a>
# **Get-BetaServiceDeskIntegrationTemplate**
> ServiceDeskIntegrationTemplateDto Get-BetaServiceDeskIntegrationTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>

Service Desk integration template by scriptName

This API endpoint returns an existing Service Desk integration template by scriptName.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the Service Desk integration template to get

# Service Desk integration template by scriptName
try {
    $Result = Get-BetaServiceDeskIntegrationTemplate -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-BetaServiceDeskIntegrationTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the Service Desk integration template to get | 

### Return type

[**ServiceDeskIntegrationTemplateDto**](ServiceDeskIntegrationTemplateDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaServiceDeskIntegrationTypes"></a>
# **Get-BetaServiceDeskIntegrationTypes**
> ServiceDeskIntegrationTemplateType[] Get-BetaServiceDeskIntegrationTypes<br>

List Service Desk integration types

This API endpoint returns the current list of supported Service Desk integration types.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Service Desk integration types
try {
    $Result = Get-BetaServiceDeskIntegrationTypes
} catch {
    Write-Host ("Exception occurred when calling Get-BetaServiceDeskIntegrationTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServiceDeskIntegrationTemplateType[]**](ServiceDeskIntegrationTemplateType.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaStatusCheckDetails"></a>
# **Get-BetaStatusCheckDetails**
> QueuedCheckConfigDetails Get-BetaStatusCheckDetails<br>

Get the time check configuration

Get the time check configuration of queued SDIM tickets.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get the time check configuration
try {
    $Result = Get-BetaStatusCheckDetails
} catch {
    Write-Host ("Exception occurred when calling Get-BetaStatusCheckDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QueuedCheckConfigDetails**](QueuedCheckConfigDetails.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaServiceDeskIntegration"></a>
# **Update-BetaServiceDeskIntegration**
> ServiceDeskIntegrationDto Update-BetaServiceDeskIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchServiceDeskIntegrationRequest] <PSCustomObject><br>

Patch a Service Desk Integration

Update an existing Service Desk integration by ID with a PATCH request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "anId" # String | ID of the Service Desk integration to update
$UpdateMultiHostSourcesRequestInnerValue = Initialize-UpdateMultiHostSourcesRequestInnerValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $UpdateMultiHostSourcesRequestInnerValue

$PatchServiceDeskIntegrationRequest = Initialize-PatchServiceDeskIntegrationRequest -Operations $JsonPatchOperation # PatchServiceDeskIntegrationRequest | A list of SDIM update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  Only `replace` operations are accepted by this endpoint.  A 403 Forbidden Error indicates that a PATCH operation was attempted that is not allowed. 

# Patch a Service Desk Integration
try {
    $Result = Update-BetaServiceDeskIntegration -Id $Id -PatchServiceDeskIntegrationRequest $PatchServiceDeskIntegrationRequest
} catch {
    Write-Host ("Exception occurred when calling Update-BetaServiceDeskIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Service Desk integration to update | 
 **PatchServiceDeskIntegrationRequest** | [**PatchServiceDeskIntegrationRequest**](PatchServiceDeskIntegrationRequest.md)| A list of SDIM update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  Only &#x60;replace&#x60; operations are accepted by this endpoint.  A 403 Forbidden Error indicates that a PATCH operation was attempted that is not allowed.  | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaServiceDeskIntegration"></a>
# **Send-BetaServiceDeskIntegration**
> ServiceDeskIntegrationDto Send-BetaServiceDeskIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceDeskIntegrationDto] <PSCustomObject><br>

Update a Service Desk integration

Update an existing Service Desk integration by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "anId" # String | ID of the Service Desk integration to update
$OwnerDto = Initialize-OwnerDto -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "Support"
$SourceClusterDto = Initialize-SourceClusterDto -Type "CLUSTER" -Id "2c9180847a7fccdd017aa5896f9f4f6f" -Name "Training VA"

$ProvisioningConfigManagedResourceRefsInner = Initialize-ProvisioningConfigManagedResourceRefsInner -Type "SOURCE" -Id  -Name 
$ProvisioningConfigPlanInitializerScript = Initialize-ProvisioningConfigPlanInitializerScript -Source "<?xml version='1.0' encoding='UTF-8'?>\r\n<!DOCTYPE Rule PUBLIC \"sailpoint.dtd\" \"sailpoint.dtd\">\r\n<Rule name=\"Example Rule\" type=\"BeforeProvisioning\">\r\n  <Description>Before Provisioning Rule which changes disables and enables to a modify.</Description>\r\n  <Source><![CDATA[\r\nimport sailpoint.object.*;\r\nimport sailpoint.object.ProvisioningPlan.AccountRequest;\r\nimport sailpoint.object.ProvisioningPlan.AccountRequest.Operation;\r\nimport sailpoint.object.ProvisioningPlan.AttributeRequest;\r\nimport sailpoint.object.ProvisioningPlan;\r\nimport sailpoint.object.ProvisioningPlan.Operation;\r\n\r\nfor ( AccountRequest accountRequest : plan.getAccountRequests() ) {\r\n  if ( accountRequest.getOp().equals( ProvisioningPlan.ObjectOperation.Disable ) ) {\r\n    accountRequest.setOp( ProvisioningPlan.ObjectOperation.Modify );\r\n  }\r\n  if ( accountRequest.getOp().equals( ProvisioningPlan.ObjectOperation.Enable ) ) {\r\n    accountRequest.setOp( ProvisioningPlan.ObjectOperation.Modify );\r\n  }\r\n}\r\n\r\n  ]]></Source>
"
$ProvisioningConfig = Initialize-ProvisioningConfig -UniversalManager $true -ManagedResourceRefs $ProvisioningConfigManagedResourceRefsInner -PlanInitializerScript $ProvisioningConfigPlanInitializerScript -NoProvisioningRequests $true -ProvisioningRequestExpiration 7

$BeforeProvisioningRuleDto = Initialize-BeforeProvisioningRuleDto -Type "RULE" -Id "048eb3d55c5a4758bd07dccb87741c78" -Name "Before Provisioning Airtable Rule"
$ServiceDeskIntegrationDto = Initialize-ServiceDeskIntegrationDto -Name "Service Desk Integration Name" -Description "A very nice Service Desk integration" -Type "ServiceNowSDIM" -OwnerRef $OwnerDto -ClusterRef $SourceClusterDto -Cluster "xyzzy999" -ManagedSources "MyManagedSources" -ProvisioningConfig $ProvisioningConfig -Attributes @{ key_example =  } -BeforeProvisioningRule $BeforeProvisioningRuleDto # ServiceDeskIntegrationDto | The specifics of the integration to update

# Update a Service Desk integration
try {
    $Result = Send-BetaServiceDeskIntegration -Id $Id -ServiceDeskIntegrationDto $ServiceDeskIntegrationDto
} catch {
    Write-Host ("Exception occurred when calling Send-BetaServiceDeskIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Service Desk integration to update | 
 **ServiceDeskIntegrationDto** | [**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md)| The specifics of the integration to update | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaStatusCheckDetails"></a>
# **Update-BetaStatusCheckDetails**
> QueuedCheckConfigDetails Update-BetaStatusCheckDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueuedCheckConfigDetails] <PSCustomObject><br>

Update the time check configuration

Update the time check configuration of queued SDIM tickets.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$QueuedCheckConfigDetails = Initialize-QueuedCheckConfigDetails -ProvisioningStatusCheckIntervalMinutes "30" -ProvisioningMaxStatusCheckDays "2" # QueuedCheckConfigDetails | The modified time check configuration

# Update the time check configuration
try {
    $Result = Update-BetaStatusCheckDetails -QueuedCheckConfigDetails $QueuedCheckConfigDetails
} catch {
    Write-Host ("Exception occurred when calling Update-BetaStatusCheckDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **QueuedCheckConfigDetails** | [**QueuedCheckConfigDetails**](QueuedCheckConfigDetails.md)| The modified time check configuration | 

### Return type

[**QueuedCheckConfigDetails**](QueuedCheckConfigDetails.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

