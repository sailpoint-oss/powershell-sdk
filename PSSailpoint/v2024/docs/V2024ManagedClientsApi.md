# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ManagedClientsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ManagedClient**](V2024ManagedClientsApi.md#New-V2024ManagedClient) | **POST** /managed-clients | Create a new Managed Client
[**Remove-V2024ManagedClient**](V2024ManagedClientsApi.md#Remove-V2024ManagedClient) | **DELETE** /managed-clients/{id} | Delete a Managed Client
[**Get-V2024ManagedClient**](V2024ManagedClientsApi.md#Get-V2024ManagedClient) | **GET** /managed-clients/{id} | Get a Managed Client
[**Get-V2024ManagedClientStatus**](V2024ManagedClientsApi.md#Get-V2024ManagedClientStatus) | **GET** /managed-clients/{id}/status | Get Managed Client Status.
[**Get-V2024ManagedClients**](V2024ManagedClientsApi.md#Get-V2024ManagedClients) | **GET** /managed-clients | Get Managed Clients
[**Update-V2024ManagedClient**](V2024ManagedClientsApi.md#Update-V2024ManagedClient) | **PATCH** /managed-clients/{id} | Update a Managed Client


<a id="New-V2024ManagedClient"></a>
# **New-V2024ManagedClient**
> ManagedClient New-V2024ManagedClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ManagedClientRequest] <PSCustomObject><br>

Create a new Managed Client

Create a new Managed Client. The API returns a result that includes the Managed Client ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ManagedClientRequest = Initialize-ManagedClientRequest -ClusterId "aClusterId" -Description "A short description of the ManagedClient" -Name "aName" -Type "VA" # ManagedClientRequest | 

# Create a new Managed Client
try {
    $Result = New-V2024ManagedClient -ManagedClientRequest $ManagedClientRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ManagedClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ManagedClientRequest** | [**ManagedClientRequest**](ManagedClientRequest.md)|  | 

### Return type

[**ManagedClient**](ManagedClient.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ManagedClient"></a>
# **Remove-V2024ManagedClient**
> void Remove-V2024ManagedClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Managed Client

Delete an existing Managed Client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "4440278c-0ce2-41ee-a0a9-f5cfd5e8d3b7" # String | Managed Client ID.

# Delete a Managed Client
try {
    $Result = Remove-V2024ManagedClient -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ManagedClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed Client ID. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ManagedClient"></a>
# **Get-V2024ManagedClient**
> ManagedClient Get-V2024ManagedClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Managed Client

Get a Managed Client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "4440278c-0ce2-41ee-a0a9-f5cfd5e8d3b7" # String | Managed Client ID.

# Get a Managed Client
try {
    $Result = Get-V2024ManagedClient -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ManagedClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed Client ID. | 

### Return type

[**ManagedClient**](ManagedClient.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ManagedClientStatus"></a>
# **Get-V2024ManagedClientStatus**
> ManagedClientStatus Get-V2024ManagedClientStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

Get Managed Client Status.

Retrieve the Status of a Managed Client by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClientId" # String | ID of the Managed Client to get Status of
$Type = "CCG" # ManagedClientType | Type of the Managed Client to get Status of

# Get Managed Client Status.
try {
    $Result = Get-V2024ManagedClientStatus -Id $Id -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ManagedClientStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Managed Client to get Status of | 
 **Type** | [**ManagedClientType**](ManagedClientType.md)| Type of the Managed Client to get Status of | 

### Return type

[**ManagedClientStatus**](ManagedClientStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ManagedClients"></a>
# **Get-V2024ManagedClients**
> ManagedClient[] Get-V2024ManagedClients<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get Managed Clients

Get a list of Managed Clients.

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
$Filters = "name eq "client name"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **name**: *eq*  **clientId**: *eq*  **clusterId**: *eq* (optional)

# Get Managed Clients
try {
    $Result = Get-V2024ManagedClients -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ManagedClients: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **name**: *eq*  **clientId**: *eq*  **clusterId**: *eq* | [optional] 

### Return type

[**ManagedClient[]**](ManagedClient.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ManagedClient"></a>
# **Update-V2024ManagedClient**
> ManagedClient Update-V2024ManagedClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update a Managed Client

Update an existing Managed Client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "4440278c-0ce2-41ee-a0a9-f5cfd5e8d3b7" # String | Managed Client ID.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the object.

# Update a Managed Client
try {
    $Result = Update-V2024ManagedClient -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ManagedClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Managed Client ID. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| The JSONPatch payload used to update the object. | 

### Return type

[**ManagedClient**](ManagedClient.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

