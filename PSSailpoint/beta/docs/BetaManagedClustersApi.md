# PSSailpointBeta.PSSailpointBeta/Api.BetaManagedClustersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaClientLogConfiguration**](BetaManagedClustersApi.md#Get-BetaClientLogConfiguration) | **GET** /managed-clusters/{id}/log-config | get ManagedCluster Log Configuration for a specified cluster
[**Get-BetaManagedCluster**](BetaManagedClustersApi.md#Get-BetaManagedCluster) | **GET** /managed-clusters/{id} | Get a specified ManagedCluster.
[**Get-BetaManagedClusters**](BetaManagedClustersApi.md#Get-BetaManagedClusters) | **GET** /managed-clusters | Retrieve all Managed Clusters.
[**Update-BetaClientLogConfiguration**](BetaManagedClustersApi.md#Update-BetaClientLogConfiguration) | **PUT** /managed-clusters/{id}/log-config | Update log configuration for a specified cluster.


<a name="Get-BetaClientLogConfiguration"></a>
# **Get-BetaClientLogConfiguration**
> ClientLogConfiguration[] Get-BetaClientLogConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

get ManagedCluster Log Configuration for a specified cluster

Get log configuration for a managed cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClusterId" # String | ID of the ManagedCluster to get log configuration for

# get ManagedCluster Log Configuration for a specified cluster
try {
    $Result = Get-BetaClientLogConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaClientLogConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the ManagedCluster to get log configuration for | 

### Return type

[**ClientLogConfiguration[]**](ClientLogConfiguration.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaManagedCluster"></a>
# **Get-BetaManagedCluster**
> ManagedCluster Get-BetaManagedCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a specified ManagedCluster.

Retrieve a ManagedCluster by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClusterId" # String | ID of the ManagedCluster to get

# Get a specified ManagedCluster.
try {
    $Result = Get-BetaManagedCluster -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaManagedCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaManagedClusters"></a>
# **Get-BetaManagedClusters**
> ManagedCluster[] Get-BetaManagedClusters<br>
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
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "MyFilters" # String | Filtering is supported for the following fields and operators:  **operational**: *eq* (optional)

# Retrieve all Managed Clusters.
try {
    $Result = Get-BetaManagedClusters -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaManagedClusters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filtering is supported for the following fields and operators:  **operational**: *eq* | [optional] 

### Return type

[**ManagedCluster[]**](ManagedCluster.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaClientLogConfiguration"></a>
# **Update-BetaClientLogConfiguration**
> ClientLogConfiguration Update-BetaClientLogConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientLogConfiguration] <PSCustomObject><br>

Update log configuration for a specified cluster.

Update log configuration for a managed cluster.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClusterId" # String | ID of the ManagedCluster to update log configuration for
$ClientLogConfiguration = Initialize-ClientLogConfiguration -ClientId "aClientId" -DurationMinutes 120 -Expiration (Get-Date) -RootLevel "false" -LogLevels @{ key_example = "false" } # ClientLogConfiguration | ClientLogConfiguration for the given ManagedCluster

# Update log configuration for a specified cluster.
try {
    $Result = Update-BetaClientLogConfiguration -Id $Id -ClientLogConfiguration $ClientLogConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-BetaClientLogConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the ManagedCluster to update log configuration for | 
 **ClientLogConfiguration** | [**ClientLogConfiguration**](ClientLogConfiguration.md)| ClientLogConfiguration for the given ManagedCluster | 

### Return type

[**ClientLogConfiguration**](ClientLogConfiguration.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

