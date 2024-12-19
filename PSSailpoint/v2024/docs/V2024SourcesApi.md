# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SourcesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ProvisioningPolicy**](V2024SourcesApi.md#New-V2024ProvisioningPolicy) | **POST** /sources/{sourceId}/provisioning-policies | Create Provisioning Policy
[**New-V2024Source**](V2024SourcesApi.md#New-V2024Source) | **POST** /sources | Creates a source in IdentityNow.
[**New-V2024SourceSchedule**](V2024SourcesApi.md#New-V2024SourceSchedule) | **POST** /sources/{sourceId}/schedules | Create Schedule on Source
[**New-V2024SourceSchema**](V2024SourcesApi.md#New-V2024SourceSchema) | **POST** /sources/{sourceId}/schemas | Create Schema on Source
[**Remove-V2024AccountsAsync**](V2024SourcesApi.md#Remove-V2024AccountsAsync) | **POST** /sources/{id}/remove-accounts | Remove All Accounts in a Source
[**Remove-V2024NativeChangeDetectionConfig**](V2024SourcesApi.md#Remove-V2024NativeChangeDetectionConfig) | **DELETE** /sources/{sourceId}/native-change-detection-config | Delete Native Change Detection Configuration
[**Remove-V2024ProvisioningPolicy**](V2024SourcesApi.md#Remove-V2024ProvisioningPolicy) | **DELETE** /sources/{sourceId}/provisioning-policies/{usageType} | Delete Provisioning Policy by UsageType
[**Remove-V2024Source**](V2024SourcesApi.md#Remove-V2024Source) | **DELETE** /sources/{id} | Delete Source by ID
[**Remove-V2024SourceSchedule**](V2024SourcesApi.md#Remove-V2024SourceSchedule) | **DELETE** /sources/{sourceId}/schedules/{scheduleType} | Delete Source Schedule by type.
[**Remove-V2024SourceSchema**](V2024SourcesApi.md#Remove-V2024SourceSchema) | **DELETE** /sources/{sourceId}/schemas/{schemaId} | Delete Source Schema by ID
[**Get-V2024AccountsSchema**](V2024SourcesApi.md#Get-V2024AccountsSchema) | **GET** /sources/{id}/schemas/accounts | Downloads source accounts schema template
[**Get-V2024EntitlementsSchema**](V2024SourcesApi.md#Get-V2024EntitlementsSchema) | **GET** /sources/{id}/schemas/entitlements | Downloads source entitlements schema template
[**Get-V2024NativeChangeDetectionConfig**](V2024SourcesApi.md#Get-V2024NativeChangeDetectionConfig) | **GET** /sources/{sourceId}/native-change-detection-config | Native Change Detection Configuration
[**Get-V2024ProvisioningPolicy**](V2024SourcesApi.md#Get-V2024ProvisioningPolicy) | **GET** /sources/{sourceId}/provisioning-policies/{usageType} | Get Provisioning Policy by UsageType
[**Get-V2024Source**](V2024SourcesApi.md#Get-V2024Source) | **GET** /sources/{id} | Get Source by ID
[**Get-V2024SourceAttrSyncConfig**](V2024SourcesApi.md#Get-V2024SourceAttrSyncConfig) | **GET** /sources/{id}/attribute-sync-config | Attribute Sync Config
[**Get-V2024SourceConfig**](V2024SourcesApi.md#Get-V2024SourceConfig) | **GET** /sources/{id}/connectors/source-config | Gets source config with language translations
[**Get-V2024SourceEntitlementRequestConfig**](V2024SourcesApi.md#Get-V2024SourceEntitlementRequestConfig) | **GET** /sources/{id}/entitlement-request-config | Get Source Entitlement Request Configuration
[**Get-V2024SourceHealth**](V2024SourcesApi.md#Get-V2024SourceHealth) | **GET** /sources/{sourceId}/source-health | Fetches source health by id
[**Get-V2024SourceSchedule**](V2024SourcesApi.md#Get-V2024SourceSchedule) | **GET** /sources/{sourceId}/schedules/{scheduleType} | Get Source Schedule by Type
[**Get-V2024SourceSchedules**](V2024SourcesApi.md#Get-V2024SourceSchedules) | **GET** /sources/{sourceId}/schedules | List Schedules on Source
[**Get-V2024SourceSchema**](V2024SourcesApi.md#Get-V2024SourceSchema) | **GET** /sources/{sourceId}/schemas/{schemaId} | Get Source Schema by ID
[**Get-V2024SourceSchemas**](V2024SourcesApi.md#Get-V2024SourceSchemas) | **GET** /sources/{sourceId}/schemas | List Schemas on Source
[**Import-V2024Accounts**](V2024SourcesApi.md#Import-V2024Accounts) | **POST** /sources/{id}/load-accounts | Account Aggregation
[**Import-V2024AccountsSchema**](V2024SourcesApi.md#Import-V2024AccountsSchema) | **POST** /sources/{id}/schemas/accounts | Uploads source accounts schema template
[**Import-V2024ConnectorFile**](V2024SourcesApi.md#Import-V2024ConnectorFile) | **POST** /sources/{sourceId}/upload-connector-file | Upload connector file to source
[**Import-V2024EntitlementsSchema**](V2024SourcesApi.md#Import-V2024EntitlementsSchema) | **POST** /sources/{id}/schemas/entitlements | Uploads source entitlements schema template
[**Import-V2024UncorrelatedAccounts**](V2024SourcesApi.md#Import-V2024UncorrelatedAccounts) | **POST** /sources/{id}/load-uncorrelated-accounts | Process Uncorrelated Accounts
[**Get-V2024ProvisioningPolicies**](V2024SourcesApi.md#Get-V2024ProvisioningPolicies) | **GET** /sources/{sourceId}/provisioning-policies | Lists ProvisioningPolicies
[**Get-V2024Sources**](V2024SourcesApi.md#Get-V2024Sources) | **GET** /sources | Lists all sources in IdentityNow.
[**Receive-V2024ResourceObjects**](V2024SourcesApi.md#Receive-V2024ResourceObjects) | **POST** /sources/{sourceId}/connector/peek-resource-objects | Peek source connector&#39;s resource objects
[**Ping-V2024Cluster**](V2024SourcesApi.md#Ping-V2024Cluster) | **POST** /sources/{sourceId}/connector/ping-cluster | Ping cluster for source connector
[**Send-V2024NativeChangeDetectionConfig**](V2024SourcesApi.md#Send-V2024NativeChangeDetectionConfig) | **PUT** /sources/{sourceId}/native-change-detection-config | Update Native Change Detection Configuration
[**Send-V2024ProvisioningPolicy**](V2024SourcesApi.md#Send-V2024ProvisioningPolicy) | **PUT** /sources/{sourceId}/provisioning-policies/{usageType} | Update Provisioning Policy by UsageType
[**Send-V2024Source**](V2024SourcesApi.md#Send-V2024Source) | **PUT** /sources/{id} | Update Source (Full)
[**Send-V2024SourceAttrSyncConfig**](V2024SourcesApi.md#Send-V2024SourceAttrSyncConfig) | **PUT** /sources/{id}/attribute-sync-config | Update Attribute Sync Config
[**Send-V2024SourceSchema**](V2024SourcesApi.md#Send-V2024SourceSchema) | **PUT** /sources/{sourceId}/schemas/{schemaId} | Update Source Schema (Full)
[**Sync-V2024AttributesForSource**](V2024SourcesApi.md#Sync-V2024AttributesForSource) | **POST** /sources/{id}/synchronize-attributes | Synchronize single source attributes.
[**Test-V2024SourceConfiguration**](V2024SourcesApi.md#Test-V2024SourceConfiguration) | **POST** /sources/{sourceId}/connector/test-configuration | Test configuration for source connector
[**Test-V2024SourceConnection**](V2024SourcesApi.md#Test-V2024SourceConnection) | **POST** /sources/{sourceId}/connector/check-connection | Check connection for source connector.
[**Update-V2024ProvisioningPoliciesInBulk**](V2024SourcesApi.md#Update-V2024ProvisioningPoliciesInBulk) | **POST** /sources/{sourceId}/provisioning-policies/bulk-update | Bulk Update Provisioning Policies
[**Update-V2024ProvisioningPolicy**](V2024SourcesApi.md#Update-V2024ProvisioningPolicy) | **PATCH** /sources/{sourceId}/provisioning-policies/{usageType} | Partial update of Provisioning Policy
[**Update-V2024Source**](V2024SourcesApi.md#Update-V2024Source) | **PATCH** /sources/{id} | Update Source (Partial)
[**Update-V2024SourceEntitlementRequestConfig**](V2024SourcesApi.md#Update-V2024SourceEntitlementRequestConfig) | **PUT** /sources/{id}/entitlement-request-config | Update Source Entitlement Request Configuration
[**Update-V2024SourceSchedule**](V2024SourcesApi.md#Update-V2024SourceSchedule) | **PATCH** /sources/{sourceId}/schedules/{scheduleType} | Update Source Schedule (Partial)
[**Update-V2024SourceSchema**](V2024SourcesApi.md#Update-V2024SourceSchema) | **PATCH** /sources/{sourceId}/schemas/{schemaId} | Update Source Schema (Partial)


<a id="New-V2024ProvisioningPolicy"></a>
# **New-V2024ProvisioningPolicy**
> ProvisioningPolicyDto New-V2024ProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject><br>

Create Provisioning Policy

This API generates a create policy/template based on field value transforms. This API is intended for use when setting up JDBC Provisioning type sources, but it will also work on other source types. Transforms can be used in the provisioning policy to create a new attribute that you only need during provisioning. Refer to [Transforms in Provisioning Policies](https://developer.sailpoint.com/idn/docs/transforms/guides/transforms-in-provisioning-policies) for more information.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto | 

# Create Provisioning Policy
try {
    $Result = New-V2024ProvisioningPolicy -SourceId $SourceId -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling New-V2024ProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024Source"></a>
# **New-V2024Source**
> Source New-V2024Source<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisionAsCsv] <System.Nullable[Boolean]><br>

Creates a source in IdentityNow.

This creates a specific source with a full source JSON representation. Any passwords are submitted as plain-text and encrypted upon receipt in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceOwner = Initialize-SourceOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$SourceCluster = Initialize-SourceCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$SourceAccountCorrelationConfig = Initialize-SourceAccountCorrelationConfig -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180855d191c59015d28583727245a" -Name "Directory [source-62867] Account Correlation"
$SourceAccountCorrelationRule = Initialize-SourceAccountCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceManagerCorrelationMapping = Initialize-SourceManagerCorrelationMapping -AccountAttributeName "manager" -IdentityAttributeName "manager"
$SourceManagerCorrelationRule = Initialize-SourceManagerCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceBeforeProvisioningRule = Initialize-SourceBeforeProvisioningRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceSchemasInner = Initialize-SourceSchemasInner -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1777" -Name "MySchema"
$SourcePasswordPoliciesInner = Initialize-SourcePasswordPoliciesInner -Type "PASSWORD_POLICY" -Id "2c91808568c529c60168cca6f90c1777" -Name "My Password Policy"
"AUTHENTICATE"$SourceManagementWorkgroup = Initialize-SourceManagementWorkgroup -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c2222" -Name "My Management Workgroup"
$Source = Initialize-Source -Id "2c91808568c529c60168cca6f90c1324" -Name "My Source" -Description "This is the corporate directory." -Owner $SourceOwner -Cluster $SourceCluster -AccountCorrelationConfig $SourceAccountCorrelationConfig -AccountCorrelationRule $SourceAccountCorrelationRule -ManagerCorrelationMapping $SourceManagerCorrelationMapping -ManagerCorrelationRule $SourceManagerCorrelationRule -BeforeProvisioningRule $SourceBeforeProvisioningRule -Schemas $SourceSchemasInner -PasswordPolicies $SourcePasswordPoliciesInner -Features 
$SourceOwner = Initialize-SourceOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$SourceCluster = Initialize-SourceCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$SourceAccountCorrelationConfig = Initialize-SourceAccountCorrelationConfig -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180855d191c59015d28583727245a" -Name "Directory [source-62867] Account Correlation"
$SourceAccountCorrelationRule = Initialize-SourceAccountCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceManagerCorrelationMapping = Initialize-SourceManagerCorrelationMapping -AccountAttributeName "manager" -IdentityAttributeName "manager"
$SourceManagerCorrelationRule = Initialize-SourceManagerCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceBeforeProvisioningRule = Initialize-SourceBeforeProvisioningRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceSchemasInner = Initialize-SourceSchemasInner -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1777" -Name "MySchema"
$SourcePasswordPoliciesInner = Initialize-SourcePasswordPoliciesInner -Type "PASSWORD_POLICY" -Id "2c91808568c529c60168cca6f90c1777" -Name "My Password Policy"
"AUTHENTICATE" -Type "OpenLDAP - Direct" -Connector "active-directory" -ConnectorClass "sailpoint.connector.LDAPConnector" -ConnectorAttributes  -DeleteThreshold 10 -Authoritative $false -ManagementWorkgroup $SourceManagementWorkgroup -Healthy $true -Status "SOURCE_STATE_ERROR_ACCOUNT_FILE_IMPORT" -Since "2021-09-28T15:48:29.3801666300Z" -ConnectorId "active-directory" -ConnectorName "Active Directory" -ConnectionType "file" -ConnectorImplementationId "delimited-file" -Created (Get-Date) -Modified (Get-Date) -CredentialProviderEnabled $false -Category "CredentialProvider" # Source | 
$ProvisionAsCsv = $false # Boolean | If this parameter is `true`, it configures the source as a Delimited File (CSV) source. Setting this to `true` will automatically set the `type` of the source to `DelimitedFile`.  You must use this query parameter to create a Delimited File source as you would in the UI.  If you don't set this query parameter and you attempt to set the `type` attribute directly, the request won't correctly generate the source.   (optional)

# Creates a source in IdentityNow.
try {
    $Result = New-V2024Source -Source $Source -ProvisionAsCsv $ProvisionAsCsv
} catch {
    Write-Host ("Exception occurred when calling New-V2024Source: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024SourceSchedule"></a>
# **New-V2024SourceSchedule**
> Schedule1 New-V2024SourceSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schedule1] <PSCustomObject><br>

Create Schedule on Source

Use this API to create a new schedule for a type on the specified source in Identity Security Cloud (ISC). 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | Source ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Schedule1 = Initialize-Schedule1 -Type "ACCOUNT_AGGREGATION" -CronExpression "0 0 5,13,21 * * ?" # Schedule1 | 

# Create Schedule on Source
try {
    $Result = New-V2024SourceSchedule -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -Schedule1 $Schedule1
} catch {
    Write-Host ("Exception occurred when calling New-V2024SourceSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source ID. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Schedule1** | [**Schedule1**](Schedule1.md)|  | 

### Return type

[**Schedule1**](Schedule1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-V2024SourceSchema"></a>
# **New-V2024SourceSchema**
> Schema New-V2024SourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schema] <PSCustomObject><br>

Create Schema on Source

Use this API to create a new schema on the specified source in Identity Security Cloud (ISC). 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | Source ID.
"AUTHENTICATE"

$AttributeDefinitionSchema = Initialize-AttributeDefinitionSchema -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1313" -Name "group"
$AttributeDefinition = Initialize-AttributeDefinition -Name "sAMAccountName" -Type "STRING" -Schema $AttributeDefinitionSchema -Description "SAM Account Name" -IsMulti $false -IsEntitlement $false -IsGroup $false

$Schema = Initialize-Schema -Id "2c9180835d191a86015d28455b4a2329" -Name "account" -NativeObjectType "User" -IdentityAttribute "sAMAccountName" -DisplayAttribute "distinguishedName" -HierarchyAttribute "memberOf" -IncludePermissions $false -Features "AUTHENTICATE" -Configuration  -Attributes $AttributeDefinition -Created (Get-Date) -Modified (Get-Date) # Schema | 

# Create Schema on Source
try {
    $Result = New-V2024SourceSchema -SourceId $SourceId -Schema $Schema
} catch {
    Write-Host ("Exception occurred when calling New-V2024SourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source ID. | 
 **Schema** | [**Schema**](Schema.md)|  | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024AccountsAsync"></a>
# **Remove-V2024AccountsAsync**
> TaskResultDto Remove-V2024AccountsAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Remove All Accounts in a Source

Use this endpoint to remove all accounts from the system without provisioning changes to the source. Accounts that are removed could be re-created during the next aggregation.  This endpoint is good for: * Removing accounts that no longer exist on the source. * Removing accounts that won't be aggregated following updates to the source configuration. * Forcing accounts to be re-created following the next aggregation to re-run account processing, support testing, etc. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ebbf35756e1140699ce52b233121384a" # String | The source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Remove All Accounts in a Source
try {
    $Result = Remove-V2024AccountsAsync -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024AccountsAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**TaskResultDto**](TaskResultDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024NativeChangeDetectionConfig"></a>
# **Remove-V2024NativeChangeDetectionConfig**
> void Remove-V2024NativeChangeDetectionConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete Native Change Detection Configuration

Deletes the native change detection configuration for the source specified by the given ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete Native Change Detection Configuration
try {
    $Result = Remove-V2024NativeChangeDetectionConfig -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024NativeChangeDetectionConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ProvisioningPolicy"></a>
# **Remove-V2024ProvisioningPolicy**
> void Remove-V2024ProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>

Delete Provisioning Policy by UsageType

Deletes the provisioning policy with the specified usage on an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 

# Delete Provisioning Policy by UsageType
try {
    $Result = Remove-V2024ProvisioningPolicy -SourceId $SourceId -UsageType $UsageType
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Source"></a>
# **Remove-V2024Source**
> DeleteSource202Response Remove-V2024Source<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Source by ID

Use this API to delete a specific source in Identity Security Cloud (ISC). The API removes all the accounts on the source first, and then it deletes the source. You can retrieve the actual task execution status with this method: GET `/task-status/{id}`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | Source ID.

# Delete Source by ID
try {
    $Result = Remove-V2024Source -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Source: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source ID. | 

### Return type

[**DeleteSource202Response**](DeleteSource202Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024SourceSchedule"></a>
# **Remove-V2024SourceSchedule**
> void Remove-V2024SourceSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete Source Schedule by type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$ScheduleType = "ACCOUNT_AGGREGATION" # String | The Schedule type.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete Source Schedule by type.
try {
    $Result = Remove-V2024SourceSchedule -SourceId $SourceId -ScheduleType $ScheduleType -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SourceSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **ScheduleType** | **String**| The Schedule type. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024SourceSchema"></a>
# **Remove-V2024SourceSchema**
> void Remove-V2024SourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Delete Source Schema by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema id.

# Delete Source Schema by ID
try {
    $Result = Remove-V2024SourceSchema -SourceId $SourceId -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **SchemaId** | **String**| The Schema id. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024AccountsSchema"></a>
# **Get-V2024AccountsSchema**
> void Get-V2024AccountsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Downloads source accounts schema template

This API downloads the CSV schema that defines the account attributes on a source. >**NOTE: This API is designated only for Delimited File sources.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id

# Downloads source accounts schema template
try {
    $Result = Get-V2024AccountsSchema -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AccountsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024EntitlementsSchema"></a>
# **Get-V2024EntitlementsSchema**
> void Get-V2024EntitlementsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaName] <String><br>

Downloads source entitlements schema template

This API downloads the CSV schema that defines the entitlement attributes on a source.  >**NOTE: This API is designated only for Delimited File sources.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$SchemaName = "?schemaName=group" # String | Name of entitlement schema (optional)

# Downloads source entitlements schema template
try {
    $Result = Get-V2024EntitlementsSchema -Id $Id -SchemaName $SchemaName
} catch {
    Write-Host ("Exception occurred when calling Get-V2024EntitlementsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024NativeChangeDetectionConfig"></a>
# **Get-V2024NativeChangeDetectionConfig**
> NativeChangeDetectionConfig Get-V2024NativeChangeDetectionConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Native Change Detection Configuration

This API returns the existing native change detection configuration for a source specified by the given ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Native Change Detection Configuration
try {
    $Result = Get-V2024NativeChangeDetectionConfig -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024NativeChangeDetectionConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**NativeChangeDetectionConfig**](NativeChangeDetectionConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ProvisioningPolicy"></a>
# **Get-V2024ProvisioningPolicy**
> ProvisioningPolicyDto Get-V2024ProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>

Get Provisioning Policy by UsageType

This end-point retrieves the ProvisioningPolicy with the specified usage on the specified Source in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 

# Get Provisioning Policy by UsageType
try {
    $Result = Get-V2024ProvisioningPolicy -SourceId $SourceId -UsageType $UsageType
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Source"></a>
# **Get-V2024Source**
> Source Get-V2024Source<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Source by ID

Use this API to get a source by a specified ID in Identity Security Cloud (ISC).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | Source ID.

# Get Source by ID
try {
    $Result = Get-V2024Source -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Source: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source ID. | 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceAttrSyncConfig"></a>
# **Get-V2024SourceAttrSyncConfig**
> AttrSyncSourceConfig Get-V2024SourceAttrSyncConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Attribute Sync Config

This API returns the existing attribute synchronization configuration for a source specified by the given ID. The response contains all attributes, regardless of whether they enabled or not.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Attribute Sync Config
try {
    $Result = Get-V2024SourceAttrSyncConfig -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceAttrSyncConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**AttrSyncSourceConfig**](AttrSyncSourceConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceConfig"></a>
# **Get-V2024SourceConfig**
> ConnectorDetail1 Get-V2024SourceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Gets source config with language translations

Looks up and returns the source config for the requested source id after populating the source config values and applying language translations.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | The Source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en"" (optional)

# Gets source config with language translations
try {
    $Result = Get-V2024SourceConfig -Id $Id -XSailPointExperimental $XSailPointExperimental -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | [optional] 

### Return type

[**ConnectorDetail1**](ConnectorDetail1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceEntitlementRequestConfig"></a>
# **Get-V2024SourceEntitlementRequestConfig**
> SourceEntitlementRequestConfig Get-V2024SourceEntitlementRequestConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Source Entitlement Request Configuration

This API gets the current entitlement request configuration for a source. This source-level configuration should apply for all the entitlements in the source.  Access request to any entitlements in the source should follow this configuration unless a separate entitlement-level configuration is defined. - During access request, this source-level entitlement request configuration overrides the global organization-level configuration. - However, the entitlement-level configuration (if defined) overrides this source-level configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Source Entitlement Request Configuration
try {
    $Result = Get-V2024SourceEntitlementRequestConfig -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceEntitlementRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SourceEntitlementRequestConfig**](SourceEntitlementRequestConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceHealth"></a>
# **Get-V2024SourceHealth**
> SourceHealthDto Get-V2024SourceHealth<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Fetches source health by id

This endpoint fetches source health by source's id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.

# Fetches source health by id
try {
    $Result = Get-V2024SourceHealth -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceHealth: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 

### Return type

[**SourceHealthDto**](SourceHealthDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceSchedule"></a>
# **Get-V2024SourceSchedule**
> Schedule1 Get-V2024SourceSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Source Schedule by Type

Get the source schedule by type in Identity Security Cloud (ISC). 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$ScheduleType = "ACCOUNT_AGGREGATION" # String | The Schedule type.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Source Schedule by Type
try {
    $Result = Get-V2024SourceSchedule -SourceId $SourceId -ScheduleType $ScheduleType -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **ScheduleType** | **String**| The Schedule type. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**Schedule1**](Schedule1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceSchedules"></a>
# **Get-V2024SourceSchedules**
> Schedule1[] Get-V2024SourceSchedules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List Schedules on Source

Use this API to list the schedules that exist on the specified source in Identity Security Cloud (ISC).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | Source ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List Schedules on Source
try {
    $Result = Get-V2024SourceSchedules -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceSchedules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source ID. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**Schedule1[]**](Schedule1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceSchema"></a>
# **Get-V2024SourceSchema**
> Schema Get-V2024SourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Get Source Schema by ID

Get the Source Schema by ID in IdentityNow. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema id.

# Get Source Schema by ID
try {
    $Result = Get-V2024SourceSchema -SourceId $SourceId -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **SchemaId** | **String**| The Schema id. | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SourceSchemas"></a>
# **Get-V2024SourceSchemas**
> Schema[] Get-V2024SourceSchemas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTypes] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeNames] <String><br>

List Schemas on Source

Use this API to list the schemas that exist on the specified source in Identity Security Cloud (ISC).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | Source ID.
$IncludeTypes = "group" # String | If set to 'group', then the account schema is filtered and only group schemas are returned. Only a value of 'group' is recognized presently.  Note: The API will check whether include-types is group or not, if not, it will list schemas based on include-names, if include-names is not provided, it will list all schemas. (optional)
$IncludeNames = "account" # String | A comma-separated list of schema names to filter result. (optional)

# List Schemas on Source
try {
    $Result = Get-V2024SourceSchemas -SourceId $SourceId -IncludeTypes $IncludeTypes -IncludeNames $IncludeNames
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SourceSchemas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| Source ID. | 
 **IncludeTypes** | **String**| If set to &#39;group&#39;, then the account schema is filtered and only group schemas are returned. Only a value of &#39;group&#39; is recognized presently.  Note: The API will check whether include-types is group or not, if not, it will list schemas based on include-names, if include-names is not provided, it will list all schemas. | [optional] 
 **IncludeNames** | **String**| A comma-separated list of schema names to filter result. | [optional] 

### Return type

[**Schema[]**](Schema.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024Accounts"></a>
# **Import-V2024Accounts**
> LoadAccountsTask Import-V2024Accounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableOptimization] <String><br>

Account Aggregation

Starts an account aggregation on the specified source.  If the target source is a delimited file source, then the CSV file needs to be included in the request body. You will also need to set the Content-Type header to `multipart/form-data`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Source Id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$File =  # System.IO.FileInfo | The CSV file containing the source accounts to aggregate. (optional)
$DisableOptimization = "MyDisableOptimization" # String | Use this flag to reprocess every account whether or not the data has changed. (optional)

# Account Aggregation
try {
    $Result = Import-V2024Accounts -Id $Id -XSailPointExperimental $XSailPointExperimental -File $File -DisableOptimization $DisableOptimization
} catch {
    Write-Host ("Exception occurred when calling Import-V2024Accounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| The CSV file containing the source accounts to aggregate. | [optional] 
 **DisableOptimization** | **String**| Use this flag to reprocess every account whether or not the data has changed. | [optional] 

### Return type

[**LoadAccountsTask**](LoadAccountsTask.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024AccountsSchema"></a>
# **Import-V2024AccountsSchema**
> Schema Import-V2024AccountsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Uploads source accounts schema template

This API uploads a source schema template file to configure a source's account attributes.  To retrieve the file to modify and upload, log into Identity Now.   Click **Admin** -> **Connections** -> **Sources** -> **`{SourceName}`** -> **Import Data** -> **Account Schema** -> **Options** -> **Download Schema**  >**NOTE: This API is designated only for Delimited File sources.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$File =  # System.IO.FileInfo |  (optional)

# Uploads source accounts schema template
try {
    $Result = Import-V2024AccountsSchema -Id $Id -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-V2024AccountsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024ConnectorFile"></a>
# **Import-V2024ConnectorFile**
> Source Import-V2024ConnectorFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload connector file to source

This uploads a supplemental source connector file (like jdbc driver jars) to a source's S3 bucket. This also sends ETS and Audit events.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$File =  # System.IO.FileInfo |  (optional)

# Upload connector file to source
try {
    $Result = Import-V2024ConnectorFile -SourceId $SourceId -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-V2024ConnectorFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024EntitlementsSchema"></a>
# **Import-V2024EntitlementsSchema**
> Schema Import-V2024EntitlementsSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Uploads source entitlements schema template

This API uploads a source schema template file to configure a source's entitlement attributes.  To retrieve the file to modify and upload, log into Identity Now.   Click **Admin** -> **Connections** -> **Sources** -> **`{SourceName}`** -> **Import Data** -> **Import Entitlements** -> **Download**  >**NOTE: This API is designated only for Delimited File sources.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The Source id
$SchemaName = "?schemaName=group" # String | Name of entitlement schema (optional)
$File =  # System.IO.FileInfo |  (optional)

# Uploads source entitlements schema template
try {
    $Result = Import-V2024EntitlementsSchema -Id $Id -SchemaName $SchemaName -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-V2024EntitlementsSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-V2024UncorrelatedAccounts"></a>
# **Import-V2024UncorrelatedAccounts**
> LoadUncorrelatedAccountsTask Import-V2024UncorrelatedAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Process Uncorrelated Accounts

File is required for upload. You will also need to set the Content-Type header to `multipart/form-data`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "75dbec1ebe154d5785da27b95e1dd5d7" # String | Source Id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$File =  # System.IO.FileInfo |  (optional)

# Process Uncorrelated Accounts
try {
    $Result = Import-V2024UncorrelatedAccounts -Id $Id -XSailPointExperimental $XSailPointExperimental -File $File
} catch {
    Write-Host ("Exception occurred when calling Import-V2024UncorrelatedAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source Id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

[**LoadUncorrelatedAccountsTask**](LoadUncorrelatedAccountsTask.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ProvisioningPolicies"></a>
# **Get-V2024ProvisioningPolicies**
> ProvisioningPolicyDto[] Get-V2024ProvisioningPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>

Lists ProvisioningPolicies

This end-point lists all the ProvisioningPolicies in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id

# Lists ProvisioningPolicies
try {
    $Result = Get-V2024ProvisioningPolicies -SourceId $SourceId
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ProvisioningPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Sources"></a>
# **Get-V2024Sources**
> Source[] Get-V2024Sources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForSubadmin] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeIDNSource] <System.Nullable[Boolean]><br>

Lists all sources in IdentityNow.

This end-point lists all the sources in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name eq "Employees"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, ge, gt, le, lt, ne, isnull, sw*  **name**: *co, eq, in, sw, ge, gt, ne, isnull*  **type**: *eq, in, ge, gt, ne, isnull, sw*  **owner.id**: *eq, in, ge, gt, le, lt, ne, isnull, sw*  **features**: *ca, co*  **created**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **modified**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **managementWorkgroup.id**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **description**: *eq, sw*  **authoritative**: *eq, ne, isnull*  **healthy**: *isnull*  **status**: *eq, in, ge, gt, le, lt, ne, isnull, sw*  **connectionType**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **connectorName**: *eq, ge, gt, in, ne, isnull, sw*  **category**: *co, eq, ge, gt, in, le, lt, ne, sw* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **type, created, modified, name, owner.name, healthy, status, id, description, owner.id, accountCorrelationConfig.id, accountCorrelationConfig.name, managerCorrelationRule.type, managerCorrelationRule.id, managerCorrelationRule.name, authoritative, managementWorkgroup.id, connectorName, connectionType** (optional)
$ForSubadmin = "name" # String | Filter the returned list of sources for the identity specified by the parameter, which is the id of an identity with the role SOURCE_SUBADMIN. By convention, the value **me** indicates the identity id of the current user. Subadmins may only view Sources which they are able to administer; all other Sources will be filtered out when this parameter is set. If the current user is a SOURCE_SUBADMIN but fails to pass a valid value for this parameter, a 403 Forbidden is returned. (optional)
$IncludeIDNSource = $true # Boolean | Include the IdentityNow source in the response. (optional) (default to $false)

# Lists all sources in IdentityNow.
try {
    $Result = Get-V2024Sources -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -ForSubadmin $ForSubadmin -IncludeIDNSource $IncludeIDNSource
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Sources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, ge, gt, le, lt, ne, isnull, sw*  **name**: *co, eq, in, sw, ge, gt, ne, isnull*  **type**: *eq, in, ge, gt, ne, isnull, sw*  **owner.id**: *eq, in, ge, gt, le, lt, ne, isnull, sw*  **features**: *ca, co*  **created**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **modified**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **managementWorkgroup.id**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **description**: *eq, sw*  **authoritative**: *eq, ne, isnull*  **healthy**: *isnull*  **status**: *eq, in, ge, gt, le, lt, ne, isnull, sw*  **connectionType**: *eq, ge, gt, in, le, lt, ne, isnull, sw*  **connectorName**: *eq, ge, gt, in, ne, isnull, sw*  **category**: *co, eq, ge, gt, in, le, lt, ne, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **type, created, modified, name, owner.name, healthy, status, id, description, owner.id, accountCorrelationConfig.id, accountCorrelationConfig.name, managerCorrelationRule.type, managerCorrelationRule.id, managerCorrelationRule.name, authoritative, managementWorkgroup.id, connectorName, connectionType** | [optional] 
 **ForSubadmin** | **String**| Filter the returned list of sources for the identity specified by the parameter, which is the id of an identity with the role SOURCE_SUBADMIN. By convention, the value **me** indicates the identity id of the current user. Subadmins may only view Sources which they are able to administer; all other Sources will be filtered out when this parameter is set. If the current user is a SOURCE_SUBADMIN but fails to pass a valid value for this parameter, a 403 Forbidden is returned. | [optional] 
 **IncludeIDNSource** | **Boolean**| Include the IdentityNow source in the response. | [optional] [default to $false]

### Return type

[**Source[]**](Source.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Receive-V2024ResourceObjects"></a>
# **Receive-V2024ResourceObjects**
> ResourceObjectsResponse Receive-V2024ResourceObjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceObjectsRequest] <PSCustomObject><br>

Peek source connector's resource objects

Retrieves a sample of data returned from account and group aggregation requests.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$ResourceObjectsRequest = Initialize-ResourceObjectsRequest -ObjectType "group" -MaxCount 100 # ResourceObjectsRequest | 

# Peek source connector's resource objects
try {
    $Result = Receive-V2024ResourceObjects -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -ResourceObjectsRequest $ResourceObjectsRequest
} catch {
    Write-Host ("Exception occurred when calling Receive-V2024ResourceObjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ResourceObjectsRequest** | [**ResourceObjectsRequest**](ResourceObjectsRequest.md)|  | 

### Return type

[**ResourceObjectsResponse**](ResourceObjectsResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Ping-V2024Cluster"></a>
# **Ping-V2024Cluster**
> StatusResponse Ping-V2024Cluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Ping cluster for source connector

This endpoint validates that the cluster being used by the source is reachable from IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Ping cluster for source connector
try {
    $Result = Ping-V2024Cluster -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Ping-V2024Cluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024NativeChangeDetectionConfig"></a>
# **Send-V2024NativeChangeDetectionConfig**
> NativeChangeDetectionConfig Send-V2024NativeChangeDetectionConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NativeChangeDetectionConfig] <PSCustomObject><br>

Update Native Change Detection Configuration

Replaces the native change detection configuration for the source specified by the given ID with the configuration provided in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
"ACCOUNT_UPDATED"$NativeChangeDetectionConfig = Initialize-NativeChangeDetectionConfig -Enabled $true -Operations "ACCOUNT_UPDATED" -AllEntitlements $false -AllNonEntitlementAttributes $false -SelectedEntitlements "MySelectedEntitlements" -SelectedNonEntitlementAttributes "MySelectedNonEntitlementAttributes" # NativeChangeDetectionConfig | 

# Update Native Change Detection Configuration
try {
    $Result = Send-V2024NativeChangeDetectionConfig -Id $Id -XSailPointExperimental $XSailPointExperimental -NativeChangeDetectionConfig $NativeChangeDetectionConfig
} catch {
    Write-Host ("Exception occurred when calling Send-V2024NativeChangeDetectionConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **NativeChangeDetectionConfig** | [**NativeChangeDetectionConfig**](NativeChangeDetectionConfig.md)|  | 

### Return type

[**NativeChangeDetectionConfig**](NativeChangeDetectionConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024ProvisioningPolicy"></a>
# **Send-V2024ProvisioningPolicy**
> ProvisioningPolicyDto Send-V2024ProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject><br>

Update Provisioning Policy by UsageType

This end-point updates the provisioning policy with the specified usage on the specified source in IdentityNow. Transforms can be used in the provisioning policy to create a new attribute that you only need during provisioning. Refer to [Transforms in Provisioning Policies](https://developer.sailpoint.com/idn/docs/transforms/guides/transforms-in-provisioning-policies) for more information.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source ID.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto | 

# Update Provisioning Policy by UsageType
try {
    $Result = Send-V2024ProvisioningPolicy -SourceId $SourceId -UsageType $UsageType -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling Send-V2024ProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024Source"></a>
# **Send-V2024Source**
> Source Send-V2024Source<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <PSCustomObject><br>

Update Source (Full)

Use this API to update a source in Identity Security Cloud (ISC), using a full object representation. This means that when you use this API, it completely replaces the existing source configuration.  These fields are immutable, so they cannot be changed:  * id * type * authoritative * connector * connectorClass * passwordPolicies  Attempts to modify these fields will result in a 400 error. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | Source ID.
$SourceOwner = Initialize-SourceOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$SourceCluster = Initialize-SourceCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$SourceAccountCorrelationConfig = Initialize-SourceAccountCorrelationConfig -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180855d191c59015d28583727245a" -Name "Directory [source-62867] Account Correlation"
$SourceAccountCorrelationRule = Initialize-SourceAccountCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceManagerCorrelationMapping = Initialize-SourceManagerCorrelationMapping -AccountAttributeName "manager" -IdentityAttributeName "manager"
$SourceManagerCorrelationRule = Initialize-SourceManagerCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceBeforeProvisioningRule = Initialize-SourceBeforeProvisioningRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceSchemasInner = Initialize-SourceSchemasInner -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1777" -Name "MySchema"
$SourcePasswordPoliciesInner = Initialize-SourcePasswordPoliciesInner -Type "PASSWORD_POLICY" -Id "2c91808568c529c60168cca6f90c1777" -Name "My Password Policy"
"AUTHENTICATE"$SourceManagementWorkgroup = Initialize-SourceManagementWorkgroup -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c2222" -Name "My Management Workgroup"
$Source = Initialize-Source -Id "2c91808568c529c60168cca6f90c1324" -Name "My Source" -Description "This is the corporate directory." -Owner $SourceOwner -Cluster $SourceCluster -AccountCorrelationConfig $SourceAccountCorrelationConfig -AccountCorrelationRule $SourceAccountCorrelationRule -ManagerCorrelationMapping $SourceManagerCorrelationMapping -ManagerCorrelationRule $SourceManagerCorrelationRule -BeforeProvisioningRule $SourceBeforeProvisioningRule -Schemas $SourceSchemasInner -PasswordPolicies $SourcePasswordPoliciesInner -Features 
$SourceOwner = Initialize-SourceOwner -Type "IDENTITY" -Id "2c91808568c529c60168cca6f90c1313" -Name "MyName"
$SourceCluster = Initialize-SourceCluster -Type "CLUSTER" -Id "2c9180866166b5b0016167c32ef31a66" -Name "Corporate Cluster"
$SourceAccountCorrelationConfig = Initialize-SourceAccountCorrelationConfig -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180855d191c59015d28583727245a" -Name "Directory [source-62867] Account Correlation"
$SourceAccountCorrelationRule = Initialize-SourceAccountCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceManagerCorrelationMapping = Initialize-SourceManagerCorrelationMapping -AccountAttributeName "manager" -IdentityAttributeName "manager"
$SourceManagerCorrelationRule = Initialize-SourceManagerCorrelationRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceBeforeProvisioningRule = Initialize-SourceBeforeProvisioningRule -Type "RULE" -Id "2c918085708c274401708c2a8a760001" -Name "Example Rule"
$SourceSchemasInner = Initialize-SourceSchemasInner -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1777" -Name "MySchema"
$SourcePasswordPoliciesInner = Initialize-SourcePasswordPoliciesInner -Type "PASSWORD_POLICY" -Id "2c91808568c529c60168cca6f90c1777" -Name "My Password Policy"
"AUTHENTICATE" -Type "OpenLDAP - Direct" -Connector "active-directory" -ConnectorClass "sailpoint.connector.LDAPConnector" -ConnectorAttributes  -DeleteThreshold 10 -Authoritative $false -ManagementWorkgroup $SourceManagementWorkgroup -Healthy $true -Status "SOURCE_STATE_ERROR_ACCOUNT_FILE_IMPORT" -Since "2021-09-28T15:48:29.3801666300Z" -ConnectorId "active-directory" -ConnectorName "Active Directory" -ConnectionType "file" -ConnectorImplementationId "delimited-file" -Created (Get-Date) -Modified (Get-Date) -CredentialProviderEnabled $false -Category "CredentialProvider" # Source | 

# Update Source (Full)
try {
    $Result = Send-V2024Source -Id $Id -Source $Source
} catch {
    Write-Host ("Exception occurred when calling Send-V2024Source: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source ID. | 
 **Source** | [**Source**](Source.md)|  | 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SourceAttrSyncConfig"></a>
# **Send-V2024SourceAttrSyncConfig**
> AttrSyncSourceConfig Send-V2024SourceAttrSyncConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttrSyncSourceConfig] <PSCustomObject><br>

Update Attribute Sync Config

Replaces the attribute synchronization configuration for the source specified by the given ID with the configuration provided in the request body. Only the ""enabled"" field of the values in the ""attributes"" array is mutable. Attempting to change other attributes or add new values to the ""attributes"" array will result in an error. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | The source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$AttrSyncSource = Initialize-AttrSyncSource -Type "SOURCE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"
$AttrSyncSourceAttributeConfig = Initialize-AttrSyncSourceAttributeConfig -Name "email" -DisplayName "Email" -Enabled $true -Target "mail"
$AttrSyncSourceConfig = Initialize-AttrSyncSourceConfig -Source $AttrSyncSource -Attributes $AttrSyncSourceAttributeConfig # AttrSyncSourceConfig | 

# Update Attribute Sync Config
try {
    $Result = Send-V2024SourceAttrSyncConfig -Id $Id -XSailPointExperimental $XSailPointExperimental -AttrSyncSourceConfig $AttrSyncSourceConfig
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SourceAttrSyncConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **AttrSyncSourceConfig** | [**AttrSyncSourceConfig**](AttrSyncSourceConfig.md)|  | 

### Return type

[**AttrSyncSourceConfig**](AttrSyncSourceConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SourceSchema"></a>
# **Send-V2024SourceSchema**
> Schema Send-V2024SourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schema] <PSCustomObject><br>

Update Source Schema (Full)

This API will completely replace an existing Schema with the submitted payload. Some fields of the Schema cannot be updated. These fields are listed below.  * id * name * created * modified  Any attempt to modify these fields will result in an error response with a status code of 400.  > `id` must remain in the request body, but it cannot be changed.  If `id` is omitted from the request body, the result will be a 400 error. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema id.
"AUTHENTICATE"

$AttributeDefinitionSchema = Initialize-AttributeDefinitionSchema -Type "CONNECTOR_SCHEMA" -Id "2c91808568c529c60168cca6f90c1313" -Name "group"
$AttributeDefinition = Initialize-AttributeDefinition -Name "sAMAccountName" -Type "STRING" -Schema $AttributeDefinitionSchema -Description "SAM Account Name" -IsMulti $false -IsEntitlement $false -IsGroup $false

$Schema = Initialize-Schema -Id "2c9180835d191a86015d28455b4a2329" -Name "account" -NativeObjectType "User" -IdentityAttribute "sAMAccountName" -DisplayAttribute "distinguishedName" -HierarchyAttribute "memberOf" -IncludePermissions $false -Features "AUTHENTICATE" -Configuration  -Attributes $AttributeDefinition -Created (Get-Date) -Modified (Get-Date) # Schema | 

# Update Source Schema (Full)
try {
    $Result = Send-V2024SourceSchema -SourceId $SourceId -SchemaId $SchemaId -Schema $Schema
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **SchemaId** | **String**| The Schema id. | 
 **Schema** | [**Schema**](Schema.md)|  | 

### Return type

[**Schema**](Schema.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Sync-V2024AttributesForSource"></a>
# **Sync-V2024AttributesForSource**
> SourceSyncJob Sync-V2024AttributesForSource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Synchronize single source attributes.

This end-point performs attribute synchronization for a selected source.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | The Source id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Synchronize single source attributes.
try {
    $Result = Sync-V2024AttributesForSource -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Sync-V2024AttributesForSource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Source id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**SourceSyncJob**](SourceSyncJob.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-V2024SourceConfiguration"></a>
# **Test-V2024SourceConfiguration**
> StatusResponse Test-V2024SourceConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Test configuration for source connector

This endpoint performs a more detailed validation of the source''s configuration that can take longer than the lighter weight credential validation performed by the checkConnection API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Test configuration for source connector
try {
    $Result = Test-V2024SourceConfiguration -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Test-V2024SourceConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-V2024SourceConnection"></a>
# **Test-V2024SourceConnection**
> StatusResponse Test-V2024SourceConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Check connection for source connector.

This endpoint validates that the configured credentials are valid and will properly authenticate with the source identified by the sourceId path parameter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "cef3ee201db947c5912551015ba0c679" # String | The ID of the Source.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Check connection for source connector.
try {
    $Result = Test-V2024SourceConnection -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Test-V2024SourceConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The ID of the Source. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ProvisioningPoliciesInBulk"></a>
# **Update-V2024ProvisioningPoliciesInBulk**
> ProvisioningPolicyDto[] Update-V2024ProvisioningPoliciesInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningPolicyDto] <PSCustomObject[]><br>

Bulk Update Provisioning Policies

This end-point updates a list of provisioning policies on the specified source in IdentityNow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$FieldDetailsDto = Initialize-FieldDetailsDto -Name "userName" -Transform  -Attributes  -IsRequired $false -Type "string" -IsMultiValued $false
$ProvisioningPolicyDto = Initialize-ProvisioningPolicyDto -Name "example provisioning policy for inactive identities" -Description "this provisioning policy creates access based on an identity going inactive" -UsageType "CREATE" -Fields $FieldDetailsDto # ProvisioningPolicyDto[] | 

# Bulk Update Provisioning Policies
try {
    $Result = Update-V2024ProvisioningPoliciesInBulk -SourceId $SourceId -ProvisioningPolicyDto $ProvisioningPolicyDto
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ProvisioningPoliciesInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ProvisioningPolicy"></a>
# **Update-V2024ProvisioningPolicy**
> ProvisioningPolicyDto Update-V2024ProvisioningPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UsageType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Partial update of Provisioning Policy

This API selectively updates an existing Provisioning Policy using a JSONPatch payload. Transforms can be used in the provisioning policy to create a new attribute that you only need during provisioning. Refer to [Transforms in Provisioning Policies](https://developer.sailpoint.com/idn/docs/transforms/guides/transforms-in-provisioning-policies) for more information.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$UsageType = "CREATE" # UsageType | The type of provisioning policy usage.  In IdentityNow, a source can support various provisioning operations. For example, when a joiner is added to a source, this may trigger both CREATE and UPDATE provisioning operations.  Each usage type is considered a provisioning policy.  A source can have any number of these provisioning policies defined.  These are the common usage types:  CREATE - This usage type relates to 'Create Account Profile', the provisioning template for the account to be created. For example, this would be used for a joiner on a source.   UPDATE - This usage type relates to 'Update Account Profile', the provisioning template for the 'Update' connector operations. For example, this would be used for an attribute sync on a source. ENABLE - This usage type relates to 'Enable Account Profile', the provisioning template for the account to be enabled. For example, this could be used for a joiner on a source once the joiner's account is created.  DISABLE - This usage type relates to 'Disable Account Profile', the provisioning template for the account to be disabled. For example, this could be used when a leaver is removed temporarily from a source.  You can use these four usage types for all your provisioning policy needs. 
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the schema.

# Partial update of Provisioning Policy
try {
    $Result = Update-V2024ProvisioningPolicy -SourceId $SourceId -UsageType $UsageType -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ProvisioningPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024Source"></a>
# **Update-V2024Source**
> Source Update-V2024Source<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Source (Partial)

Use this API to partially update a source in Identity Security Cloud (ISC), using a list of patch operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  These fields are immutable, so they cannot be changed:  * id * type * authoritative * created * modified * connector * connectorClass * passwordPolicies  Attempts to modify these fields will result in a 400 error. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c9180835d191a86015d28455b4a2329" # String | Source ID.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Any password changes are submitted as plain-text and encrypted upon receipt in Identity Security Cloud (ISC).

# Update Source (Partial)
try {
    $Result = Update-V2024Source -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Source: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Source ID. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. Any password changes are submitted as plain-text and encrypted upon receipt in Identity Security Cloud (ISC). | 

### Return type

[**Source**](Source.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024SourceEntitlementRequestConfig"></a>
# **Update-V2024SourceEntitlementRequestConfig**
> SourceEntitlementRequestConfig Update-V2024SourceEntitlementRequestConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceEntitlementRequestConfig] <PSCustomObject><br>

Update Source Entitlement Request Configuration

This API replaces the current entitlement request configuration for a source. This source-level configuration should apply for all the entitlements in the source.  Access request to any entitlements in the source should follow this configuration unless a separate entitlement-level configuration is defined. - During access request, this source-level entitlement request configuration overrides the global organization-level configuration. - However, the entitlement-level configuration (if defined) overrides this source-level configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$EntitlementApprovalScheme = Initialize-EntitlementApprovalScheme -ApproverType "ENTITLEMENT_OWNER" -ApproverId "e3eab852-8315-467f-9de7-70eda97f63c8"
$EntitlementAccessRequestConfig = Initialize-EntitlementAccessRequestConfig -ApprovalSchemes $EntitlementApprovalScheme -RequestCommentRequired $true -DenialCommentRequired $false

$SourceEntitlementRequestConfig = Initialize-SourceEntitlementRequestConfig -AccessRequestConfig $EntitlementAccessRequestConfig # SourceEntitlementRequestConfig | 

# Update Source Entitlement Request Configuration
try {
    $Result = Update-V2024SourceEntitlementRequestConfig -XSailPointExperimental $XSailPointExperimental -SourceEntitlementRequestConfig $SourceEntitlementRequestConfig
} catch {
    Write-Host ("Exception occurred when calling Update-V2024SourceEntitlementRequestConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SourceEntitlementRequestConfig** | [**SourceEntitlementRequestConfig**](SourceEntitlementRequestConfig.md)|  | 

### Return type

[**SourceEntitlementRequestConfig**](SourceEntitlementRequestConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024SourceSchedule"></a>
# **Update-V2024SourceSchedule**
> Schedule1 Update-V2024SourceSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Source Schedule (Partial)

Use this API to selectively update an existing Schedule using a JSONPatch payload.   The following schedule fields are immutable and cannot be updated:  - type 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$ScheduleType = "ACCOUNT_AGGREGATION" # String | The Schedule type.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the schedule.

# Update Source Schedule (Partial)
try {
    $Result = Update-V2024SourceSchedule -SourceId $SourceId -ScheduleType $ScheduleType -XSailPointExperimental $XSailPointExperimental -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024SourceSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceId** | **String**| The Source id. | 
 **ScheduleType** | **String**| The Schedule type. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| The JSONPatch payload used to update the schedule. | 

### Return type

[**Schedule1**](Schedule1.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024SourceSchema"></a>
# **Update-V2024SourceSchema**
> Schema Update-V2024SourceSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Source Schema (Partial)

Use this API to selectively update an existing Schema using a JSONPatch payload.   The following schema fields are immutable and cannot be updated:  - id - name - created - modified   To switch an account attribute to a group entitlement, you need to have the following in place:  - `isEntitlement: true` - Must define a schema for the group and [add it to the source](https://developer.sailpoint.com/idn/api/v3/create-source-schema) before updating the `isGroup` flag.  For example, here is the `group` account attribute referencing a schema that defines the group: ```json {     ""name"": ""groups"",     ""type"": ""STRING"",     ""schema"": {         ""type"": ""CONNECTOR_SCHEMA"",         ""id"": ""2c9180887671ff8c01767b4671fc7d60"",         ""name"": ""group""     },     ""description"": ""The groups, roles etc. that reference account group objects"",     ""isMulti"": true,     ""isEntitlement"": true,     ""isGroup"": true } ``` 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$SourceId = "2c9180835d191a86015d28455b4a2329" # String | The Source id.
$SchemaId = "2c9180835d191a86015d28455b4a2329" # String | The Schema id.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | The JSONPatch payload used to update the schema.

# Update Source Schema (Partial)
try {
    $Result = Update-V2024SourceSchema -SourceId $SourceId -SchemaId $SchemaId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024SourceSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

