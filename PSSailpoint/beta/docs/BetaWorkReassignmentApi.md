# PSSailpointBeta.PSSailpointBeta/Api.BetaWorkReassignmentApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaReassignmentConfiguration**](BetaWorkReassignmentApi.md#New-BetaReassignmentConfiguration) | **POST** /reassignment-configurations | Create a Reassignment Configuration
[**Remove-BetaReassignmentConfiguration**](BetaWorkReassignmentApi.md#Remove-BetaReassignmentConfiguration) | **DELETE** /reassignment-configurations/{identityId} | Delete Reassignment Configuration
[**Get-BetaEvaluateReassignmentConfiguration**](BetaWorkReassignmentApi.md#Get-BetaEvaluateReassignmentConfiguration) | **GET** /reassignment-configurations/{identityId}/evaluate/{configType} | Evaluate Reassignment Configuration
[**Get-BetaReassignmentConfigTypes**](BetaWorkReassignmentApi.md#Get-BetaReassignmentConfigTypes) | **GET** /reassignment-configurations/types | List Reassignment Config Types
[**Get-BetaReassignmentConfiguration**](BetaWorkReassignmentApi.md#Get-BetaReassignmentConfiguration) | **GET** /reassignment-configurations/{identityId} | Get Reassignment Configuration
[**Get-BetaTenantConfigConfiguration**](BetaWorkReassignmentApi.md#Get-BetaTenantConfigConfiguration) | **GET** /reassignment-configurations/tenant-config | Get Tenant-wide Reassignment Configuration settings
[**Get-BetaReassignmentConfigurations**](BetaWorkReassignmentApi.md#Get-BetaReassignmentConfigurations) | **GET** /reassignment-configurations | List Reassignment Configurations
[**Send-BetaReassignmentConfig**](BetaWorkReassignmentApi.md#Send-BetaReassignmentConfig) | **PUT** /reassignment-configurations/{identityId} | Update Reassignment Configuration
[**Send-BetaTenantConfiguration**](BetaWorkReassignmentApi.md#Send-BetaTenantConfiguration) | **PUT** /reassignment-configurations/tenant-config | Update Tenant-wide Reassignment Configuration settings


<a name="New-BetaReassignmentConfiguration"></a>
# **New-BetaReassignmentConfiguration**
> ConfigurationItemResponse New-BetaReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationItemRequest] <PSCustomObject><br>

Create a Reassignment Configuration

Creates a new Reassignment Configuration for the specified identity.

### Example
```powershell
$ConfigurationItemRequest = Initialize-ConfigurationItemRequest -ReassignedFromId "2c91808781a71ddb0181b9090b5c504e" -ReassignedToId "2c91808781a71ddb0181b9090b53504a" -ConfigType "ACCESS_REQUESTS" -StartDate (Get-Date) -EndDate (Get-Date) # ConfigurationItemRequest | 

# Create a Reassignment Configuration
try {
    $Result = New-BetaReassignmentConfiguration -ConfigurationItemRequest $ConfigurationItemRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationItemRequest** | [**ConfigurationItemRequest**](ConfigurationItemRequest.md)|  | 

### Return type

[**ConfigurationItemResponse**](ConfigurationItemResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaReassignmentConfiguration"></a>
# **Remove-BetaReassignmentConfiguration**
> void Remove-BetaReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>

Delete Reassignment Configuration

Deletes all Reassignment Configuration for the specified identity

### Example
```powershell
$IdentityId = "2c91808781a71ddb0181b9090b5c504e" # String | unique identity id

# Delete Reassignment Configuration
try {
    $Result = Remove-BetaReassignmentConfiguration -IdentityId $IdentityId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaEvaluateReassignmentConfiguration"></a>
# **Get-BetaEvaluateReassignmentConfiguration**
> EvaluateResponse[] Get-BetaEvaluateReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExclusionFilters] <String[]><br>

Evaluate Reassignment Configuration

Evaluates the Reassignment Configuration for an `Identity` to determine if work items for the specified type should be reassigned. If a valid Reassignment Configuration is found for the identity & work type, then a lookup is initiated which recursively fetches the Reassignment Configuration for the next `TargetIdentity` until no more results are found or a max depth of 5. That lookup trail is provided in the response and the final reassigned identity in the lookup list is returned as the `reassignToId` property. If no Reassignment Configuration is found for the specified identity & config type then the requested Identity ID will be used as the `reassignToId` value and the lookupTrail node will be empty.

### Example
```powershell
$IdentityId = "2c91808781a71ddb0181b9090b5c504e" # String | unique identity id
$ConfigType = "ACCESS_REQUESTS" # ConfigTypeEnum | Reassignment work type
$ExclusionFilters = "MyExclusionFilters" # String[] | Exclusion filters that disable parts of the reassignment evaluation. Possible values are listed below: - `SELF_REVIEW_DELEGATION`: This will exclude delegations of self-review reassignments (optional)

# Evaluate Reassignment Configuration
try {
    $Result = Get-BetaEvaluateReassignmentConfiguration -IdentityId $IdentityId -ConfigType $ConfigType -ExclusionFilters $ExclusionFilters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaEvaluateReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 
 **ConfigType** | [**ConfigTypeEnum**](ConfigTypeEnum.md)| Reassignment work type | 
 **ExclusionFilters** | [**String[]**](String.md)| Exclusion filters that disable parts of the reassignment evaluation. Possible values are listed below: - &#x60;SELF_REVIEW_DELEGATION&#x60;: This will exclude delegations of self-review reassignments | [optional] 

### Return type

[**EvaluateResponse[]**](EvaluateResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaReassignmentConfigTypes"></a>
# **Get-BetaReassignmentConfigTypes**
> ConfigType[] Get-BetaReassignmentConfigTypes<br>

List Reassignment Config Types

Gets a collection of types which are available in the Reassignment Configuration UI.

### Example
```powershell

# List Reassignment Config Types
try {
    $Result = Get-BetaReassignmentConfigTypes
} catch {
    Write-Host ("Exception occurred when calling Get-BetaReassignmentConfigTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConfigType[]**](ConfigType.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaReassignmentConfiguration"></a>
# **Get-BetaReassignmentConfiguration**
> ConfigurationResponse Get-BetaReassignmentConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>

Get Reassignment Configuration

Gets the Reassignment Configuration for an identity.

### Example
```powershell
$IdentityId = "2c91808781a71ddb0181b9090b5c504f" # String | unique identity id

# Get Reassignment Configuration
try {
    $Result = Get-BetaReassignmentConfiguration -IdentityId $IdentityId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaReassignmentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 

### Return type

[**ConfigurationResponse**](ConfigurationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaTenantConfigConfiguration"></a>
# **Get-BetaTenantConfigConfiguration**
> TenantConfigurationResponse Get-BetaTenantConfigConfiguration<br>

Get Tenant-wide Reassignment Configuration settings

Gets the global Reassignment Configuration settings for the requestor's tenant.

### Example
```powershell

# Get Tenant-wide Reassignment Configuration settings
try {
    $Result = Get-BetaTenantConfigConfiguration
} catch {
    Write-Host ("Exception occurred when calling Get-BetaTenantConfigConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantConfigurationResponse**](TenantConfigurationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaReassignmentConfigurations"></a>
# **Get-BetaReassignmentConfigurations**
> ConfigurationResponse[] Get-BetaReassignmentConfigurations<br>

List Reassignment Configurations

Gets all Reassignment configuration for the current org.

### Example
```powershell

# List Reassignment Configurations
try {
    $Result = Get-BetaReassignmentConfigurations
} catch {
    Write-Host ("Exception occurred when calling Get-BetaReassignmentConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConfigurationResponse[]**](ConfigurationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaReassignmentConfig"></a>
# **Send-BetaReassignmentConfig**
> ConfigurationItemResponse Send-BetaReassignmentConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationItemRequest] <PSCustomObject><br>

Update Reassignment Configuration

Replaces existing Reassignment configuration for an identity with the newly provided configuration.

### Example
```powershell
$IdentityId = "2c91808781a71ddb0181b9090b5c504e" # String | unique identity id
$ConfigurationItemRequest = Initialize-ConfigurationItemRequest -ReassignedFromId "2c91808781a71ddb0181b9090b5c504e" -ReassignedToId "2c91808781a71ddb0181b9090b53504a" -ConfigType "ACCESS_REQUESTS" -StartDate (Get-Date) -EndDate (Get-Date) # ConfigurationItemRequest | 

# Update Reassignment Configuration
try {
    $Result = Send-BetaReassignmentConfig -IdentityId $IdentityId -ConfigurationItemRequest $ConfigurationItemRequest
} catch {
    Write-Host ("Exception occurred when calling Send-BetaReassignmentConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| unique identity id | 
 **ConfigurationItemRequest** | [**ConfigurationItemRequest**](ConfigurationItemRequest.md)|  | 

### Return type

[**ConfigurationItemResponse**](ConfigurationItemResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaTenantConfiguration"></a>
# **Send-BetaTenantConfiguration**
> TenantConfigurationResponse Send-BetaTenantConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantConfigurationRequest] <PSCustomObject><br>

Update Tenant-wide Reassignment Configuration settings

Replaces existing Tenant-wide Reassignment Configuration settings with the newly provided settings.

### Example
```powershell
$TenantConfigurationDetails = Initialize-TenantConfigurationDetails -Disabled $true
$TenantConfigurationRequest = Initialize-TenantConfigurationRequest -ConfigDetails $TenantConfigurationDetails # TenantConfigurationRequest | 

# Update Tenant-wide Reassignment Configuration settings
try {
    $Result = Send-BetaTenantConfiguration -TenantConfigurationRequest $TenantConfigurationRequest
} catch {
    Write-Host ("Exception occurred when calling Send-BetaTenantConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantConfigurationRequest** | [**TenantConfigurationRequest**](TenantConfigurationRequest.md)|  | 

### Return type

[**TenantConfigurationResponse**](TenantConfigurationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

