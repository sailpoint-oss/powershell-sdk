# Source
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id of the Source | [optional] [readonly] 
**Description** | **String** | Human-readable description of the source | [optional] 
**Owner** | [**SourceOwner**](SourceOwner.md) |  | [optional] 
**Cluster** | [**SourceCluster**](SourceCluster.md) |  | [optional] 
**AccountCorrelationConfig** | [**SourceAccountCorrelationConfig**](SourceAccountCorrelationConfig.md) |  | [optional] 
**AccountCorrelationRule** | [**SourceAccountCorrelationRule**](SourceAccountCorrelationRule.md) |  | [optional] 
**ManagerCorrelationMapping** | [**ManagerCorrelationMapping**](ManagerCorrelationMapping.md) |  | [optional] 
**ManagerCorrelationRule** | [**SourceManagerCorrelationRule**](SourceManagerCorrelationRule.md) |  | [optional] 
**BeforeProvisioningRule** | [**SourceBeforeProvisioningRule**](SourceBeforeProvisioningRule.md) |  | [optional] 
**Schemas** | [**SourceSchemasInner[]**](SourceSchemasInner.md) | List of references to Schema objects | [optional] 
**PasswordPolicies** | [**SourcePasswordPoliciesInner[]**](SourcePasswordPoliciesInner.md) | List of references to the associated PasswordPolicy objects. | [optional] 
**Features** | [**SourceFeature[]**](SourceFeature.md) | Optional features that can be supported by a source. | [optional] 
**Type** | **String** | Specifies the type of system being managed e.g. Active Directory, Workday, etc.. | [optional] 
**Connector** | **String** | Connector script name. | [optional] 
**ConnectorClass** | **String** | The fully qualified name of the Java class that implements the connector interface. | [optional] 
**ConnectorAttributes** | [**SystemCollectionsHashtable**](.md) | Connector specific configuration; will differ from type to type. | [optional] 
**DeleteThreshold** | **Int32** | Number from 0 to 100 that specifies when to skip the delete phase. | [optional] 
**Authoritative** | **Boolean** | When true indicates the source is referenced by an IdentityProfile. | [optional] 
**ManagementWorkgroup** | [**SourceManagementWorkgroup**](SourceManagementWorkgroup.md) |  | [optional] 
**Healthy** | **Boolean** | When true indicates a healthy source | [optional] 
**Status** | **String** | A status identifier, giving specific information on why a source is healthy or not | [optional] 
**Since** | **String** | Timestamp showing when a source health check was last performed | [optional] 
**ConnectorId** | **String** | The id of connector | [optional] 
**ConnectorName** | **String** | The name of the connector that was chosen on source creation | [optional] 
**ConnectionType** | **String** | The type of connection (direct or file) | [optional] 
**ConnectorImplementstionId** | **String** | The connector implementstion id | [optional] 

## Examples

- Prepare the resource
```powershell
$Source = Initialize-PSSailpointBetaSource  -Id 2c91808568c529c60168cca6f90c1324 `
 -Description This is the corporate directory. `
 -Owner null `
 -Cluster null `
 -AccountCorrelationConfig null `
 -AccountCorrelationRule null `
 -ManagerCorrelationMapping null `
 -ManagerCorrelationRule null `
 -BeforeProvisioningRule null `
 -Schemas [{type&#x3D;CONNECTOR_SCHEMA, id&#x3D;2c9180835d191a86015d28455b4b232a, name&#x3D;account}, {type&#x3D;CONNECTOR_SCHEMA, id&#x3D;2c9180835d191a86015d28455b4b232b, name&#x3D;group}] `
 -PasswordPolicies [{type&#x3D;PASSWORD_POLICY, id&#x3D;2c9180855d191c59015d291ceb053980, name&#x3D;Corporate Password Policy}, {type&#x3D;PASSWORD_POLICY, id&#x3D;2c9180855d191c59015d291ceb057777, name&#x3D;Vendor Password Policy}] `
 -Features [SYNC_PROVISIONING, MANAGER_LOOKUP, SEARCH, PROVISIONING, AUTHENTICATE, GROUP_PROVISIONING, PASSWORD] `
 -Type OpenLDAP - Direct `
 -Connector active-directory `
 -ConnectorClass sailpoint.connector.LDAPConnector `
 -ConnectorAttributes {healthCheckTimeout&#x3D;30, authSearchAttributes&#x3D;[cn, uid, mail]} `
 -DeleteThreshold 10 `
 -Authoritative false `
 -ManagementWorkgroup null `
 -Healthy true `
 -Status SOURCE_STATE_HEALTHY `
 -Since 2021-09-28T15:48:29.3801666300Z `
 -ConnectorId active-directory `
 -ConnectorName Active Directory `
 -ConnectionType file `
 -ConnectorImplementstionId delimited-file
```

- Convert the resource to JSON
```powershell
$Source | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

