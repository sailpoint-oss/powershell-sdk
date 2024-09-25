# MultiHostIntegrationsCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Multi-Host Integration&#39;s human-readable name. | 
**Description** | **String** | Multi-Host Integration&#39;s human-readable description. | 
**Owner** | [**MultiHostIntegrationsOwner**](MultiHostIntegrationsOwner.md) |  | 
**Cluster** | [**MultiHostIntegrationsCluster**](MultiHostIntegrationsCluster.md) |  | [optional] 
**Connector** | **String** | Connector script name. | 
**ConnectorAttributes** | [**System.Collections.Hashtable**](AnyType.md) | Multi-Host Integration specific configuration. User can add any number of additional attributes. e.g. maxSourcesPerAggGroup, maxAllowedSources etc. | [optional] 
**ManagementWorkgroup** | [**MultiHostIntegrationsManagementWorkgroup**](MultiHostIntegrationsManagementWorkgroup.md) |  | [optional] 
**Created** | **System.DateTime** | Date-time when the source was created | [optional] 
**Modified** | **System.DateTime** | Date-time when the source was last modified. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsCreate = Initialize-PSSailpoint.BetaMultiHostIntegrationsCreate  -Name My Multi-Host Integration `
 -Description This is the Multi-Host Integration. `
 -Owner null `
 -Cluster null `
 -Connector multihost-microsoft-sql-server `
 -ConnectorAttributes {maxSourcesPerAggGroup&#x3D;10, maxAllowedSources&#x3D;300} `
 -ManagementWorkgroup null `
 -Created 2022-02-08T14:50:03.827Z `
 -Modified 2024-01-23T18:08:50.897Z
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

