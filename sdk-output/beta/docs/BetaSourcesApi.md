# PSSailpointBeta.PSSailpointBeta/Api.BetaSourcesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BetaBulkUpdateProvisioningPolicies**](BetaSourcesApi.md#Invoke-BetaBulkUpdateProvisioningPolicies) | **POST** /sources/{sourceId}/provisioning-policies/bulk-update | Bulk Update Provisioning Policies
[**Invoke-BetaCheckConnection**](BetaSourcesApi.md#Invoke-BetaCheckConnection) | **POST** /sources/{sourceId}/connector/check-connection | Check connection for the source connector.
[**New-BetaProvisioningPolicy**](BetaSourcesApi.md#New-BetaProvisioningPolicy) | **POST** /sources/{sourceId}/provisioning-policies | Create Provisioning Policy
[**New-BetaSchema**](BetaSourcesApi.md#New-BetaSchema) | **POST** /sources/{sourceId}/schemas | Creates a new Schema on the specified Source in IdentityNow.
[**New-BetaSource**](BetaSourcesApi.md#New-BetaSource) | **POST** /sources | Creates a source in IdentityNow.
[**Invoke-BetaDeleteProvisioningPolicy**](BetaSourcesApi.md#Invoke-BetaDeleteProvisioningPolicy) | **DELETE** /sources/{sourceId}/provisioning-policies/{usageType} | Delete Provisioning Policy by UsageType
[**Invoke-BetaDeleteSchema**](BetaSourcesApi.md#Invoke-BetaDeleteSchema) | **DELETE** /sources/{sourceId}/schemas/{schemaId} | Delete Source Schema by ID
[**Invoke-BetaDeleteSource**](BetaSourcesApi.md#Invoke-BetaDeleteSource) | **DELETE** /sources/{id} | Delete Source by ID
[**Invoke-BetaDownloadSourceAccountsSchema**](BetaSourcesApi.md#Invoke-BetaDownloadSourceAccountsSchema) | **GET** /sources/{id}/schemas/accounts | Downloads source accounts schema template
[**Invoke-BetaDownloadSourceEntitlementsSchema**](BetaSourcesApi.md#Invoke-BetaDownloadSourceEntitlementsSchema) | **GET** /sources/{id}/schemas/entitlements | Downloads source entitlements schema template
[**Get-BetaProvisioningPolicy**](BetaSourcesApi.md#Get-BetaProvisioningPolicy) | **GET** /sources/{sourceId}/provisioning-policies/{usageType} | Get Provisioning Policy by UsageType
[**Get-BetaSchema**](BetaSourcesApi.md#Get-BetaSchema) | **GET** /sources/{sourceId}/schemas/{schemaId} | Get Source Schema by ID
[**Get-BetaSource**](BetaSourcesApi.md#Get-BetaSource) | **GET** /sources/{id} | Get Source by ID
[**Get-BetaSourceAttrSyncConfig**](BetaSourcesApi.md#Get-BetaSourceAttrSyncConfig) | **GET** /sources/{id}/attribute-sync-config | Attribute Sync Config
[**Get-BetaSourceConfig**](BetaSourcesApi.md#Get-BetaSourceConfig) | **GET** /sources/{id}/connectors/source-config | Gets source config with language translations
[**Invoke-BetaListProvisioningPolicies**](BetaSourcesApi.md#Invoke-BetaListProvisioningPolicies) | **GET** /sources/{sourceId}/provisioning-policies | Lists ProvisioningPolicies
[**Invoke-BetaListSchemas**](BetaSourcesApi.md#Invoke-BetaListSchemas) | **GET** /sources/{sourceId}/schemas | Lists the Schemas that exist on the specified Source in IdentityNow.
[**Invoke-BetaListSources**](BetaSourcesApi.md#Invoke-BetaListSources) | **GET** /sources | Lists all sources in IdentityNow.
[**Receive-BetaResourceObjects**](BetaSourcesApi.md#Receive-BetaResourceObjects) | **POST** /sources/{sourceId}/connector/peek-resource-objects | Peek resource objects from the source connector
[**Ping-BetaCluster**](BetaSourcesApi.md#Ping-BetaCluster) | **POST** /sources/{sourceId}/connector/ping-cluster | Ping cluster for the source connector
[**Send-BetaSourceAttrSyncConfig**](BetaSourcesApi.md#Send-BetaSourceAttrSyncConfig) | **PUT** /sources/{id}/attribute-sync-config | Update Attribute Sync Config
[**Invoke-BetaReplaceProvisioningPolicy**](BetaSourcesApi.md#Invoke-BetaReplaceProvisioningPolicy) | **PUT** /sources/{sourceId}/provisioning-policies/{usageType} | Update Provisioning Policy by UsageType
[**Invoke-BetaReplaceSchema**](BetaSourcesApi.md#Invoke-BetaReplaceSchema) | **PUT** /sources/{sourceId}/schemas/{schemaId} | Update Source Schema (Full)
[**Invoke-BetaReplaceSource**](BetaSourcesApi.md#Invoke-BetaReplaceSource) | **PUT** /sources/{id} | Update Source (Full)
[**Sync-BetahronizeAttributesForSource**](BetaSourcesApi.md#Sync-BetahronizeAttributesForSource) | **POST** /sources/{id}/synchronize-attributes | Synchronize single source attributes.
[**Test-BetaConfiguration**](BetaSourcesApi.md#Test-BetaConfiguration) | **POST** /sources/{sourceId}/connector/test-configuration | Test configuration for the source connector
[**Update-BetaProvisioningPolicy**](BetaSourcesApi.md#Update-BetaProvisioningPolicy) | **PATCH** /sources/{sourceId}/provisioning-policies/{usageType} | Partial update of Provisioning Policy
[**Update-BetaSchema**](BetaSourcesApi.md#Update-BetaSchema) | **PATCH** /sources/{sourceId}/schemas/{schemaId} | Update Source Schema (Partial)
[**Update-BetaSource**](BetaSourcesApi.md#Update-BetaSource) | **PATCH** /sources/{id} | Update Source (Partial)
[**Invoke-BetaUploadConnectorFile**](BetaSourcesApi.md#Invoke-BetaUploadConnectorFile) | **POST** /sources/{sourceId}/upload-connector-file | Upload connector file to source
[**Invoke-BetaUploadSourceAccountsSchema**](BetaSourcesApi.md#Invoke-BetaUploadSourceAccountsSchema) | **POST** /sources/{id}/schemas/accounts | Uploads source accounts schema template
[**Invoke-BetaUploadSourceEntitlementsSchema**](BetaSourcesApi.md#Invoke-BetaUploadSourceEntitlementsSchema) | **POST** /sources/{id}/schemas/entitlements | Uploads source entitlements schema template


<a name="Invoke-BetaBulkUpdateProvisioningPolicies"></a>
# **Invoke-BetaBulkUpdateProvisioningPolicies**
> ProvisioningPolicyDto[] Invoke-BetaBulkUpdateProvisioningPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject[]><br>

Bulk Update Provisioning Policies

This end-point updates a list of provisioning policies on the specified source in IdentityNow. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto[] | 

# Bulk Update Provisioning Policies
try {
    $Result = Invoke-BetaBulkUpdateProvisioningPolicies -SourceId $SourceId -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaBulkUpdateProvisioningPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **ProvisioningPolicyDto** | [**ProvisioningPolicyDto[]**](ProvisioningPolicyDto.md)|  | 

### Return type

[**ProvisioningPolicyDto[]**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaCheckConnection"></a>
# **Invoke-BetaCheckConnection**
> StatusResponse Invoke-BetaCheckConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Check connection for the source connector.

This endpoint validates that the configured credentials are valid and will properly authenticate with the source identified by the sourceId path parameter. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source.

# Check connection for the source connector.
try {
    $Result = Invoke-BetaCheckConnection -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaCheckConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source. | 

### Return type

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaProvisioningPolicy"></a>
# **New-BetaProvisioningPolicy**
> ProvisioningPolicyDto New-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject><br>

Create Provisioning Policy

This API generates a create policy/template based on field value transforms. This API is intended for use when setting up JDBC Provisioning type sources, but it will also work on other source types. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto | 

# Create Provisioning Policy
try {
    $Result = New-BetaProvisioningPolicy -SourceId $SourceId -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling New-BetaProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id | 
 **ProvisioningPolicyDto** | [**ProvisioningPolicyDto**](ProvisioningPolicyDto.md)|  | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaSchema"></a>
# **New-BetaSchema**
> Schema New-BetaSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schema] <PSCustomObject><br>

Creates a new Schema on the specified Source in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$AttributeDefinitionSchema = Initialize-AttributeDefinitionSchema -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1313" -Name "group"
$AttributeDefinition = Initialize-AttributeDefinition -Name "sAMAccountName" -Type "STRING" -Schema $AttributeDefinitionSchema -Description "The sAMAccountName attribute" -IsMulti $false -IsEntitlement $false -IsGroup $false

$Schema = Initialize-Schema -Id "2c9180835d191a86015d28455b4a2329" -Name "account" -NativeObjectType "User" -IdentityAttribute "sAMAccountName" -DisplayAttribute "distinguishedName" -HierarchyAttribute "memberOf" -IncludePermissions $false -Features "AUTHENTICATE" -Configuration  -Attributes $AttributeDefinition -Created (Get-Date) -Modified (Get-Date) # Schema | 

# Creates a new Schema on the specified Source in IdentityNow.
try {
    $Result = New-BetaSchema -SourceId $SourceId -Schema $Schema
} catch {
    Write-Host ("Exception occurred when calling New-BetaSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **Schema** | [**Schema**](Schema.md)|  | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaSource"></a>
# **New-BetaSource**
> Source New-BetaSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisionAsCsv] <System.Nullable[Boolean]><br>

Creates a source in IdentityNow.

This creates a specific source with a full source JSON representation. Any passwords are submitted as plain-text and encrypted upon receipt in IdentityNow. A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOwner = Initialize-SourceOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$SourceCluster = Initialize-SourceCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$SourceAccountCorrelationConfig = Initialize-SourceAccountCorrelationConfig -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180855d191c59015d28583727245a" -Name "Directory [source-62867] Account Correlation"
$SourceAccountCorrelationRule = Initialize-SourceAccountCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$ManagerCorrelationMapping = Initialize-ManagerCorrelationMapping -AccountAttribute "manager" -IdentityAttribute "manager"
$SourceManagerCorrelationRule = Initialize-SourceManagerCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceBeforeProvisioningRule = Initialize-SourceBeforeProvisioningRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceSchemasInner = Initialize-SourceSchemasInner -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1777" -Name "MySchema"
$SourcePasswordPoliciesInner = Initialize-SourcePasswordPoliciesInner -Type "PASSWORD_POLICY" -Id "2c91808568c529c60168cca6f90c1777" -Name "My Password Policy"
$SourceManagementWorkgroup = Initialize-SourceManagementWorkgroup -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c2222" -Name "My Management Workgroup"
$Source = Initialize-Source -Id "2c91808568c529c60168cca6f90c1324" -Description "This is the corporate directory." -Owner $SourceOwner -Cluster $SourceCluster -AccountCorrelationConfig $SourceAccountCorrelationConfig -AccountCorrelationRule $SourceAccountCorrelationRule -ManagerCorrelationMapping $ManagerCorrelationMapping -ManagerCorrelationRule $SourceManagerCorrelationRule -BeforeProvisioningRule $SourceBeforeProvisioningRule -Schemas $SourceSchemasInner -PasswordPolicies $SourcePasswordPoliciesInner -Features "AUTHENTICATE" -Type "OpenLDAP - Direct" -Connector "active-directory" -ConnectorClass "sailpoint.connector.LDAPConnector" -ConnectorAttributes  -DeleteThreshold 10 -Authoritative $false -ManagementWorkgroup $SourceManagementWorkgroup -Healthy $true -Status "SOURCE_STATE_HEALTHY" -Since "2021-09-28T15:48:29.3801666300Z" -ConnectorId "active-directory" -ConnectorName "Active Directory" -ConnectionType "file" -ConnectorImplementstionId "delimited-file" # Source | 
$ProvisionAsCsv = $true # Boolean | Configures the source as a DelimitedFile type of source. (optional)

# Creates a source in IdentityNow.
try {
    $Result = New-BetaSource -Source $Source -ProvisionAsCsv $ProvisionAsCsv
} catch {
    Write-Host ("Exception occurred when calling New-BetaSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Source** | [**Source**](Source.md)|  | 
 **ProvisionAsCsv** | **Boolean**| Configures the source as a DelimitedFile type of source. | [optional] 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDeleteProvisioningPolicy"></a>
# **Invoke-BetaDeleteProvisioningPolicy**
> void Invoke-BetaDeleteProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>

Delete Provisioning Policy by UsageType

Deletes the provisioning policy with the specified usage on an application. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of ProvisioningPolicy usage.

# Delete Provisioning Policy by UsageType
try {
    $Result = Invoke-BetaDeleteProvisioningPolicy -SourceId $SourceId -UsageType $UsageType
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **UsageType** | [**UsageType**](UsageType.md)| The type of ProvisioningPolicy usage. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDeleteSchema"></a>
# **Invoke-BetaDeleteSchema**
> void Invoke-BetaDeleteSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Delete Source Schema by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema ID.

# Delete Source Schema by ID
try {
    $Result = Invoke-BetaDeleteSchema -SourceId $SourceId -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **SchemaId** | **String**| The Schema ID. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDeleteSource"></a>
# **Invoke-BetaDeleteSource**
> DeleteSource202Response Invoke-BetaDeleteSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Source by ID

This end-point deletes a specific source in IdentityNow. A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API. All of accounts on the source will be removed first, then the source will be deleted. Actual status of task execution can be retrieved via method GET `/task-status/{id}`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The Source ID

# Delete Source by ID
try {
    $Result = Invoke-BetaDeleteSource -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source ID | 

### Return type

[**DeleteSource202Response**](DeleteSource202Response.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDownloadSourceAccountsSchema"></a>
# **Invoke-BetaDownloadSourceAccountsSchema**
> void Invoke-BetaDownloadSourceAccountsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Downloads source accounts schema template

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id

# Downloads source accounts schema template
try {
    $Result = Invoke-BetaDownloadSourceAccountsSchema -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDownloadSourceAccountsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDownloadSourceEntitlementsSchema"></a>
# **Invoke-BetaDownloadSourceEntitlementsSchema**
> void Invoke-BetaDownloadSourceEntitlementsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaName] <String><br>

Downloads source entitlements schema template

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$SchemaName = "?schemaName=group" # String | Name of entitlement schema (optional)

# Downloads source entitlements schema template
try {
    $Result = Invoke-BetaDownloadSourceEntitlementsSchema -Id $Id -SchemaName $SchemaName
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDownloadSourceEntitlementsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **SchemaName** | **String**| Name of entitlement schema | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaProvisioningPolicy"></a>
# **Get-BetaProvisioningPolicy**
> ProvisioningPolicyDto Get-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>

Get Provisioning Policy by UsageType

This end-point retrieves the ProvisioningPolicy with the specified usage on the specified Source in IdentityNow. A token with API, ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of ProvisioningPolicy usage.

# Get Provisioning Policy by UsageType
try {
    $Result = Get-BetaProvisioningPolicy -SourceId $SourceId -UsageType $UsageType
} catch {
    Write-Host ("Exception occurred when calling Get-BetaProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **UsageType** | [**UsageType**](UsageType.md)| The type of ProvisioningPolicy usage. | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSchema"></a>
# **Get-BetaSchema**
> Schema Get-BetaSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Get Source Schema by ID

Get the Source Schema by ID in IdentityNow. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema ID.

# Get Source Schema by ID
try {
    $Result = Get-BetaSchema -SourceId $SourceId -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **SchemaId** | **String**| The Schema ID. | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSource"></a>
# **Get-BetaSource**
> Source Get-BetaSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Source by ID

This end-point gets a specific source in IdentityNow. A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The Source ID

# Get Source by ID
try {
    $Result = Get-BetaSource -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source ID | 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceAttrSyncConfig"></a>
# **Get-BetaSourceAttrSyncConfig**
> AttrSyncSourceConfig Get-BetaSourceAttrSyncConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Attribute Sync Config

This API returns the existing attribute synchronization configuration for a source specified by the given ID. The response contains all attributes, regardless of whether they enabled or not. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id

# Attribute Sync Config
try {
    $Result = Get-BetaSourceAttrSyncConfig -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceAttrSyncConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 

### Return type

[**AttrSyncSourceConfig**](AttrSyncSourceConfig.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceConfig"></a>
# **Get-BetaSourceConfig**
> ConnectorDetail Get-BetaSourceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Gets source config with language translations

Looks up and returns the source config for the requested source id after populating the source config values and applying language translations. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | The Source id
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en"" (optional)

# Gets source config with language translations
try {
    $Result = Get-BetaSourceConfig -Id $Id -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | [optional] 

### Return type

[**ConnectorDetail**](ConnectorDetail.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListProvisioningPolicies"></a>
# **Invoke-BetaListProvisioningPolicies**
> ProvisioningPolicyDto[] Invoke-BetaListProvisioningPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Lists ProvisioningPolicies

This end-point lists all the ProvisioningPolicies in IdentityNow. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id

# Lists ProvisioningPolicies
try {
    $Result = Invoke-BetaListProvisioningPolicies -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListProvisioningPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id | 

### Return type

[**ProvisioningPolicyDto[]**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListSchemas"></a>
# **Invoke-BetaListSchemas**
> Schema[] Invoke-BetaListSchemas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTypes] <String><br>

Lists the Schemas that exist on the specified Source in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$IncludeTypes = "group" # String | If set to 'group', then the account schema is filtered and only group schemas are returned. Only a value of 'group' is recognized. (optional)

# Lists the Schemas that exist on the specified Source in IdentityNow.
try {
    $Result = Invoke-BetaListSchemas -SourceId $SourceId -IncludeTypes $IncludeTypes
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListSchemas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **IncludeTypes** | **String**| If set to &#39;group&#39;, then the account schema is filtered and only group schemas are returned. Only a value of &#39;group&#39; is recognized. | [optional] 

### Return type

[**Schema[]**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListSources"></a>
# **Invoke-BetaListSources**
> Source[] Invoke-BetaListSources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>

Lists all sources in IdentityNow.

This end-point lists all the sources in IdentityNow. A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or ROLE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name eq "#Employees"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *co, eq, in, sw*  **type**: *eq, in*  **owner.id**: *eq, in*  **features**: *ca, co*  **created**: *eq*  **modified**: *eq*  **managementWorkgroup.id**: *eq*  **description**: *eq*  **authoritative**: *eq*  **healthy**: *eq*  **status**: *eq, in*  **connectionType**: *eq*  **connectorName**: *eq* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **type, created, modified, name, owner.name, healthy, status** (optional)
$ForSubadmin = "name" # String | Filter the returned list of sources for the identity specified by the parameter, which is the id of an identity with the role SOURCE_SUBADMIN. By convention, the value **me** indicates the identity id of the current user. Subadmins may only view Sources which they are able to administer; all other Sources will be filtered out when this parameter is set. If the current user is a SOURCE_SUBADMIN but fails to pass a valid value for this parameter, a 403 Forbidden is returned. (optional)

# Lists all sources in IdentityNow.
try {
    $Result = Invoke-BetaListSources -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -ForSubadmin $ForSubadmin
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListSources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *co, eq, in, sw*  **type**: *eq, in*  **owner.id**: *eq, in*  **features**: *ca, co*  **created**: *eq*  **modified**: *eq*  **managementWorkgroup.id**: *eq*  **description**: *eq*  **authoritative**: *eq*  **healthy**: *eq*  **status**: *eq, in*  **connectionType**: *eq*  **connectorName**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **type, created, modified, name, owner.name, healthy, status** | [optional] 
 **ForSubadmin** | **String**| Filter the returned list of sources for the identity specified by the parameter, which is the id of an identity with the role SOURCE_SUBADMIN. By convention, the value **me** indicates the identity id of the current user. Subadmins may only view Sources which they are able to administer; all other Sources will be filtered out when this parameter is set. If the current user is a SOURCE_SUBADMIN but fails to pass a valid value for this parameter, a 403 Forbidden is returned. | [optional] 

### Return type

[**Source[]**](Source.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Receive-BetaResourceObjects"></a>
# **Receive-BetaResourceObjects**
> ResourceObjectsResponse Receive-BetaResourceObjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceObjectsRequest] <PSCustomObject><br>

Peek resource objects from the source connector

Retrieves a sample of data returned from account and group aggregation requests. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source
$ResourceObjectsRequest = Initialize-ResourceObjectsRequest -ObjectType "group" -MaxCount 100 # ResourceObjectsRequest | 

# Peek resource objects from the source connector
try {
    $Result = Receive-BetaResourceObjects -SourceId $SourceId -ResourceObjectsRequest $ResourceObjectsRequest
} catch {
    Write-Host ("Exception occurred when calling Receive-BetaResourceObjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source | 
 **ResourceObjectsRequest** | [**ResourceObjectsRequest**](ResourceObjectsRequest.md)|  | 

### Return type

[**ResourceObjectsResponse**](ResourceObjectsResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Ping-BetaCluster"></a>
# **Ping-BetaCluster**
> StatusResponse Ping-BetaCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Ping cluster for the source connector

This endpoint validates that the cluster being used by the source is reachable from IdentityNow. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source

# Ping cluster for the source connector
try {
    $Result = Ping-BetaCluster -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Ping-BetaCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source | 

### Return type

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaSourceAttrSyncConfig"></a>
# **Send-BetaSourceAttrSyncConfig**
> AttrSyncSourceConfig Send-BetaSourceAttrSyncConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttrSyncSourceConfig] <PSCustomObject><br>

Update Attribute Sync Config

Replaces the attribute synchronization configuration for the source specified by the given ID with the configuration provided in the request body. Only the ""enabled"" field of the values in the ""attributes"" array is mutable. Attempting to change other attributes or add new values to the ""attributes"" array will result in an error.      A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$AttrSyncSourceAttributeConfig = Initialize-AttrSyncSourceAttributeConfig -Name "email" -DisplayName "Email" -Enabled $true -Target "mail"
$AttrSyncSourceConfig = Initialize-AttrSyncSourceConfig -Source $BaseReferenceDto -Attributes $AttrSyncSourceAttributeConfig # AttrSyncSourceConfig | 

# Update Attribute Sync Config
try {
    $Result = Send-BetaSourceAttrSyncConfig -Id $Id -AttrSyncSourceConfig $AttrSyncSourceConfig
} catch {
    Write-Host ("Exception occurred when calling Send-BetaSourceAttrSyncConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **AttrSyncSourceConfig** | [**AttrSyncSourceConfig**](AttrSyncSourceConfig.md)|  | 

### Return type

[**AttrSyncSourceConfig**](AttrSyncSourceConfig.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaReplaceProvisioningPolicy"></a>
# **Invoke-BetaReplaceProvisioningPolicy**
> ProvisioningPolicyDto Invoke-BetaReplaceProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject><br>

Update Provisioning Policy by UsageType

This end-point updates the provisioning policy with the specified usage on the specified source in IdentityNow. A token with API, ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of ProvisioningPolicy usage.
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto | 

# Update Provisioning Policy by UsageType
try {
    $Result = Invoke-BetaReplaceProvisioningPolicy -SourceId $SourceId -UsageType $UsageType -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaReplaceProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **UsageType** | [**UsageType**](UsageType.md)| The type of ProvisioningPolicy usage. | 
 **ProvisioningPolicyDto** | [**ProvisioningPolicyDto**](ProvisioningPolicyDto.md)|  | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaReplaceSchema"></a>
# **Invoke-BetaReplaceSchema**
> Schema Invoke-BetaReplaceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schema] <PSCustomObject><br>

Update Source Schema (Full)

This API will completely replace an existing Schema with the submitted payload. Some fields of the Schema cannot be updated. These fields are listed below. * id * name * created * modified Any attempt to modify these fields will result in an error response with a status code of 400.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema ID.
$AttributeDefinitionSchema = Initialize-AttributeDefinitionSchema -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1313" -Name "group"
$AttributeDefinition = Initialize-AttributeDefinition -Name "sAMAccountName" -Type "STRING" -Schema $AttributeDefinitionSchema -Description "The sAMAccountName attribute" -IsMulti $false -IsEntitlement $false -IsGroup $false

$Schema = Initialize-Schema -Id "2c9180835d191a86015d28455b4a2329" -Name "account" -NativeObjectType "User" -IdentityAttribute "sAMAccountName" -DisplayAttribute "distinguishedName" -HierarchyAttribute "memberOf" -IncludePermissions $false -Features "AUTHENTICATE" -Configuration  -Attributes $AttributeDefinition -Created (Get-Date) -Modified (Get-Date) # Schema | 

# Update Source Schema (Full)
try {
    $Result = Invoke-BetaReplaceSchema -SourceId $SourceId -SchemaId $SchemaId -Schema $Schema
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaReplaceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **SchemaId** | **String**| The Schema ID. | 
 **Schema** | [**Schema**](Schema.md)|  | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaReplaceSource"></a>
# **Invoke-BetaReplaceSource**
> Source Invoke-BetaReplaceSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <PSCustomObject><br>

Update Source (Full)

This API updates a source in IdentityNow, using a full object representation. In other words, the existing Source configuration is completely replaced.  Some fields are immutable and cannot be changed, such as:  * id * type * authoritative * connector * connectorClass * passwordPolicies  Attempts to modify these fields will result in a 400 error.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | The Source id
$SourceOwner = Initialize-SourceOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$SourceCluster = Initialize-SourceCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$SourceAccountCorrelationConfig = Initialize-SourceAccountCorrelationConfig -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180855d191c59015d28583727245a" -Name "Directory [source-62867] Account Correlation"
$SourceAccountCorrelationRule = Initialize-SourceAccountCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$ManagerCorrelationMapping = Initialize-ManagerCorrelationMapping -AccountAttribute "manager" -IdentityAttribute "manager"
$SourceManagerCorrelationRule = Initialize-SourceManagerCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceBeforeProvisioningRule = Initialize-SourceBeforeProvisioningRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceSchemasInner = Initialize-SourceSchemasInner -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1777" -Name "MySchema"
$SourcePasswordPoliciesInner = Initialize-SourcePasswordPoliciesInner -Type "PASSWORD_POLICY" -Id "2c91808568c529c60168cca6f90c1777" -Name "My Password Policy"
$SourceManagementWorkgroup = Initialize-SourceManagementWorkgroup -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c2222" -Name "My Management Workgroup"
$Source = Initialize-Source -Id "2c91808568c529c60168cca6f90c1324" -Description "This is the corporate directory." -Owner $SourceOwner -Cluster $SourceCluster -AccountCorrelationConfig $SourceAccountCorrelationConfig -AccountCorrelationRule $SourceAccountCorrelationRule -ManagerCorrelationMapping $ManagerCorrelationMapping -ManagerCorrelationRule $SourceManagerCorrelationRule -BeforeProvisioningRule $SourceBeforeProvisioningRule -Schemas $SourceSchemasInner -PasswordPolicies $SourcePasswordPoliciesInner -Features "AUTHENTICATE" -Type "OpenLDAP - Direct" -Connector "active-directory" -ConnectorClass "sailpoint.connector.LDAPConnector" -ConnectorAttributes  -DeleteThreshold 10 -Authoritative $false -ManagementWorkgroup $SourceManagementWorkgroup -Healthy $true -Status "SOURCE_STATE_HEALTHY" -Since "2021-09-28T15:48:29.3801666300Z" -ConnectorId "active-directory" -ConnectorName "Active Directory" -ConnectionType "file" -ConnectorImplementstionId "delimited-file" # Source | 

# Update Source (Full)
try {
    $Result = Invoke-BetaReplaceSource -Id $Id -Source $Source
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaReplaceSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **Source** | [**Source**](Source.md)|  | 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Sync-BetahronizeAttributesForSource"></a>
# **Sync-BetahronizeAttributesForSource**
> SourceSyncJob Sync-BetahronizeAttributesForSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Synchronize single source attributes.

This end-point performs attribute synchronization for a selected source. A token with ORG_ADMIN or SOURCE_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | The Source id

# Synchronize single source attributes.
try {
    $Result = Sync-BetahronizeAttributesForSource -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Sync-BetahronizeAttributesForSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 

### Return type

[**SourceSyncJob**](SourceSyncJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BetaConfiguration"></a>
# **Test-BetaConfiguration**
> StatusResponse Test-BetaConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Test configuration for the source connector

This endpoint performs a more detailed validation of the source's configuration that can take longer than the lighter weight credential validation performed by the checkConnection API. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source

# Test configuration for the source connector
try {
    $Result = Test-BetaConfiguration -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Test-BetaConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source | 

### Return type

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaProvisioningPolicy"></a>
# **Update-BetaProvisioningPolicy**
> ProvisioningPolicyDto Update-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Partial update of Provisioning Policy

This API selectively updates an existing Provisioning Policy using a JSONPatch payload. A token with API, ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$UsageType = "CREATE" # UsageType | The type of ProvisioningPolicy usage.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the schema.

# Partial update of Provisioning Policy
try {
    $Result = Update-BetaProvisioningPolicy -SourceId $SourceId -UsageType $UsageType -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **UsageType** | [**UsageType**](UsageType.md)| The type of ProvisioningPolicy usage. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| The JSONPatch payload used to update the schema. | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSchema"></a>
# **Update-BetaSchema**
> Schema Update-BetaSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Source Schema (Partial)

Use this API to selectively update an existing Schema using a JSONPatch payload.   The following schema fields are immutable and cannot be updated:  - id - name - created - modified   To switch an account attribute to a group entitlement, you need to have the following in place:  - `isEntitlement: true` - Must define a schema for the group and [add it to the source](https://developer.sailpoint.com/idn/api/v3/create-schema) before updating the `isGroup` flag.  For example, here is the `group` account attribute referencing a schema that defines the group: ```json {     ""name"": ""groups"",     ""type"": ""STRING"",     ""schema"": {         ""type"": ""CONNECTOR_SCHEMA"",         ""id"": ""2c9180887671ff8c01767b4671fc7d60"",         ""name"": ""group""     },     ""description"": ""The groups, roles etc. that reference account group objects"",     ""isMulti"": true,     ""isEntitlement"": true,     ""isGroup"": true } ``` 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema id.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the schema.

# Update Source Schema (Partial)
try {
    $Result = Update-BetaSchema -SourceId $SourceId -SchemaId $SchemaId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **SchemaId** | **String**| The Schema id. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| The JSONPatch payload used to update the schema. | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSource"></a>
# **Update-BetaSource**
> Source Update-BetaSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Source (Partial)

This API partially updates a source in IdentityNow, using a list of patch operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  Some fields are immutable and cannot be changed, such as:  * id * type * authoritative * created * modified * connector * connectorClass * passwordPolicies  Attempts to modify these fields will result in a 400 error.  A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or API authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The Source id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Any password changes are submitted as plain-text and encrypted upon receipt in IdentityNow.

# Update Source (Partial)
try {
    $Result = Update-BetaSource -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Any password changes are submitted as plain-text and encrypted upon receipt in IdentityNow. | 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaUploadConnectorFile"></a>
# **Invoke-BetaUploadConnectorFile**
> Source Invoke-BetaUploadConnectorFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload connector file to source

This uploads a supplemental source connector file (like jdbc driver jars) to a source's S3 bucket. This also sends ETS and Audit events. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$File =  # System.IO.FileInfo |  (optional)

# Upload connector file to source
try {
    $Result = Invoke-BetaUploadConnectorFile -SourceId $SourceId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaUploadConnectorFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaUploadSourceAccountsSchema"></a>
# **Invoke-BetaUploadSourceAccountsSchema**
> Schema Invoke-BetaUploadSourceAccountsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Uploads source accounts schema template

This API uploads a source schema template file to configure a source's account attributes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$File =  # System.IO.FileInfo |  (optional)

# Uploads source accounts schema template
try {
    $Result = Invoke-BetaUploadSourceAccountsSchema -Id $Id -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaUploadSourceAccountsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaUploadSourceEntitlementsSchema"></a>
# **Invoke-BetaUploadSourceEntitlementsSchema**
> Schema Invoke-BetaUploadSourceEntitlementsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Uploads source entitlements schema template

This API uploads a source schema template file to configure a source's entitlement attributes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$SchemaName = "?schemaName=group" # String | Name of entitlement schema (optional)
$File =  # System.IO.FileInfo |  (optional)

# Uploads source entitlements schema template
try {
    $Result = Invoke-BetaUploadSourceEntitlementsSchema -Id $Id -SchemaName $SchemaName -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaUploadSourceEntitlementsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **SchemaName** | **String**| Name of entitlement schema | [optional] 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

