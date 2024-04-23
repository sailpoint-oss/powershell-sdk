# PSSailpoint.PSSailpoint\Api.ManagedClustersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ManagedCluster**](ManagedClustersApi.md#New-ManagedCluster) | **POST** /managed-clusters | Create a new Managed Cluster
[**Remove-ManagedCluster**](ManagedClustersApi.md#Remove-ManagedCluster) | **DELETE** /managed-clusters/{id} | Delete a Managed Cluster
[**Get-ManagedCluster**](ManagedClustersApi.md#Get-ManagedCluster) | **GET** /managed-clusters/{id} | Get a specified Managed Cluster.
[**Get-ManagedClusters**](ManagedClustersApi.md#Get-ManagedClusters) | **GET** /managed-clusters | Retrieve all Managed Clusters.
[**Update-ManagedCluster**](ManagedClustersApi.md#Update-ManagedCluster) | **PATCH** /managed-clusters/{id} | Update a Managed Cluster


<a id="New-ManagedCluster"></a>
# **New-ManagedCluster**
> ManagedCluster New-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ManagedClusterRequest] <PSCustomObject><br>

Create a new Managed Cluster

Create a new Managed Cluster. The API returns a result that includes the Managed Cluster ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ManagedClusterRequest = Initialize-ManagedClusterRequest -Name "Managed Cluster Name" -Type "idn" -Configuration @{ key_example = "MyInner" } -Description "A short description of the managed cluster." # ManagedClusterRequest | 

# Create a new Managed Cluster
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-ManagedCluster"></a>
# **Remove-ManagedCluster**
> void Remove-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveClients] <System.Nullable[Boolean]><br>

Delete a Managed Cluster

Delete an existing Managed Cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClusterId" # String | The Managed Cluster ID
$RemoveClients = $false # Boolean | Flag to determine the need to delete a cluster with clients (optional) (default to $false)

# Delete a Managed Cluster
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
 **Id** | **String**| The Managed Cluster ID | 
 **RemoveClients** | **Boolean**| Flag to determine the need to delete a cluster with clients | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ManagedCluster"></a>
# **Get-ManagedCluster**
> ManagedCluster Get-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a specified Managed Cluster.

Retrieve a ManagedCluster by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClusterId" # String | ID of the ManagedCluster to get

# Get a specified Managed Cluster.
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
 **Id** | **String**| ID of the ManagedCluster to get | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

Retrieve all Managed Clusters.

Retrieve all Managed Clusters for the current Org, based on request context.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "operational eq "operation"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **operational**: *eq* (optional)

# Retrieve all Managed Clusters.
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ManagedCluster"></a>
# **Update-ManagedCluster**
> ManagedCluster Update-ManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatch] <PSCustomObject><br>

Update a Managed Cluster

Update an existing Managed Cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClusterId" # String | The Managed Cluster ID
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue

$JsonPatch = Initialize-JsonPatch -Operations $JsonPatchOperation # JsonPatch | The JSONPatch payload used to update the schema.

# Update a Managed Cluster
try {
    $Result = Update-ManagedCluster -Id $Id -JsonPatch $JsonPatch
} catch {
    Write-Host ("Exception occurred when calling Update-ManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Managed Cluster ID | 
 **JsonPatch** | [**JsonPatch**](JsonPatch.md)| The JSONPatch payload used to update the schema. | 

### Return type

[**ManagedCluster**](ManagedCluster.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

