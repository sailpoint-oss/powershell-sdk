# PSSailpointBeta.PSSailpointBeta/Api.BetaManagedClientsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaClientStatus**](BetaManagedClientsApi.md#Get-BetaClientStatus) | **GET** /managed-clients/{id}/status | Get a specified Managed Client Status.
[**Update-BetaStatus**](BetaManagedClientsApi.md#Update-BetaStatus) | **POST** /managed-clients/{id}/status | Handle a status request from a client


<a name="Get-BetaClientStatus"></a>
# **Get-BetaClientStatus**
> ManagedClientStatus Get-BetaClientStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

Get a specified Managed Client Status.

Retrieve Managed Client Status by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClientId" # String | ID of the Managed Client Status to get
$Type = "CCG" # ManagedClientType | Type of the Managed Client Status to get

# Get a specified Managed Client Status.
try {
    $Result = Get-BetaClientStatus -Id $Id -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Get-BetaClientStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Managed Client Status to get | 
 **Type** | [**ManagedClientType**](ManagedClientType.md)| Type of the Managed Client Status to get | 

### Return type

[**ManagedClientStatus**](ManagedClientStatus.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaStatus"></a>
# **Update-BetaStatus**
> ManagedClientStatusAggResponse Update-BetaStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ManagedClientStatus] <PSCustomObject><br>

Handle a status request from a client

Update a status detail passed in from the client

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "aClientId" # String | ID of the Managed Client Status to update
$ManagedClientStatus = Initialize-ManagedClientStatus -Body  -Status "NORMAL" -Type "CCG" -Timestamp (Get-Date) # ManagedClientStatus | 

# Handle a status request from a client
try {
    $Result = Update-BetaStatus -Id $Id -ManagedClientStatus $ManagedClientStatus
} catch {
    Write-Host ("Exception occurred when calling Update-BetaStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Managed Client Status to update | 
 **ManagedClientStatus** | [**ManagedClientStatus**](ManagedClientStatus.md)|  | 

### Return type

[**ManagedClientStatusAggResponse**](ManagedClientStatusAggResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

