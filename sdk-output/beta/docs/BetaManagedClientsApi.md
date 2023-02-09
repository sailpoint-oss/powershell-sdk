# PSSailpointBeta.PSSailpointBeta/Api.BetaManagedClientsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaManagedClientStatus**](BetaManagedClientsApi.md#Get-BetaManagedClientStatus) | **GET** /managed-clients/{id}/status | Get a specified Managed Client Status.
[**Update-BetaManagedClientStatus**](BetaManagedClientsApi.md#Update-BetaManagedClientStatus) | **POST** /managed-clients/{id}/status | Handle a status request from a client


<a name="Get-BetaManagedClientStatus"></a>
# **Get-BetaManagedClientStatus**
> ManagedClientStatus Get-BetaManagedClientStatus<br>
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
    $Result = Get-BetaManagedClientStatus -Id $Id -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Get-BetaManagedClientStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-BetaManagedClientStatus"></a>
# **Update-BetaManagedClientStatus**
> ManagedClientStatusAggResponse Update-BetaManagedClientStatus<br>
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
    $Result = Update-BetaManagedClientStatus -Id $Id -ManagedClientStatus $ManagedClientStatus
} catch {
    Write-Host ("Exception occurred when calling Update-BetaManagedClientStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

