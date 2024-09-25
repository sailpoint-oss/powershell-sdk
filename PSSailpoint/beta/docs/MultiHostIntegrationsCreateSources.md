# MultiHostIntegrationsCreateSources
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Source&#39;s human-readable name. | 
**Description** | **String** | Source&#39;s human-readable description. | [optional] 
**ConnectorAttributes** | [**System.Collections.Hashtable**](AnyType.md) | Connector specific configuration. This configuration will differ from type to type. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsCreateSources = Initialize-PSSailpoint.BetaMultiHostIntegrationsCreateSources  -Name My Source `
 -Description This is the corporate directory. `
 -ConnectorAttributes {authType&#x3D;SQLAuthentication, url&#x3D;jdbc:sqlserver://178.18.41.118:1433, user&#x3D;username, driverClass&#x3D;com.microsoft.sqlserver.jdbc.SQLServerDriver, maxSourcesPerAggGroup&#x3D;10, maxAllowedSources&#x3D;300}
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsCreateSources | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

