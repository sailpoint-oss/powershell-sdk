# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ManagedClustersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ManagedCluster**](V2024ManagedClustersApi.md#New-V2024ManagedCluster) | **POST** /managed-clusters | Create a new Managed Cluster
[**Remove-V2024ManagedCluster**](V2024ManagedClustersApi.md#Remove-V2024ManagedCluster) | **DELETE** /managed-clusters/{id} | Delete a Managed Cluster
[**Get-V2024ClientLogConfiguration**](V2024ManagedClustersApi.md#Get-V2024ClientLogConfiguration) | **GET** /managed-clusters/{id}/log-config | Get Managed Cluster&#39;s log configuration
[**Get-V2024ManagedCluster**](V2024ManagedClustersApi.md#Get-V2024ManagedCluster) | **GET** /managed-clusters/{id} | Get a specified Managed Cluster.
[**Get-V2024ManagedClusters**](V2024ManagedClustersApi.md#Get-V2024ManagedClusters) | **GET** /managed-clusters | Retrieve all Managed Clusters.
[**Send-V2024ClientLogConfiguration**](V2024ManagedClustersApi.md#Send-V2024ClientLogConfiguration) | **PUT** /managed-clusters/{id}/log-config | Update Managed Cluster&#39;s log configuration
[**Update-V2024ManagedCluster**](V2024ManagedClustersApi.md#Update-V2024ManagedCluster) | **PATCH** /managed-clusters/{id} | Update a Managed Cluster


<a id="New-V2024ManagedCluster"></a>
# **New-V2024ManagedCluster**
> ManagedCluster New-V2024ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ManagedClusterRequest] <PSCustomObject><br>

Create a new Managed Cluster

Create a new Managed Cluster. The API returns a result that includes the Managed Cluster ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ManagedClusterRequest = Initialize-ManagedClusterRequest -Name "Managed Cluster Name" -Type "idn" -Configuration @{ key_example = "MyInner" } -Description "A short description of the managed cluster." # ManagedClusterRequest | 

# Create a new Managed Cluster
try {
    $Result = New-V2024ManagedCluster -ManagedClusterRequest $ManagedClusterRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ManagedClusterRequest** | [**ManagedClusterRequest**](ManagedClusterRequest.md)|  | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ManagedCluster"></a>
# **Remove-V2024ManagedCluster**
> void Remove-V2024ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveClients] <System.Nullable[Boolean]><br>

Delete a Managed Cluster

Delete an existing Managed Cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180897de347a2017de8859e8c5039" # String | Managed Cluster ID.
$RemoveClients = $false # Boolean | Flag to determine the need to delete a cluster with clients (optional) (default to $false)

# Delete a Managed Cluster
try {
    $Result = Remove-V2024ManagedCluster -Id $Id -RemoveClients $RemoveClients
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed Cluster ID. | 
 **RemoveClients** | **Boolean**| Flag to determine the need to delete a cluster with clients | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ClientLogConfiguration"></a>
# **Get-V2024ClientLogConfiguration**
> ClientLogConfiguration Get-V2024ClientLogConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Managed Cluster's log configuration

Get managed cluster's log configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | ID of ManagedCluster to get log configuration for

# Get Managed Cluster's log configuration
try {
    $Result = Get-V2024ClientLogConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ClientLogConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of ManagedCluster to get log configuration for | 

### Return type

[**ClientLogConfiguration**](ClientLogConfiguration.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ManagedCluster"></a>
# **Get-V2024ManagedCluster**
> ManagedCluster Get-V2024ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a specified Managed Cluster.

Retrieve a ManagedCluster by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180897de347a2017de8859e8c5039" # String | ManagedCluster ID.

# Get a specified Managed Cluster.
try {
    $Result = Get-V2024ManagedCluster -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ManagedCluster ID. | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ManagedClusters"></a>
# **Get-V2024ManagedClusters**
> ManagedCluster[] Get-V2024ManagedClusters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Retrieve all Managed Clusters.

Retrieve all Managed Clusters for the current Org, based on request context.

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
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "operational eq "operation"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **operational**: *eq* (optional)

# Retrieve all Managed Clusters.
try {
    $Result = Get-V2024ManagedClusters -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ManagedClusters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **operational**: *eq* | [optional] 

### Return type

[**ManagedCluster[]**](ManagedCluster.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024ClientLogConfiguration"></a>
# **Send-V2024ClientLogConfiguration**
> ClientLogConfiguration Send-V2024ClientLogConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutClientLogConfigurationRequest] <PSCustomObject><br>

Update Managed Cluster's log configuration

Update managed cluster's log configuration.  Only one of `durationMinutes` or `expiration` may be specified, up to 1440 minutes (24 hours) in the future. If neither is specified, the default value for `durationMinutes` will be 240.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | ID of ManagedCluster to update log configuration for
$PutClientLogConfigurationRequest = Initialize-PutClientLogConfigurationRequest -ClientId "3a38a51992e8445ab51a549c0a70ee66" -DurationMinutes 120 -RootLevel "false" -LogLevels @{ key_example = "false" } -Expiration (Get-Date) # PutClientLogConfigurationRequest | ClientLogConfiguration for given ManagedCluster

# Update Managed Cluster's log configuration
try {
    $Result = Send-V2024ClientLogConfiguration -Id $Id -PutClientLogConfigurationRequest $PutClientLogConfigurationRequest
} catch {
    Write-Host ("Exception occurred when calling Send-V2024ClientLogConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of ManagedCluster to update log configuration for | 
 **PutClientLogConfigurationRequest** | [**PutClientLogConfigurationRequest**](PutClientLogConfigurationRequest.md)| ClientLogConfiguration for given ManagedCluster | 

### Return type

[**ClientLogConfiguration**](ClientLogConfiguration.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ManagedCluster"></a>
# **Update-V2024ManagedCluster**
> ManagedCluster Update-V2024ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update a Managed Cluster

Update an existing Managed Cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180897de347a2017de8859e8c5039" # String | Managed Cluster ID.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the object.

# Update a Managed Cluster
try {
    $Result = Update-V2024ManagedCluster -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed Cluster ID. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| The JSONPatch payload used to update the object. | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

