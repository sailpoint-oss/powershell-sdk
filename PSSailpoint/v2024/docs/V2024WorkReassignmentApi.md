# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024WorkReassignmentApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ReassignmentConfiguration**](V2024WorkReassignmentApi.md#New-V2024ReassignmentConfiguration) | **POST** /reassignment-configurations | Create a Reassignment Configuration
[**Remove-V2024ReassignmentConfiguration**](V2024WorkReassignmentApi.md#Remove-V2024ReassignmentConfiguration) | **DELETE** /reassignment-configurations/{identityId} | Delete Reassignment Configuration
[**Get-V2024EvaluateReassignmentConfiguration**](V2024WorkReassignmentApi.md#Get-V2024EvaluateReassignmentConfiguration) | **GET** /reassignment-configurations/{identityId}/evaluate/{configType} | Evaluate Reassignment Configuration
[**Get-V2024ReassignmentConfigTypes**](V2024WorkReassignmentApi.md#Get-V2024ReassignmentConfigTypes) | **GET** /reassignment-configurations/types | List Reassignment Config Types
[**Get-V2024ReassignmentConfiguration**](V2024WorkReassignmentApi.md#Get-V2024ReassignmentConfiguration) | **GET** /reassignment-configurations/{identityId} | Get Reassignment Configuration
[**Get-V2024TenantConfigConfiguration**](V2024WorkReassignmentApi.md#Get-V2024TenantConfigConfiguration) | **GET** /reassignment-configurations/tenant-config | Get Tenant-wide Reassignment Configuration settings
[**Get-V2024ReassignmentConfigurations**](V2024WorkReassignmentApi.md#Get-V2024ReassignmentConfigurations) | **GET** /reassignment-configurations | List Reassignment Configurations
[**Send-V2024ReassignmentConfig**](V2024WorkReassignmentApi.md#Send-V2024ReassignmentConfig) | **PUT** /reassignment-configurations/{identityId} | Update Reassignment Configuration
[**Send-V2024TenantConfiguration**](V2024WorkReassignmentApi.md#Send-V2024TenantConfiguration) | **PUT** /reassignment-configurations/tenant-config | Update Tenant-wide Reassignment Configuration settings


<a id="New-V2024ReassignmentConfiguration"></a>
# **New-V2024ReassignmentConfiguration**
> ConfigurationItemResponse New-V2024ReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationItemRequest] <PSCustomObject><br>

Create a Reassignment Configuration

Creates a new Reassignment Configuration for the specified identity.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$ConfigurationItemRequest = Initialize-ConfigurationItemRequest -ReassignedFromId "2c91808781a71ddb0181b9090b5c504e" -ReassignedToId "2c91808781a71ddb0181b9090b53504a" -ConfigType "ACCESS_REQUESTS" -StartDate (Get-Date) -EndDate (Get-Date) # ConfigurationItemRequest | 

# Create a Reassignment Configuration
try {
    $Result = New-V2024ReassignmentConfiguration -XSailPointExperimental $XSailPointExperimental -ConfigurationItemRequest $ConfigurationItemRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ConfigurationItemRequest** | [**ConfigurationItemRequest**](ConfigurationItemRequest.md)|  | 

### Return type

[**ConfigurationItemResponse**](ConfigurationItemResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ReassignmentConfiguration"></a>
# **Remove-V2024ReassignmentConfiguration**
> void Remove-V2024ReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete Reassignment Configuration

Deletes all Reassignment Configuration for the specified identity

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "2c91808781a71ddb0181b9090b5c504e" # String | unique identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete Reassignment Configuration
try {
    $Result = Remove-V2024ReassignmentConfiguration -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024EvaluateReassignmentConfiguration"></a>
# **Get-V2024EvaluateReassignmentConfiguration**
> EvaluateResponse[] Get-V2024EvaluateReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExclusionFilters] <String[]><br>

Evaluate Reassignment Configuration

Evaluates the Reassignment Configuration for an `Identity` to determine if work items for the specified type should be reassigned. If a valid Reassignment Configuration is found for the identity & work type, then a lookup is initiated which recursively fetches the Reassignment Configuration for the next `TargetIdentity` until no more results are found or a max depth of 5. That lookup trail is provided in the response and the final reassigned identity in the lookup list is returned as the `reassignToId` property. If no Reassignment Configuration is found for the specified identity & config type then the requested Identity ID will be used as the `reassignToId` value and the lookupTrail node will be empty.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "2c91808781a71ddb0181b9090b5c504e" # String | unique identity id
$ConfigType = "ACCESS_REQUESTS" # ConfigTypeEnum | Reassignment work type
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$ExclusionFilters = "MyExclusionFilters" # String[] | Exclusion filters that disable parts of the reassignment evaluation. Possible values are listed below: - `SELF_REVIEW_DELEGATION`: This will exclude delegations of self-review reassignments (optional)

# Evaluate Reassignment Configuration
try {
    $Result = Get-V2024EvaluateReassignmentConfiguration -IdentityId $IdentityId -ConfigType $ConfigType -XSailPointExperimental $XSailPointExperimental -ExclusionFilters $ExclusionFilters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024EvaluateReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 
 **ConfigType** | [**ConfigTypeEnum**](ConfigTypeEnum.md)| Reassignment work type | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ExclusionFilters** | [**String[]**](String.md)| Exclusion filters that disable parts of the reassignment evaluation. Possible values are listed below: - &#x60;SELF_REVIEW_DELEGATION&#x60;: This will exclude delegations of self-review reassignments | [optional] 

### Return type

[**EvaluateResponse[]**](EvaluateResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ReassignmentConfigTypes"></a>
# **Get-V2024ReassignmentConfigTypes**
> ConfigType[] Get-V2024ReassignmentConfigTypes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List Reassignment Config Types

Gets a collection of types which are available in the Reassignment Configuration UI.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List Reassignment Config Types
try {
    $Result = Get-V2024ReassignmentConfigTypes -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ReassignmentConfigTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ConfigType[]**](ConfigType.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ReassignmentConfiguration"></a>
# **Get-V2024ReassignmentConfiguration**
> ConfigurationResponse Get-V2024ReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Reassignment Configuration

Gets the Reassignment Configuration for an identity.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "2c91808781a71ddb0181b9090b5c504f" # String | unique identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Reassignment Configuration
try {
    $Result = Get-V2024ReassignmentConfiguration -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ConfigurationResponse**](ConfigurationResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024TenantConfigConfiguration"></a>
# **Get-V2024TenantConfigConfiguration**
> TenantConfigurationResponse Get-V2024TenantConfigConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Tenant-wide Reassignment Configuration settings

Gets the global Reassignment Configuration settings for the requestor's tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Tenant-wide Reassignment Configuration settings
try {
    $Result = Get-V2024TenantConfigConfiguration -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024TenantConfigConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**TenantConfigurationResponse**](TenantConfigurationResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ReassignmentConfigurations"></a>
# **Get-V2024ReassignmentConfigurations**
> ConfigurationResponse[] Get-V2024ReassignmentConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List Reassignment Configurations

Gets all Reassignment configuration for the current org.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List Reassignment Configurations
try {
    $Result = Get-V2024ReassignmentConfigurations -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ReassignmentConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ConfigurationResponse[]**](ConfigurationResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024ReassignmentConfig"></a>
# **Send-V2024ReassignmentConfig**
> ConfigurationItemResponse Send-V2024ReassignmentConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationItemRequest] <PSCustomObject><br>

Update Reassignment Configuration

Replaces existing Reassignment configuration for an identity with the newly provided configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "2c91808781a71ddb0181b9090b5c504e" # String | unique identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$ConfigurationItemRequest = Initialize-ConfigurationItemRequest -ReassignedFromId "2c91808781a71ddb0181b9090b5c504e" -ReassignedToId "2c91808781a71ddb0181b9090b53504a" -ConfigType "ACCESS_REQUESTS" -StartDate (Get-Date) -EndDate (Get-Date) # ConfigurationItemRequest | 

# Update Reassignment Configuration
try {
    $Result = Send-V2024ReassignmentConfig -IdentityId $IdentityId -XSailPointExperimental $XSailPointExperimental -ConfigurationItemRequest $ConfigurationItemRequest
} catch {
    Write-Host ("Exception occurred when calling Send-V2024ReassignmentConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ConfigurationItemRequest** | [**ConfigurationItemRequest**](ConfigurationItemRequest.md)|  | 

### Return type

[**ConfigurationItemResponse**](ConfigurationItemResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024TenantConfiguration"></a>
# **Send-V2024TenantConfiguration**
> TenantConfigurationResponse Send-V2024TenantConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantConfigurationRequest] <PSCustomObject><br>

Update Tenant-wide Reassignment Configuration settings

Replaces existing Tenant-wide Reassignment Configuration settings with the newly provided settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$TenantConfigurationDetails = Initialize-TenantConfigurationDetails -Disabled $true
$TenantConfigurationRequest = Initialize-TenantConfigurationRequest -ConfigDetails $TenantConfigurationDetails # TenantConfigurationRequest | 

# Update Tenant-wide Reassignment Configuration settings
try {
    $Result = Send-V2024TenantConfiguration -XSailPointExperimental $XSailPointExperimental -TenantConfigurationRequest $TenantConfigurationRequest
} catch {
    Write-Host ("Exception occurred when calling Send-V2024TenantConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **TenantConfigurationRequest** | [**TenantConfigurationRequest**](TenantConfigurationRequest.md)|  | 

### Return type

[**TenantConfigurationResponse**](TenantConfigurationResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

