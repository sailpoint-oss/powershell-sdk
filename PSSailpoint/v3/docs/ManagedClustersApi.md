# PSSailpoint.V3.PSSailpoint.V3\Api.ManagedClustersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ManagedCluster**](ManagedClustersApi.md#New-ManagedCluster) | **POST** /managed-clusters | Create Create Managed Cluster
[**Remove-ManagedCluster**](ManagedClustersApi.md#Remove-ManagedCluster) | **DELETE** /managed-clusters/{id} | Delete Managed Cluster
[**Get-ClientLogConfiguration**](ManagedClustersApi.md#Get-ClientLogConfiguration) | **GET** /managed-clusters/{id}/log-config | Get Managed Cluster Log Configuration
[**Get-ManagedCluster**](ManagedClustersApi.md#Get-ManagedCluster) | **GET** /managed-clusters/{id} | Get Managed Cluster
[**Get-ManagedClusters**](ManagedClustersApi.md#Get-ManagedClusters) | **GET** /managed-clusters | Get Managed Clusters
[**Send-ClientLogConfiguration**](ManagedClustersApi.md#Send-ClientLogConfiguration) | **PUT** /managed-clusters/{id}/log-config | Update Managed Cluster Log Configuration
[**Update-ManagedCluster**](ManagedClustersApi.md#Update-ManagedCluster) | **PATCH** /managed-clusters/{id} | Update Managed Cluster


<a id="New-ManagedCluster"></a>
# **New-ManagedCluster**
> ManagedCluster New-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ManagedClusterRequest] <PSCustomObject><br>

Create Create Managed Cluster

Create a new Managed Cluster. The API returns a result that includes the managed cluster ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ManagedClusterRequest = Initialize-ManagedClusterRequest -Name "Managed Cluster Name" -Type "idn" -Configuration @{ key_example = "MyInner" } -Description "A short description of the managed cluster." # ManagedClusterRequest | 

# Create Create Managed Cluster
try {
    $Result = New-ManagedCluster -ManagedClusterRequest $ManagedClusterRequest
} catch {
    Write-Host ("Exception occurred when calling New-ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-ManagedCluster"></a>
# **Remove-ManagedCluster**
> void Remove-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveClients] <System.Nullable[Boolean]><br>

Delete Managed Cluster

Delete an existing managed cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180897de347a2017de8859e8c5039" # String | Managed cluster ID.
$RemoveClients = $false # Boolean | Flag to determine the need to delete a cluster with clients. (optional) (default to $false)

# Delete Managed Cluster
try {
    $Result = Remove-ManagedCluster -Id $Id -RemoveClients $RemoveClients
} catch {
    Write-Host ("Exception occurred when calling Remove-ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed cluster ID. | 
 **RemoveClients** | **Boolean**| Flag to determine the need to delete a cluster with clients. | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ClientLogConfiguration"></a>
# **Get-ClientLogConfiguration**
> ClientLogConfiguration Get-ClientLogConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Managed Cluster Log Configuration

Get a managed cluster's log configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | ID of managed cluster to get log configuration for.

# Get Managed Cluster Log Configuration
try {
    $Result = Get-ClientLogConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ClientLogConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of managed cluster to get log configuration for. | 

### Return type

[**ClientLogConfiguration**](ClientLogConfiguration.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ManagedCluster"></a>
# **Get-ManagedCluster**
> ManagedCluster Get-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Managed Cluster

Get a managed cluster by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180897de347a2017de8859e8c5039" # String | Managed cluster ID.

# Get Managed Cluster
try {
    $Result = Get-ManagedCluster -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed cluster ID. | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ManagedClusters"></a>
# **Get-ManagedClusters**
> ManagedCluster[] Get-ManagedClusters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get Managed Clusters

List current organization's managed clusters, based on request context.

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

# Get Managed Clusters
try {
    $Result = Get-ManagedClusters -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-ManagedClusters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Send-ClientLogConfiguration"></a>
# **Send-ClientLogConfiguration**
> ClientLogConfiguration Send-ClientLogConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutClientLogConfigurationRequest] <PSCustomObject><br>

Update Managed Cluster Log Configuration

Update a managed cluster's log configuration. You may only specify one of `durationMinutes` or `expiration`, up to 1440 minutes (24 hours) in the future. If neither is specified, the default value for `durationMinutes` is 240.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | ID of the managed cluster to update the log configuration for.
$PutClientLogConfigurationRequest = Initialize-PutClientLogConfigurationRequest -ClientId "3a38a51992e8445ab51a549c0a70ee66" -DurationMinutes 120 -RootLevel "false" -LogLevels @{ key_example = "false" } -Expiration (Get-Date) # PutClientLogConfigurationRequest | Client log configuration for the given managed cluster.

# Update Managed Cluster Log Configuration
try {
    $Result = Send-ClientLogConfiguration -Id $Id -PutClientLogConfigurationRequest $PutClientLogConfigurationRequest
} catch {
    Write-Host ("Exception occurred when calling Send-ClientLogConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the managed cluster to update the log configuration for. | 
 **PutClientLogConfigurationRequest** | [**PutClientLogConfigurationRequest**](PutClientLogConfigurationRequest.md)| Client log configuration for the given managed cluster. | 

### Return type

[**ClientLogConfiguration**](ClientLogConfiguration.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ManagedCluster"></a>
# **Update-ManagedCluster**
> ManagedCluster Update-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Managed Cluster

Update an existing managed cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180897de347a2017de8859e8c5039" # String | Managed cluster ID.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | JSONPatch payload used to update the object.

# Update Managed Cluster
try {
    $Result = Update-ManagedCluster -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed cluster ID. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| JSONPatch payload used to update the object. | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

