# PSSailpointBeta.PSSailpointBeta\Api.BetaSIMIntegrationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaSIMIntegration**](BetaSIMIntegrationsApi.md#New-BetaSIMIntegration) | **POST** /sim-integrations | Create new SIM integration
[**Remove-BetaSIMIntegration**](BetaSIMIntegrationsApi.md#Remove-BetaSIMIntegration) | **DELETE** /sim-integrations/{id} | Delete a SIM integration
[**Get-BetaSIMIntegration**](BetaSIMIntegrationsApi.md#Get-BetaSIMIntegration) | **GET** /sim-integrations/{id} | Get a SIM integration details.
[**Get-BetaSIMIntegrations**](BetaSIMIntegrationsApi.md#Get-BetaSIMIntegrations) | **GET** /sim-integrations | List the existing SIM integrations.
[**Update-BetaBeforeProvisioningRule**](BetaSIMIntegrationsApi.md#Update-BetaBeforeProvisioningRule) | **PATCH** /sim-integrations/{id}/beforeProvisioningRule | Patch a SIM beforeProvisioningRule attribute.
[**Update-BetaSIMAttributes**](BetaSIMIntegrationsApi.md#Update-BetaSIMAttributes) | **PATCH** /sim-integrations/{id} | Patch a SIM attribute.
[**Send-BetaSIMIntegration**](BetaSIMIntegrationsApi.md#Send-BetaSIMIntegration) | **PUT** /sim-integrations/{id} | Update an existing SIM integration


<a id="New-BetaSIMIntegration"></a>
# **New-BetaSIMIntegration**
> ServiceDeskIntegrationDto New-BetaSIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SimIntegrationDetails] <PSCustomObject><br>

Create new SIM integration

Create a new SIM Integrations.  A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SimIntegrationDetailsAllOfBeforeProvisioningRule = Initialize-SimIntegrationDetailsAllOfBeforeProvisioningRule -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SimIntegrationDetails = Initialize-SimIntegrationDetails -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "Integration description" -Type "ServiceNow Service Desk" -Attributes  -Sources "MySources" -Cluster "xyzzy999" -StatusMap  -Request  -BeforeProvisioningRule $SimIntegrationDetailsAllOfBeforeProvisioningRule # SimIntegrationDetails | DTO containing the details of the SIM integration

# Create new SIM integration
try {
    $Result = New-BetaSIMIntegration -SimIntegrationDetails $SimIntegrationDetails
} catch {
    Write-Host ("Exception occurred when calling New-BetaSIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SimIntegrationDetails** | [**SimIntegrationDetails**](SimIntegrationDetails.md)| DTO containing the details of the SIM integration | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaSIMIntegration"></a>
# **Remove-BetaSIMIntegration**
> void Remove-BetaSIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a SIM integration

Get the details of a SIM integration. A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String | The id of the integration to delete.

# Delete a SIM integration
try {
    $Result = Remove-BetaSIMIntegration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the integration to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSIMIntegration"></a>
# **Get-BetaSIMIntegration**
> ServiceDeskIntegrationDto Get-BetaSIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a SIM integration details.

Get the details of a SIM integration. A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String | The id of the integration.

# Get a SIM integration details.
try {
    $Result = Get-BetaSIMIntegration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the integration. | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaSIMIntegrations"></a>
# **Get-BetaSIMIntegrations**
> ServiceDeskIntegrationDto Get-BetaSIMIntegrations<br>

List the existing SIM integrations.

List the existing SIM integrations. A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List the existing SIM integrations.
try {
    $Result = Get-BetaSIMIntegrations
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSIMIntegrations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaBeforeProvisioningRule"></a>
# **Update-BetaBeforeProvisioningRule**
> ServiceDeskIntegrationDto Update-BetaBeforeProvisioningRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatch] <PSCustomObject><br>

Patch a SIM beforeProvisioningRule attribute.

Patch a SIM beforeProvisioningRule attribute given a JsonPatch object. A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String | SIM integration id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue

$JsonPatch = Initialize-JsonPatch -Operations $JsonPatchOperation # JsonPatch | The JsonPatch object that describes the changes of SIM beforeProvisioningRule.

# Patch a SIM beforeProvisioningRule attribute.
try {
    $Result = Update-BetaBeforeProvisioningRule -Id $Id -JsonPatch $JsonPatch
} catch {
    Write-Host ("Exception occurred when calling Update-BetaBeforeProvisioningRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SIM integration id | 
 **JsonPatch** | [**JsonPatch**](JsonPatch.md)| The JsonPatch object that describes the changes of SIM beforeProvisioningRule. | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaSIMAttributes"></a>
# **Update-BetaSIMAttributes**
> ServiceDeskIntegrationDto Update-BetaSIMAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatch] <PSCustomObject><br>

Patch a SIM attribute.

Patch a SIM attribute given a JsonPatch object. A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String | SIM integration id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue

$JsonPatch = Initialize-JsonPatch -Operations $JsonPatchOperation # JsonPatch | The JsonPatch object that describes the changes of SIM

# Patch a SIM attribute.
try {
    $Result = Update-BetaSIMAttributes -Id $Id -JsonPatch $JsonPatch
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSIMAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SIM integration id | 
 **JsonPatch** | [**JsonPatch**](JsonPatch.md)| The JsonPatch object that describes the changes of SIM | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaSIMIntegration"></a>
# **Send-BetaSIMIntegration**
> ServiceDeskIntegrationDto Send-BetaSIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SimIntegrationDetails] <PSCustomObject><br>

Update an existing SIM integration

Update an existing SIM integration.  A token with Org Admin or Service Desk Admin authority is required to access this endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "12345" # String | The id of the integration.
$SimIntegrationDetailsAllOfBeforeProvisioningRule = Initialize-SimIntegrationDetailsAllOfBeforeProvisioningRule -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SimIntegrationDetails = Initialize-SimIntegrationDetails -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "Integration description" -Type "ServiceNow Service Desk" -Attributes  -Sources "MySources" -Cluster "xyzzy999" -StatusMap  -Request  -BeforeProvisioningRule $SimIntegrationDetailsAllOfBeforeProvisioningRule # SimIntegrationDetails | The full DTO of the integration containing the updated model

# Update an existing SIM integration
try {
    $Result = Send-BetaSIMIntegration -Id $Id -SimIntegrationDetails $SimIntegrationDetails
} catch {
    Write-Host ("Exception occurred when calling Send-BetaSIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the integration. | 
 **SimIntegrationDetails** | [**SimIntegrationDetails**](SimIntegrationDetails.md)| The full DTO of the integration containing the updated model | 

### Return type

[**ServiceDeskIntegrationDto**](ServiceDeskIntegrationDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

