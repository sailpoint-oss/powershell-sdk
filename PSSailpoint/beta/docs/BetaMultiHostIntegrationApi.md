# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaMultiHostIntegrationApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaMultiHostIntegration**](BetaMultiHostIntegrationApi.md#New-BetaMultiHostIntegration) | **POST** /multihosts | Create Multi-Host Integration
[**New-BetaSourcesWithinMultiHost**](BetaMultiHostIntegrationApi.md#New-BetaSourcesWithinMultiHost) | **POST** /multihosts/{id} | Create Sources Within Multi-Host Integration
[**Remove-BetaMultiHost**](BetaMultiHostIntegrationApi.md#Remove-BetaMultiHost) | **DELETE** /multihosts/{id} | Delete Multi-Host Integration
[**Get-BetaAcctAggregationGroups**](BetaMultiHostIntegrationApi.md#Get-BetaAcctAggregationGroups) | **GET** /multihosts/{multihostId}/acctAggregationGroups | Get Account Aggregation Groups Within Multi-Host Integration ID
[**Get-BetaEntitlementAggregationGroups**](BetaMultiHostIntegrationApi.md#Get-BetaEntitlementAggregationGroups) | **GET** /multihosts/{multiHostId}/entitlementAggregationGroups | Get Entitlement Aggregation Groups Within Multi-Host Integration ID
[**Get-BetaMultiHostIntegrations**](BetaMultiHostIntegrationApi.md#Get-BetaMultiHostIntegrations) | **GET** /multihosts/{id} | Get Multi-Host Integration By ID
[**Get-BetaMultiHostIntegrationsList**](BetaMultiHostIntegrationApi.md#Get-BetaMultiHostIntegrationsList) | **GET** /multihosts | List All Existing Multi-Host Integrations
[**Get-BetaMultiHostSourceCreationErrors**](BetaMultiHostIntegrationApi.md#Get-BetaMultiHostSourceCreationErrors) | **GET** /multihosts/{multiHostId}/sources/errors | List Multi-Host Source Creation Errors
[**Get-BetaMultihostIntegrationTypes**](BetaMultiHostIntegrationApi.md#Get-BetaMultihostIntegrationTypes) | **GET** /multihosts/types | List Multi-Host Integration Types
[**Get-BetaSourcesWithinMultiHost**](BetaMultiHostIntegrationApi.md#Get-BetaSourcesWithinMultiHost) | **GET** /multihosts/{id}/sources | List Sources Within Multi-Host Integration
[**Test-BetaConnectionMultiHostSources**](BetaMultiHostIntegrationApi.md#Test-BetaConnectionMultiHostSources) | **POST** /multihosts/{multihost_id}/sources/testConnection | Test Configuration For Multi-Host Integration
[**Test-BetaSourceConnectionMultihost**](BetaMultiHostIntegrationApi.md#Test-BetaSourceConnectionMultihost) | **GET** /multihosts/{multihost_id}/sources/{sourceId}/testConnection | Test Configuration For Multi-Host Integration&#39;s Single Source
[**Update-BetaMultiHostSources**](BetaMultiHostIntegrationApi.md#Update-BetaMultiHostSources) | **PATCH** /multihosts/{id} | Update Multi-Host Integration


<a id="New-BetaMultiHostIntegration"></a>
# **New-BetaMultiHostIntegration**
> MultiHostIntegrations New-BetaMultiHostIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiHostIntegrationsCreate] <PSCustomObject><br>

Create Multi-Host Integration

This API is used to create Multi-Host Integration. Multi-host Integration holds similar types of sources.  A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiHostIntegrationsOwner = Initialize-MultiHostIntegrationsOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$MultiHostIntegrationsCluster = Initialize-MultiHostIntegrationsCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$MultiHostIntegrationsManagementWorkgroup = Initialize-MultiHostIntegrationsManagementWorkgroup -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c2222" -Name "My Management Workgroup"
$MultiHostIntegrationsCreate = Initialize-MultiHostIntegrationsCreate -Name "My Multi-Host Integration" -Description "This is the Multi-Host Integration." -Owner $MultiHostIntegrationsOwner -Cluster $MultiHostIntegrationsCluster -Connector "multihost-microsoft-sql-server" -ConnectorAttributes @{ key_example =  } -ManagementWorkgroup $MultiHostIntegrationsManagementWorkgroup -Created (Get-Date) -Modified (Get-Date) # MultiHostIntegrationsCreate | The specifics of the Multi-Host Integration to create

# Create Multi-Host Integration
try {
    $Result = New-BetaMultiHostIntegration -MultiHostIntegrationsCreate $MultiHostIntegrationsCreate
} catch {
    Write-Host ("Exception occurred when calling New-BetaMultiHostIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultiHostIntegrationsCreate** | [**MultiHostIntegrationsCreate**](MultiHostIntegrationsCreate.md)| The specifics of the Multi-Host Integration to create | 

### Return type

[**MultiHostIntegrations**](MultiHostIntegrations.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-BetaSourcesWithinMultiHost"></a>
# **New-BetaSourcesWithinMultiHost**
> void New-BetaSourcesWithinMultiHost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiHostIntegrationsCreateSources] <PSCustomObject[]><br>

Create Sources Within Multi-Host Integration

This API is used to create sources within Multi-Host Integration. Multi-Host Integration holds similar types of sources.  A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1326" # String | ID of the Multi-Host Integration.
$MultiHostIntegrationsCreateSources = Initialize-MultiHostIntegrationsCreateSources -Name "My Source" -Description "This is the corporate directory." -ConnectorAttributes @{ key_example =  } # MultiHostIntegrationsCreateSources[] | The specifics of the sources to create within Multi-Host Integration.

# Create Sources Within Multi-Host Integration
try {
    $Result = New-BetaSourcesWithinMultiHost -Id $Id -MultiHostIntegrationsCreateSources $MultiHostIntegrationsCreateSources
} catch {
    Write-Host ("Exception occurred when calling New-BetaSourcesWithinMultiHost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Multi-Host Integration. | 
 **MultiHostIntegrationsCreateSources** | [**MultiHostIntegrationsCreateSources[]**](MultiHostIntegrationsCreateSources.md)| The specifics of the sources to create within Multi-Host Integration. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaMultiHost"></a>
# **Remove-BetaMultiHost**
> void Remove-BetaMultiHost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Multi-Host Integration

Delete an existing Multi-Host Integration by ID.    A token with Org Admin or Multi Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1326" # String | ID of Multi-Host Integration to delete.

# Delete Multi-Host Integration
try {
    $Result = Remove-BetaMultiHost -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaMultiHost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of Multi-Host Integration to delete. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAcctAggregationGroups"></a>
# **Get-BetaAcctAggregationGroups**
> MultiHostIntegrationsAggScheduleUpdate Get-BetaAcctAggregationGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiHostId] <String><br>

Get Account Aggregation Groups Within Multi-Host Integration ID

This API will return array of account aggregation groups within provided Multi-Host Integration ID.  A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiHostId = "aMultiHostId" # String | ID of the Multi-Host Integration to update

# Get Account Aggregation Groups Within Multi-Host Integration ID
try {
    $Result = Get-BetaAcctAggregationGroups -MultiHostId $MultiHostId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAcctAggregationGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultiHostId** | **String**| ID of the Multi-Host Integration to update | 

### Return type

[**MultiHostIntegrationsAggScheduleUpdate**](MultiHostIntegrationsAggScheduleUpdate.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaEntitlementAggregationGroups"></a>
# **Get-BetaEntitlementAggregationGroups**
> MultiHostIntegrationsAggScheduleUpdate Get-BetaEntitlementAggregationGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiHostId] <String><br>

Get Entitlement Aggregation Groups Within Multi-Host Integration ID

This API will return array of aggregation groups within provided Multi-Host Integration ID.    A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiHostId = "aMultiHostId" # String | ID of the Multi-Host Integration to update

# Get Entitlement Aggregation Groups Within Multi-Host Integration ID
try {
    $Result = Get-BetaEntitlementAggregationGroups -MultiHostId $MultiHostId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaEntitlementAggregationGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultiHostId** | **String**| ID of the Multi-Host Integration to update | 

### Return type

[**MultiHostIntegrationsAggScheduleUpdate**](MultiHostIntegrationsAggScheduleUpdate.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaMultiHostIntegrations"></a>
# **Get-BetaMultiHostIntegrations**
> MultiHostIntegrations Get-BetaMultiHostIntegrations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Multi-Host Integration By ID

Get an existing Multi-Host Integration.   A token with Org Admin or Multi-Host Integration Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1326" # String | ID of the Multi-Host Integration.

# Get Multi-Host Integration By ID
try {
    $Result = Get-BetaMultiHostIntegrations -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMultiHostIntegrations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Multi-Host Integration. | 

### Return type

[**MultiHostIntegrations**](MultiHostIntegrations.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaMultiHostIntegrationsList"></a>
# **Get-BetaMultiHostIntegrationsList**
> MultiHostIntegrations[] Get-BetaMultiHostIntegrationsList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>

List All Existing Multi-Host Integrations

Get a list of Multi-Host Integrations.    A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

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
$Filters = "id eq 2c91808b6ef1d43e016efba0ce470904" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **type**: *in*  **forSubAdminId**: *in* (optional)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$ForSubadmin = "5168015d32f890ca15812c9180835d2e" # String | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity or SOURCE_SUBADMIN identity.  The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity's ID.  A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. (optional)

# List All Existing Multi-Host Integrations
try {
    $Result = Get-BetaMultiHostIntegrationsList -Offset $Offset -Limit $Limit -Sorters $Sorters -Filters $Filters -Count $Count -ForSubadmin $ForSubadmin
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMultiHostIntegrationsList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **type**: *in*  **forSubAdminId**: *in* | [optional] 
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **ForSubadmin** | **String**| If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity or SOURCE_SUBADMIN identity.  The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity&#39;s ID.  A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. | [optional] 

### Return type

[**MultiHostIntegrations[]**](MultiHostIntegrations.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaMultiHostSourceCreationErrors"></a>
# **Get-BetaMultiHostSourceCreationErrors**
> SourceCreationErrors[] Get-BetaMultiHostSourceCreationErrors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiHostId] <String><br>

List Multi-Host Source Creation Errors

Get a list of sources creation errors within Multi-Host Integration ID.    A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultiHostId = "004091cb79b04636b88662afa50a4440" # String | ID of the Multi-Host Integration

# List Multi-Host Source Creation Errors
try {
    $Result = Get-BetaMultiHostSourceCreationErrors -MultiHostId $MultiHostId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMultiHostSourceCreationErrors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultiHostId** | **String**| ID of the Multi-Host Integration | 

### Return type

[**SourceCreationErrors[]**](SourceCreationErrors.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaMultihostIntegrationTypes"></a>
# **Get-BetaMultihostIntegrationTypes**
> MultiHostIntegrationTemplateType[] Get-BetaMultihostIntegrationTypes<br>

List Multi-Host Integration Types

This API endpoint returns the current list of supported Multi-Host Integration types.    A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Multi-Host Integration Types
try {
    $Result = Get-BetaMultihostIntegrationTypes
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMultihostIntegrationTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MultiHostIntegrationTemplateType[]**](MultiHostIntegrationTemplateType.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSourcesWithinMultiHost"></a>
# **Get-BetaSourcesWithinMultiHost**
> MultiHostSources[] Get-BetaSourcesWithinMultiHost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Sources Within Multi-Host Integration

Get a list of sources within Multi-Host Integration ID.    A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

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
$Filters = "id eq 2c91808b6ef1d43e016efba0ce470904" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *in* (optional)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List Sources Within Multi-Host Integration
try {
    $Result = Get-BetaSourcesWithinMultiHost -Offset $Offset -Limit $Limit -Sorters $Sorters -Filters $Filters -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourcesWithinMultiHost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *in* | [optional] 
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**MultiHostSources[]**](MultiHostSources.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-BetaConnectionMultiHostSources"></a>
# **Test-BetaConnectionMultiHostSources**
> void Test-BetaConnectionMultiHostSources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultihostId] <String><br>

Test Configuration For Multi-Host Integration

This endpoint performs a more detailed validation of the Multi-Host Integration's configuration.  A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultihostId = "2c91808568c529c60168cca6f90c1324" # String | ID of the Multi-Host Integration

# Test Configuration For Multi-Host Integration
try {
    $Result = Test-BetaConnectionMultiHostSources -MultihostId $MultihostId
} catch {
    Write-Host ("Exception occurred when calling Test-BetaConnectionMultiHostSources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultihostId** | **String**| ID of the Multi-Host Integration | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-BetaSourceConnectionMultihost"></a>
# **Test-BetaSourceConnectionMultihost**
> TestSourceConnectionMultihost200Response Test-BetaSourceConnectionMultihost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultihostId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Test Configuration For Multi-Host Integration's Single Source

This endpoint performs a more detailed validation of the source's configuration.    A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultihostId = "2c91808568c529c60168cca6f90c1326" # String | ID of the Multi-Host Integration
$SourceId = "2c91808568c529f60168cca6f90c1324" # String | ID of the source within the Multi-Host Integration

# Test Configuration For Multi-Host Integration's Single Source
try {
    $Result = Test-BetaSourceConnectionMultihost -MultihostId $MultihostId -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Test-BetaSourceConnectionMultihost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultihostId** | **String**| ID of the Multi-Host Integration | 
 **SourceId** | **String**| ID of the source within the Multi-Host Integration | 

### Return type

[**TestSourceConnectionMultihost200Response**](TestSourceConnectionMultihost200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaMultiHostSources"></a>
# **Update-BetaMultiHostSources**
> void Update-BetaMultiHostSources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultihostId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateMultiHostSourcesRequestInner] <PSCustomObject[]><br>

Update Multi-Host Integration

Update existing sources within Multi-Host Integration.  A token with Org Admin or Multi-Host Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MultihostId = "anId" # String | ID of the Multi-Host Integration to update.
$UpdateMultiHostSourcesRequestInnerValue = Initialize-UpdateMultiHostSourcesRequestInnerValue 
$UpdateMultiHostSourcesRequestInner = Initialize-UpdateMultiHostSourcesRequestInner -Op "add" -Path "/description" -Value $UpdateMultiHostSourcesRequestInnerValue # UpdateMultiHostSourcesRequestInner[] | This endpoint allows you to update a Multi-Host Integration. 

# Update Multi-Host Integration
try {
    $Result = Update-BetaMultiHostSources -MultihostId $MultihostId -UpdateMultiHostSourcesRequestInner $UpdateMultiHostSourcesRequestInner
} catch {
    Write-Host ("Exception occurred when calling Update-BetaMultiHostSources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultihostId** | **String**| ID of the Multi-Host Integration to update. | 
 **UpdateMultiHostSourcesRequestInner** | [**UpdateMultiHostSourcesRequestInner[]**](UpdateMultiHostSourcesRequestInner.md)| This endpoint allows you to update a Multi-Host Integration.  | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

