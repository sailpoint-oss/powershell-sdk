# PSSailpointBeta.PSSailpointBeta/Api.BetaSourcesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaProvisioningPolicy**](BetaSourcesApi.md#New-BetaProvisioningPolicy) | **POST** /sources/{sourceId}/provisioning-policies | Create Provisioning Policy
[**New-BetaSource**](BetaSourcesApi.md#New-BetaSource) | **POST** /sources | Creates a source in IdentityNow.
[**New-BetaSourceSchema**](BetaSourcesApi.md#New-BetaSourceSchema) | **POST** /sources/{sourceId}/schemas | Creates a new Schema on the specified Source in IdentityNow.
[**Remove-Beta**](BetaSourcesApi.md#Remove-Beta) | **DELETE** /sources/{id} | Delete Source by ID
[**Remove-BetaNativeChangeDetectionConfig**](BetaSourcesApi.md#Remove-BetaNativeChangeDetectionConfig) | **DELETE** /sources/{sourceId}/native-change-detection-config | Delete Native Change Detection Configuration
[**Remove-BetaProvisioningPolicy**](BetaSourcesApi.md#Remove-BetaProvisioningPolicy) | **DELETE** /sources/{sourceId}/provisioning-policies/{usageType} | Delete Provisioning Policy by UsageType
[**Remove-BetaSourceSchema**](BetaSourcesApi.md#Remove-BetaSourceSchema) | **DELETE** /sources/{sourceId}/schemas/{schemaId} | Delete Source Schema by ID
[**Get-BetaNativeChangeDetectionConfig**](BetaSourcesApi.md#Get-BetaNativeChangeDetectionConfig) | **GET** /sources/{sourceId}/native-change-detection-config | Native Change Detection Configuration
[**Get-BetaProvisioningPolicy**](BetaSourcesApi.md#Get-BetaProvisioningPolicy) | **GET** /sources/{sourceId}/provisioning-policies/{usageType} | Get Provisioning Policy by UsageType
[**Get-BetaSource**](BetaSourcesApi.md#Get-BetaSource) | **GET** /sources/{id} | Get Source by ID
[**Get-BetaSourceAccountsSchema**](BetaSourcesApi.md#Get-BetaSourceAccountsSchema) | **GET** /sources/{id}/schemas/accounts | Downloads source accounts schema template
[**Get-BetaSourceAttrSyncConfig**](BetaSourcesApi.md#Get-BetaSourceAttrSyncConfig) | **GET** /sources/{id}/attribute-sync-config | Attribute Sync Config
[**Get-BetaSourceConfig**](BetaSourcesApi.md#Get-BetaSourceConfig) | **GET** /sources/{id}/connectors/source-config | Gets source config with language translations
[**Get-BetaSourceEntitlementRequestConfig**](BetaSourcesApi.md#Get-BetaSourceEntitlementRequestConfig) | **GET** /sources/{id}/entitlement-request-config | Get Source Entitlement Request Configuration
[**Get-BetaSourceEntitlementsSchema**](BetaSourcesApi.md#Get-BetaSourceEntitlementsSchema) | **GET** /sources/{id}/schemas/entitlements | Downloads source entitlements schema template
[**Get-BetaSourceSchema**](BetaSourcesApi.md#Get-BetaSourceSchema) | **GET** /sources/{sourceId}/schemas/{schemaId} | Get Source Schema by ID
[**Import-BetaSourceAccountsSchema**](BetaSourcesApi.md#Import-BetaSourceAccountsSchema) | **POST** /sources/{id}/schemas/accounts | Uploads source accounts schema template
[**Import-BetaSourceConnectorFile**](BetaSourcesApi.md#Import-BetaSourceConnectorFile) | **POST** /sources/{sourceId}/upload-connector-file | Upload connector file to source
[**Import-BetaSourceEntitlementsSchema**](BetaSourcesApi.md#Import-BetaSourceEntitlementsSchema) | **POST** /sources/{id}/schemas/entitlements | Uploads source entitlements schema template
[**Get-BetaProvisioningPolicies**](BetaSourcesApi.md#Get-BetaProvisioningPolicies) | **GET** /sources/{sourceId}/provisioning-policies | Lists ProvisioningPolicies
[**Get-BetaSourceSchemas**](BetaSourcesApi.md#Get-BetaSourceSchemas) | **GET** /sources/{sourceId}/schemas | Lists the Schemas that exist on the specified Source in IdentityNow.
[**Get-BetaSources**](BetaSourcesApi.md#Get-BetaSources) | **GET** /sources | Lists all sources in IdentityNow.
[**Receive-BetaResourceObjects**](BetaSourcesApi.md#Receive-BetaResourceObjects) | **POST** /sources/{sourceId}/connector/peek-resource-objects | Peek source connector&#39;s resource objects
[**Ping-BetaCluster**](BetaSourcesApi.md#Ping-BetaCluster) | **POST** /sources/{sourceId}/connector/ping-cluster | Ping cluster for source connector
[**Send-BetaNativeChangeDetectionConfig**](BetaSourcesApi.md#Send-BetaNativeChangeDetectionConfig) | **PUT** /sources/{sourceId}/native-change-detection-config | Update Native Change Detection Configuration
[**Send-BetaProvisioningPolicy**](BetaSourcesApi.md#Send-BetaProvisioningPolicy) | **PUT** /sources/{sourceId}/provisioning-policies/{usageType} | Update Provisioning Policy by UsageType
[**Send-BetaSource**](BetaSourcesApi.md#Send-BetaSource) | **PUT** /sources/{id} | Update Source (Full)
[**Send-BetaSourceAttrSyncConfig**](BetaSourcesApi.md#Send-BetaSourceAttrSyncConfig) | **PUT** /sources/{id}/attribute-sync-config | Update Attribute Sync Config
[**Send-BetaSourceSchema**](BetaSourcesApi.md#Send-BetaSourceSchema) | **PUT** /sources/{sourceId}/schemas/{schemaId} | Update Source Schema (Full)
[**Sync-BetaAttributesForSource**](BetaSourcesApi.md#Sync-BetaAttributesForSource) | **POST** /sources/{id}/synchronize-attributes | Synchronize single source attributes.
[**Test-BetaSourceConfiguration**](BetaSourcesApi.md#Test-BetaSourceConfiguration) | **POST** /sources/{sourceId}/connector/test-configuration | Test configuration for source connector
[**Test-BetaSourceConnection**](BetaSourcesApi.md#Test-BetaSourceConnection) | **POST** /sources/{sourceId}/connector/check-connection | Check connection for source connector.
[**Update-BetaProvisioningPoliciesInBulk**](BetaSourcesApi.md#Update-BetaProvisioningPoliciesInBulk) | **POST** /sources/{sourceId}/provisioning-policies/bulk-update | Bulk Update Provisioning Policies
[**Update-BetaProvisioningPolicy**](BetaSourcesApi.md#Update-BetaProvisioningPolicy) | **PATCH** /sources/{sourceId}/provisioning-policies/{usageType} | Partial update of Provisioning Policy
[**Update-BetaSource**](BetaSourcesApi.md#Update-BetaSource) | **PATCH** /sources/{id} | Update Source (Partial)
[**Update-BetaSourceEntitlementRequestConfig**](BetaSourcesApi.md#Update-BetaSourceEntitlementRequestConfig) | **PUT** /sources/{id}/entitlement-request-config | Update Source Entitlement Request Configuration
[**Update-BetaSourceSchema**](BetaSourcesApi.md#Update-BetaSourceSchema) | **PATCH** /sources/{sourceId}/schemas/{schemaId} | Update Source Schema (Partial)


<a name="New-BetaProvisioningPolicy"></a>
# **New-BetaProvisioningPolicy**
> ProvisioningPolicyDto New-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject><br>

Create Provisioning Policy

This API generates a create policy/template based on field value transforms. This API is intended for use when setting up JDBC Provisioning type sources, but it will also work on other source types. Transforms can be used in the provisioning policy to create a new attribute that you only need during provisioning. Refer to [Transforms in Provisioning Policies](https://developer.sailpoint.com/idn/docs/transforms/guides/transforms-in-provisioning-policies) for more information. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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
$Source = Initialize-Source -Id "2c91808568c529c60168cca6f90c1324" -Name "My Source" -Description "This is the corporate directory." -Owner $SourceOwner -Cluster $SourceCluster -AccountCorrelationConfig $SourceAccountCorrelationConfig -AccountCorrelationRule $SourceAccountCorrelationRule -ManagerCorrelationMapping $ManagerCorrelationMapping -ManagerCorrelationRule $SourceManagerCorrelationRule -BeforeProvisioningRule $SourceBeforeProvisioningRule -Schemas $SourceSchemasInner -PasswordPolicies $SourcePasswordPoliciesInner -Features "AUTHENTICATE" -Type "OpenLDAP - Direct" -Connector "active-directory" -ConnectorClass "sailpoint.connector.LDAPConnector" -ConnectorAttributes  -DeleteThreshold 10 -Authoritative $false -ManagementWorkgroup $SourceManagementWorkgroup -Healthy $true -Status "SOURCE_STATE_HEALTHY" -Since "2021-09-28T15:48:29.3801666300Z" -ConnectorId "active-directory" -ConnectorName "Active Directory" -ConnectionType "file" -ConnectorImplementationId "delimited-file" # Source | 
$ProvisionAsCsv = $false # Boolean | If this parameter is `true`, it configures the source as a Delimited File (CSV) source. Setting this to `true` will automatically set the `type` of the source to `DelimitedFile`.  You must use this query parameter to create a Delimited File source as you would in the UI.  If you don't set this query parameter and you attempt to set the `type` attribute directly, the request won't correctly generate the source.   (optional)

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
 **ProvisionAsCsv** | **Boolean**| If this parameter is &#x60;true&#x60;, it configures the source as a Delimited File (CSV) source. Setting this to &#x60;true&#x60; will automatically set the &#x60;type&#x60; of the source to &#x60;DelimitedFile&#x60;.  You must use this query parameter to create a Delimited File source as you would in the UI.  If you don&#39;t set this query parameter and you attempt to set the &#x60;type&#x60; attribute directly, the request won&#39;t correctly generate the source.   | [optional] 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaSourceSchema"></a>
# **New-BetaSourceSchema**
> Schema New-BetaSourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schema] <PSCustomObject><br>

Creates a new Schema on the specified Source in IdentityNow.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$AttributeDefinitionSchema = Initialize-AttributeDefinitionSchema -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1313" -Name "group"
$AttributeDefinition = Initialize-AttributeDefinition -Name "sAMAccountName" -Type "STRING" -Schema $AttributeDefinitionSchema -Description "The sAMAccountName attribute" -IsMulti $false -IsEntitlement $false -IsGroup $false

$Schema = Initialize-Schema -Id "2c9180835d191a86015d28455b4a2329" -Name "account" -NativeObjectType "User" -IdentityAttribute "sAMAccountName" -DisplayAttribute "distinguishedName" -HierarchyAttribute "memberOf" -IncludePermissions $false -Features "AUTHENTICATE" -Configuration  -Attributes $AttributeDefinition -Created (Get-Date) -Modified (Get-Date) # Schema | 

# Creates a new Schema on the specified Source in IdentityNow.
try {
    $Result = New-BetaSourceSchema -SourceId $SourceId -Schema $Schema
} catch {
    Write-Host ("Exception occurred when calling New-BetaSourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-Beta"></a>
# **Remove-Beta**
> Delete202Response Remove-Beta<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Source by ID

This end-point deletes a specific source in IdentityNow. A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API. All of accounts on the source will be removed first, then the source will be deleted. Actual status of task execution can be retrieved via method GET `/task-status/{id}`

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The Source ID

# Delete Source by ID
try {
    $Result = Remove-Beta -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-Beta: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source ID | 

### Return type

[**Delete202Response**](Delete202Response.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNativeChangeDetectionConfig"></a>
# **Remove-BetaNativeChangeDetectionConfig**
> void Remove-BetaNativeChangeDetectionConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Native Change Detection Configuration

Deletes the native change detection configuration for the source specified by the given ID. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id

# Delete Native Change Detection Configuration
try {
    $Result = Remove-BetaNativeChangeDetectionConfig -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNativeChangeDetectionConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaProvisioningPolicy"></a>
# **Remove-BetaProvisioningPolicy**
> void Remove-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>

Delete Provisioning Policy by UsageType

Deletes the provisioning policy with the specified usage on an application. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 

# Delete Provisioning Policy by UsageType
try {
    $Result = Remove-BetaProvisioningPolicy -SourceId $SourceId -UsageType $UsageType
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **UsageType** | [**UsageType**](UsageType.md)| The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to &#39;Create Account Profile&#39;, the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to &#39;Update Account Profile&#39;, the provisioning template for the &#39;Update&#39; connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to &#39;Enable Account Profile&#39;, the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner&#39;s account is created.  DISABLE - This usage type relates to &#39;Disable Account Profile&#39;, the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs.  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaSourceSchema"></a>
# **Remove-BetaSourceSchema**
> void Remove-BetaSourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Delete Source Schema by ID

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema ID.

# Delete Source Schema by ID
try {
    $Result = Remove-BetaSourceSchema -SourceId $SourceId -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaSourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNativeChangeDetectionConfig"></a>
# **Get-BetaNativeChangeDetectionConfig**
> NativeChangeDetectionConfig Get-BetaNativeChangeDetectionConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Native Change Detection Configuration

This API returns the existing native change detection configuration for a source specified by the given ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id

# Native Change Detection Configuration
try {
    $Result = Get-BetaNativeChangeDetectionConfig -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNativeChangeDetectionConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 

### Return type

[**NativeChangeDetectionConfig**](NativeChangeDetectionConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 

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
 **UsageType** | [**UsageType**](UsageType.md)| The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to &#39;Create Account Profile&#39;, the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to &#39;Update Account Profile&#39;, the provisioning template for the &#39;Update&#39; connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to &#39;Enable Account Profile&#39;, the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner&#39;s account is created.  DISABLE - This usage type relates to &#39;Disable Account Profile&#39;, the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs.  | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceAccountsSchema"></a>
# **Get-BetaSourceAccountsSchema**
> void Get-BetaSourceAccountsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Downloads source accounts schema template

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id

# Downloads source accounts schema template
try {
    $Result = Get-BetaSourceAccountsSchema -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceAccountsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceAttrSyncConfig"></a>
# **Get-BetaSourceAttrSyncConfig**
> AttrSyncSourceConfig Get-BetaSourceAttrSyncConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Attribute Sync Config

This API returns the existing attribute synchronization configuration for a source specified by the given ID. The response contains all attributes, regardless of whether they enabled or not. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceEntitlementRequestConfig"></a>
# **Get-BetaSourceEntitlementRequestConfig**
> SourceEntitlementRequestConfig Get-BetaSourceEntitlementRequestConfig<br>

Get Source Entitlement Request Configuration

This API gets the current entitlement request configuration for a source. This source-level configuration should apply for all the entitlements in the source.  Access request to any entitlements in the source should follow this configuration unless a separate entitlement-level configuration is defined. - During access request, this source-level entitlement request configuration overrides the global organization-level configuration. - However, the entitlement-level configuration (if defined) overrides this source-level configuration.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell

# Get Source Entitlement Request Configuration
try {
    $Result = Get-BetaSourceEntitlementRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceEntitlementRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SourceEntitlementRequestConfig**](SourceEntitlementRequestConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceEntitlementsSchema"></a>
# **Get-BetaSourceEntitlementsSchema**
> void Get-BetaSourceEntitlementsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaName] <String><br>

Downloads source entitlements schema template

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$SchemaName = "?schemaName=group" # String | Name of entitlement schema (optional)

# Downloads source entitlements schema template
try {
    $Result = Get-BetaSourceEntitlementsSchema -Id $Id -SchemaName $SchemaName
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceEntitlementsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceSchema"></a>
# **Get-BetaSourceSchema**
> Schema Get-BetaSourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Get Source Schema by ID

Get the Source Schema by ID in IdentityNow. 

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema ID.

# Get Source Schema by ID
try {
    $Result = Get-BetaSourceSchema -SourceId $SourceId -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSourceAccountsSchema"></a>
# **Import-BetaSourceAccountsSchema**
> Schema Import-BetaSourceAccountsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Uploads source accounts schema template

This API uploads a source schema template file to configure a source's account attributes.

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$File =  # System.IO.FileInfo |  (optional)

# Uploads source accounts schema template
try {
    $Result = Import-BetaSourceAccountsSchema -Id $Id -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-BetaSourceAccountsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSourceConnectorFile"></a>
# **Import-BetaSourceConnectorFile**
> Source Import-BetaSourceConnectorFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload connector file to source

This uploads a supplemental source connector file (like jdbc driver jars) to a source's S3 bucket. This also sends ETS and Audit events. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$File =  # System.IO.FileInfo |  (optional)

# Upload connector file to source
try {
    $Result = Import-BetaSourceConnectorFile -SourceId $SourceId -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-BetaSourceConnectorFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaSourceEntitlementsSchema"></a>
# **Import-BetaSourceEntitlementsSchema**
> Schema Import-BetaSourceEntitlementsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Uploads source entitlements schema template

This API uploads a source schema template file to configure a source's entitlement attributes.

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$SchemaName = "?schemaName=group" # String | Name of entitlement schema (optional)
$File =  # System.IO.FileInfo |  (optional)

# Uploads source entitlements schema template
try {
    $Result = Import-BetaSourceEntitlementsSchema -Id $Id -SchemaName $SchemaName -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-BetaSourceEntitlementsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaProvisioningPolicies"></a>
# **Get-BetaProvisioningPolicies**
> ProvisioningPolicyDto[] Get-BetaProvisioningPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Lists ProvisioningPolicies

This end-point lists all the ProvisioningPolicies in IdentityNow. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id

# Lists ProvisioningPolicies
try {
    $Result = Get-BetaProvisioningPolicies -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaProvisioningPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSourceSchemas"></a>
# **Get-BetaSourceSchemas**
> Schema[] Get-BetaSourceSchemas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTypes] <String><br>

Lists the Schemas that exist on the specified Source in IdentityNow.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$IncludeTypes = "group" # String | If set to 'group', then the account schema is filtered and only group schemas are returned. Only a value of 'group' is recognized. (optional)

# Lists the Schemas that exist on the specified Source in IdentityNow.
try {
    $Result = Get-BetaSourceSchemas -SourceId $SourceId -IncludeTypes $IncludeTypes
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSourceSchemas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaSources"></a>
# **Get-BetaSources**
> Source[] Get-BetaSources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>

Lists all sources in IdentityNow.

This end-point lists all the sources in IdentityNow.  A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or ROLE_SUBADMIN authority is required to call this API.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name eq "Employees"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **name**: *co, eq, in, sw, ge, gt, ne, isnull*  **type**: *eq, in, co, ge, gt, ne, isnull, sw*  **owner.id**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **features**: *ca, co*  **created**: *eq*  **modified**: *eq*  **managementWorkgroup.id**: *eq, co, ge, gt, in, le, lt, ne, isnull, sw*  **description**: *eq, sw*  **authoritative**: *eq, ne, isnull*  **healthy**: *isnull*  **status**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **connectionType**: *eq, co, ge, gt, in, le, lt, ne, isnull, sw*  **connectorName**: *eq, co, ge, gt, in, ne, isnull, sw* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **type, created, modified, name, owner.name, healthy, status, id, description, owner.id, accountCorrelationConfig.id, accountCorrelationConfig.name, managerCorrelationRule.type, managerCorrelationRule.id, managerCorrelationRule.name, authoritative, managementWorkgroup.id, connectorName, connectionType** (optional)
$ForSubadmin = "name" # String | Filter the returned list of sources for the identity specified by the parameter, which is the id of an identity with the role SOURCE_SUBADMIN. By convention, the value **me** indicates the identity id of the current user. Subadmins may only view Sources which they are able to administer; all other Sources will be filtered out when this parameter is set. If the current user is a SOURCE_SUBADMIN but fails to pass a valid value for this parameter, a 403 Forbidden is returned. (optional)

# Lists all sources in IdentityNow.
try {
    $Result = Get-BetaSources -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -ForSubadmin $ForSubadmin
} catch {
    Write-Host ("Exception occurred when calling Get-BetaSources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **name**: *co, eq, in, sw, ge, gt, ne, isnull*  **type**: *eq, in, co, ge, gt, ne, isnull, sw*  **owner.id**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **features**: *ca, co*  **created**: *eq*  **modified**: *eq*  **managementWorkgroup.id**: *eq, co, ge, gt, in, le, lt, ne, isnull, sw*  **description**: *eq, sw*  **authoritative**: *eq, ne, isnull*  **healthy**: *isnull*  **status**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **connectionType**: *eq, co, ge, gt, in, le, lt, ne, isnull, sw*  **connectorName**: *eq, co, ge, gt, in, ne, isnull, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **type, created, modified, name, owner.name, healthy, status, id, description, owner.id, accountCorrelationConfig.id, accountCorrelationConfig.name, managerCorrelationRule.type, managerCorrelationRule.id, managerCorrelationRule.name, authoritative, managementWorkgroup.id, connectorName, connectionType** | [optional] 
 **ForSubadmin** | **String**| Filter the returned list of sources for the identity specified by the parameter, which is the id of an identity with the role SOURCE_SUBADMIN. By convention, the value **me** indicates the identity id of the current user. Subadmins may only view Sources which they are able to administer; all other Sources will be filtered out when this parameter is set. If the current user is a SOURCE_SUBADMIN but fails to pass a valid value for this parameter, a 403 Forbidden is returned. | [optional] 

### Return type

[**Source[]**](Source.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Receive-BetaResourceObjects"></a>
# **Receive-BetaResourceObjects**
> ResourceObjectsResponse Receive-BetaResourceObjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceObjectsRequest] <PSCustomObject><br>

Peek source connector's resource objects

Retrieves a sample of data returned from account and group aggregation requests. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source
$ResourceObjectsRequest = Initialize-ResourceObjectsRequest -ObjectType "group" -MaxCount 100 # ResourceObjectsRequest | 

# Peek source connector's resource objects
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Ping-BetaCluster"></a>
# **Ping-BetaCluster**
> StatusResponse Ping-BetaCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Ping cluster for source connector

This endpoint validates that the cluster being used by the source is reachable from IdentityNow. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source

# Ping cluster for source connector
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaNativeChangeDetectionConfig"></a>
# **Send-BetaNativeChangeDetectionConfig**
> NativeChangeDetectionConfig Send-BetaNativeChangeDetectionConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NativeChangeDetectionConfig] <PSCustomObject><br>

Update Native Change Detection Configuration

Replaces the native change detection configuration for the source specified by the given ID with the configuration provided in the request body.      A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
"ACCOUNT_UPDATED"$NativeChangeDetectionConfig = Initialize-NativeChangeDetectionConfig -Enabled $true -Operations "ACCOUNT_UPDATED" -AllEntitlements $false -AllNonEntitlementAttributes $false -SelectedEntitlements "MySelectedEntitlements" -SelectedNonEntitlementAttributes "MySelectedNonEntitlementAttributes" # NativeChangeDetectionConfig | 

# Update Native Change Detection Configuration
try {
    $Result = Send-BetaNativeChangeDetectionConfig -Id $Id -NativeChangeDetectionConfig $NativeChangeDetectionConfig
} catch {
    Write-Host ("Exception occurred when calling Send-BetaNativeChangeDetectionConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **NativeChangeDetectionConfig** | [**NativeChangeDetectionConfig**](NativeChangeDetectionConfig.md)|  | 

### Return type

[**NativeChangeDetectionConfig**](NativeChangeDetectionConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaProvisioningPolicy"></a>
# **Send-BetaProvisioningPolicy**
> ProvisioningPolicyDto Send-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject><br>

Update Provisioning Policy by UsageType

This end-point updates the provisioning policy with the specified usage on the specified source in IdentityNow. Transforms can be used in the provisioning policy to create a new attribute that you only need during provisioning. Refer to [Transforms in Provisioning Policies](https://developer.sailpoint.com/idn/docs/transforms/guides/transforms-in-provisioning-policies) for more information. A token with API, ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto | 

# Update Provisioning Policy by UsageType
try {
    $Result = Send-BetaProvisioningPolicy -SourceId $SourceId -UsageType $UsageType -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling Send-BetaProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source ID. | 
 **UsageType** | [**UsageType**](UsageType.md)| The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to &#39;Create Account Profile&#39;, the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to &#39;Update Account Profile&#39;, the provisioning template for the &#39;Update&#39; connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to &#39;Enable Account Profile&#39;, the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner&#39;s account is created.  DISABLE - This usage type relates to &#39;Disable Account Profile&#39;, the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs.  | 
 **ProvisioningPolicyDto** | [**ProvisioningPolicyDto**](ProvisioningPolicyDto.md)|  | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaSource"></a>
# **Send-BetaSource**
> Source Send-BetaSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <PSCustomObject><br>

Update Source (Full)

This API updates a source in IdentityNow, using a full object representation. In other words, the existing Source configuration is completely replaced.  Some fields are immutable and cannot be changed, such as:  * id * type * authoritative * connector * connectorClass * passwordPolicies  Attempts to modify these fields will result in a 400 error.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API. 

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The Source id
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
$Source = Initialize-Source -Id "2c91808568c529c60168cca6f90c1324" -Name "My Source" -Description "This is the corporate directory." -Owner $SourceOwner -Cluster $SourceCluster -AccountCorrelationConfig $SourceAccountCorrelationConfig -AccountCorrelationRule $SourceAccountCorrelationRule -ManagerCorrelationMapping $ManagerCorrelationMapping -ManagerCorrelationRule $SourceManagerCorrelationRule -BeforeProvisioningRule $SourceBeforeProvisioningRule -Schemas $SourceSchemasInner -PasswordPolicies $SourcePasswordPoliciesInner -Features "AUTHENTICATE" -Type "OpenLDAP - Direct" -Connector "active-directory" -ConnectorClass "sailpoint.connector.LDAPConnector" -ConnectorAttributes  -DeleteThreshold 10 -Authoritative $false -ManagementWorkgroup $SourceManagementWorkgroup -Healthy $true -Status "SOURCE_STATE_HEALTHY" -Since "2021-09-28T15:48:29.3801666300Z" -ConnectorId "active-directory" -ConnectorName "Active Directory" -ConnectionType "file" -ConnectorImplementationId "delimited-file" # Source | 

# Update Source (Full)
try {
    $Result = Send-BetaSource -Id $Id -Source $Source
} catch {
    Write-Host ("Exception occurred when calling Send-BetaSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
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
$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$AttrSyncSource = Initialize-AttrSyncSource -Type "SOURCE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"
$AttrSyncSourceAttributeConfig = Initialize-AttrSyncSourceAttributeConfig -Name "email" -DisplayName "Email" -Enabled $true -Target "mail"
$AttrSyncSourceConfig = Initialize-AttrSyncSourceConfig -Source $AttrSyncSource -Attributes $AttrSyncSourceAttributeConfig # AttrSyncSourceConfig | 

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaSourceSchema"></a>
# **Send-BetaSourceSchema**
> Schema Send-BetaSourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schema] <PSCustomObject><br>

Update Source Schema (Full)

This API will completely replace an existing Schema with the submitted payload. Some fields of the Schema cannot be updated. These fields are listed below. * id * name * created * modified Any attempt to modify these fields will result in an error response with a status code of 400.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema ID.
$AttributeDefinitionSchema = Initialize-AttributeDefinitionSchema -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1313" -Name "group"
$AttributeDefinition = Initialize-AttributeDefinition -Name "sAMAccountName" -Type "STRING" -Schema $AttributeDefinitionSchema -Description "The sAMAccountName attribute" -IsMulti $false -IsEntitlement $false -IsGroup $false

$Schema = Initialize-Schema -Id "2c9180835d191a86015d28455b4a2329" -Name "account" -NativeObjectType "User" -IdentityAttribute "sAMAccountName" -DisplayAttribute "distinguishedName" -HierarchyAttribute "memberOf" -IncludePermissions $false -Features "AUTHENTICATE" -Configuration  -Attributes $AttributeDefinition -Created (Get-Date) -Modified (Get-Date) # Schema | 

# Update Source Schema (Full)
try {
    $Result = Send-BetaSourceSchema -SourceId $SourceId -SchemaId $SchemaId -Schema $Schema
} catch {
    Write-Host ("Exception occurred when calling Send-BetaSourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Sync-BetaAttributesForSource"></a>
# **Sync-BetaAttributesForSource**
> SourceSyncJob Sync-BetaAttributesForSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Synchronize single source attributes.

This end-point performs attribute synchronization for a selected source. A token with ORG_ADMIN or SOURCE_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "MyId" # String | The Source id

# Synchronize single source attributes.
try {
    $Result = Sync-BetaAttributesForSource -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Sync-BetaAttributesForSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BetaSourceConfiguration"></a>
# **Test-BetaSourceConfiguration**
> StatusResponse Test-BetaSourceConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Test configuration for source connector

This endpoint performs a more detailed validation of the source's configuration that can take longer than the lighter weight credential validation performed by the checkConnection API. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source

# Test configuration for source connector
try {
    $Result = Test-BetaSourceConfiguration -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Test-BetaSourceConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BetaSourceConnection"></a>
# **Test-BetaSourceConnection**
> StatusResponse Test-BetaSourceConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Check connection for source connector.

This endpoint validates that the configured credentials are valid and will properly authenticate with the source identified by the sourceId path parameter. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source.

# Check connection for source connector.
try {
    $Result = Test-BetaSourceConnection -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Test-BetaSourceConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaProvisioningPoliciesInBulk"></a>
# **Update-BetaProvisioningPoliciesInBulk**
> ProvisioningPolicyDto[] Update-BetaProvisioningPoliciesInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject[]><br>

Bulk Update Provisioning Policies

This end-point updates a list of provisioning policies on the specified source in IdentityNow. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto[] | 

# Bulk Update Provisioning Policies
try {
    $Result = Update-BetaProvisioningPoliciesInBulk -SourceId $SourceId -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling Update-BetaProvisioningPoliciesInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaProvisioningPolicy"></a>
# **Update-BetaProvisioningPolicy**
> ProvisioningPolicyDto Update-BetaProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Partial update of Provisioning Policy

This API selectively updates an existing Provisioning Policy using a JSONPatch payload. Transforms can be used in the provisioning policy to create a new attribute that you only need during provisioning. Refer to [Transforms in Provisioning Policies](https://developer.sailpoint.com/idn/docs/transforms/guides/transforms-in-provisioning-policies) for more information. A token with API, ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 
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
 **UsageType** | [**UsageType**](UsageType.md)| The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to &#39;Create Account Profile&#39;, the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to &#39;Update Account Profile&#39;, the provisioning template for the &#39;Update&#39; connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to &#39;Enable Account Profile&#39;, the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner&#39;s account is created.  DISABLE - This usage type relates to &#39;Disable Account Profile&#39;, the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs.  | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| The JSONPatch payload used to update the schema. | 

### Return type

[**ProvisioningPolicyDto**](ProvisioningPolicyDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

This API partially updates a source in IdentityNow, using a list of patch operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  Some fields are immutable and cannot be changed, such as: * id * type * authoritative * created * modified * connector * connectorClass * passwordPolicies  Attempts to modify these fields will result in a 400 error.  A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or API authority is required to call this API. 

### Example
```powershell
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSourceEntitlementRequestConfig"></a>
# **Update-BetaSourceEntitlementRequestConfig**
> SourceEntitlementRequestConfig Update-BetaSourceEntitlementRequestConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceEntitlementRequestConfig] <PSCustomObject><br>

Update Source Entitlement Request Configuration

This API replaces the current entitlement request configuration for a source. This source-level configuration should apply for all the entitlements in the source.  Access request to any entitlements in the source should follow this configuration unless a separate entitlement-level configuration is defined. - During access request, this source-level entitlement request configuration overrides the global organization-level configuration. - However, the entitlement-level configuration (if defined) overrides this source-level configuration.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
$EntitlementApprovalScheme = Initialize-EntitlementApprovalScheme -ApproverType "ENTITLEMENT_OWNER" -ApproverId "e3eab852-8315-467f-9de7-70eda97f63c8"
$EntitlementAccessRequestConfig = Initialize-EntitlementAccessRequestConfig -ApprovalSchemes $EntitlementApprovalScheme -RequestCommentRequired $true -DenialCommentRequired $false

$SourceEntitlementRequestConfig = Initialize-SourceEntitlementRequestConfig -AccessRequestConfig $EntitlementAccessRequestConfig # SourceEntitlementRequestConfig | 

# Update Source Entitlement Request Configuration
try {
    $Result = Update-BetaSourceEntitlementRequestConfig -SourceEntitlementRequestConfig $SourceEntitlementRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSourceEntitlementRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceEntitlementRequestConfig** | [**SourceEntitlementRequestConfig**](SourceEntitlementRequestConfig.md)|  | 

### Return type

[**SourceEntitlementRequestConfig**](SourceEntitlementRequestConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaSourceSchema"></a>
# **Update-BetaSourceSchema**
> Schema Update-BetaSourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Source Schema (Partial)

Use this API to selectively update an existing Schema using a JSONPatch payload.   The following schema fields are immutable and cannot be updated:  - id - name - created - modified   To switch an account attribute to a group entitlement, you need to have the following in place:  - `isEntitlement: true` - Must define a schema for the group and [add it to the source](https://developer.sailpoint.com/idn/api/beta/create-source-schema) before updating the `isGroup` flag.  For example, here is the `group` account attribute referencing a schema that defines the group: ```json {     ""name"": ""groups"",     ""type"": ""STRING"",     ""schema"": {         ""type"": ""CONNECTOR_SCHEMA"",         ""id"": ""2c9180887671ff8c01767b4671fc7d60"",         ""name"": ""group""     },     ""description"": ""The groups, roles etc. that reference account group objects"",     ""isMulti"": true,     ""isEntitlement"": true,     ""isGroup"": true } ``` 

### Example
```powershell
$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema id.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the schema.

# Update Source Schema (Partial)
try {
    $Result = Update-BetaSourceSchema -SourceId $SourceId -SchemaId $SchemaId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaSourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

