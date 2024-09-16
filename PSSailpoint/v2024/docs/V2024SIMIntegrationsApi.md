# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SIMIntegrationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024SIMIntegration**](V2024SIMIntegrationsApi.md#New-V2024SIMIntegration) | **POST** /sim-integrations | Create new SIM integration
[**Remove-V2024SIMIntegration**](V2024SIMIntegrationsApi.md#Remove-V2024SIMIntegration) | **DELETE** /sim-integrations/{id} | Delete a SIM integration
[**Get-V2024SIMIntegration**](V2024SIMIntegrationsApi.md#Get-V2024SIMIntegration) | **GET** /sim-integrations/{id} | Get a SIM integration details.
[**Get-V2024SIMIntegrations**](V2024SIMIntegrationsApi.md#Get-V2024SIMIntegrations) | **GET** /sim-integrations | List the existing SIM integrations.
[**Update-V2024BeforeProvisioningRule**](V2024SIMIntegrationsApi.md#Update-V2024BeforeProvisioningRule) | **PATCH** /sim-integrations/{id}/beforeProvisioningRule | Patch a SIM beforeProvisioningRule attribute.
[**Update-V2024SIMAttributes**](V2024SIMIntegrationsApi.md#Update-V2024SIMAttributes) | **PATCH** /sim-integrations/{id} | Patch a SIM attribute.
[**Send-V2024SIMIntegration**](V2024SIMIntegrationsApi.md#Send-V2024SIMIntegration) | **PUT** /sim-integrations/{id} | Update an existing SIM integration


<a id="New-V2024SIMIntegration"></a>
# **New-V2024SIMIntegration**
> ServiceDeskIntegrationDto1 New-V2024SIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SimIntegrationDetailsAllOfBeforeProvisioningRule = Initialize-SimIntegrationDetailsAllOfBeforeProvisioningRule -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SimIntegrationDetails = Initialize-SimIntegrationDetails -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "Integration description" -Type "ServiceNow Service Desk" -Attributes  -Sources "MySources" -Cluster "xyzzy999" -StatusMap  -Request  -BeforeProvisioningRule $SimIntegrationDetailsAllOfBeforeProvisioningRule # SimIntegrationDetails | DTO containing the details of the SIM integration

# Create new SIM integration
try {
    $Result = New-V2024SIMIntegration -XSailPointExperimental $XSailPointExperimental -SimIntegrationDetails $SimIntegrationDetails
} catch {
    Write-Host ("Exception occurred when calling New-V2024SIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SimIntegrationDetails** | [**SimIntegrationDetails**](SimIntegrationDetails.md)| DTO containing the details of the SIM integration | 

### Return type

[**ServiceDeskIntegrationDto1**](ServiceDeskIntegrationDto1.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024SIMIntegration"></a>
# **Remove-V2024SIMIntegration**
> void Remove-V2024SIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete a SIM integration
try {
    $Result = Remove-V2024SIMIntegration -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the integration to delete. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SIMIntegration"></a>
# **Get-V2024SIMIntegration**
> ServiceDeskIntegrationDto1 Get-V2024SIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get a SIM integration details.
try {
    $Result = Get-V2024SIMIntegration -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the integration. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ServiceDeskIntegrationDto1**](ServiceDeskIntegrationDto1.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SIMIntegrations"></a>
# **Get-V2024SIMIntegrations**
> ServiceDeskIntegrationDto1 Get-V2024SIMIntegrations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List the existing SIM integrations.
try {
    $Result = Get-V2024SIMIntegrations -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SIMIntegrations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ServiceDeskIntegrationDto1**](ServiceDeskIntegrationDto1.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024BeforeProvisioningRule"></a>
# **Update-V2024BeforeProvisioningRule**
> ServiceDeskIntegrationDto1 Update-V2024BeforeProvisioningRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue

$JsonPatch = Initialize-JsonPatch -Operations $JsonPatchOperation # JsonPatch | The JsonPatch object that describes the changes of SIM beforeProvisioningRule.

# Patch a SIM beforeProvisioningRule attribute.
try {
    $Result = Update-V2024BeforeProvisioningRule -Id $Id -XSailPointExperimental $XSailPointExperimental -JsonPatch $JsonPatch
} catch {
    Write-Host ("Exception occurred when calling Update-V2024BeforeProvisioningRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SIM integration id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **JsonPatch** | [**JsonPatch**](JsonPatch.md)| The JsonPatch object that describes the changes of SIM beforeProvisioningRule. | 

### Return type

[**ServiceDeskIntegrationDto1**](ServiceDeskIntegrationDto1.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024SIMAttributes"></a>
# **Update-V2024SIMAttributes**
> ServiceDeskIntegrationDto1 Update-V2024SIMAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue

$JsonPatch = Initialize-JsonPatch -Operations $JsonPatchOperation # JsonPatch | The JsonPatch object that describes the changes of SIM

# Patch a SIM attribute.
try {
    $Result = Update-V2024SIMAttributes -Id $Id -XSailPointExperimental $XSailPointExperimental -JsonPatch $JsonPatch
} catch {
    Write-Host ("Exception occurred when calling Update-V2024SIMAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| SIM integration id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **JsonPatch** | [**JsonPatch**](JsonPatch.md)| The JsonPatch object that describes the changes of SIM | 

### Return type

[**ServiceDeskIntegrationDto1**](ServiceDeskIntegrationDto1.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SIMIntegration"></a>
# **Send-V2024SIMIntegration**
> ServiceDeskIntegrationDto1 Send-V2024SIMIntegration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SimIntegrationDetailsAllOfBeforeProvisioningRule = Initialize-SimIntegrationDetailsAllOfBeforeProvisioningRule -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SimIntegrationDetails = Initialize-SimIntegrationDetails -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "Integration description" -Type "ServiceNow Service Desk" -Attributes  -Sources "MySources" -Cluster "xyzzy999" -StatusMap  -Request  -BeforeProvisioningRule $SimIntegrationDetailsAllOfBeforeProvisioningRule # SimIntegrationDetails | The full DTO of the integration containing the updated model

# Update an existing SIM integration
try {
    $Result = Send-V2024SIMIntegration -Id $Id -XSailPointExperimental $XSailPointExperimental -SimIntegrationDetails $SimIntegrationDetails
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SIMIntegration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The id of the integration. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SimIntegrationDetails** | [**SimIntegrationDetails**](SimIntegrationDetails.md)| The full DTO of the integration containing the updated model | 

### Return type

[**ServiceDeskIntegrationDto1**](ServiceDeskIntegrationDto1.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

