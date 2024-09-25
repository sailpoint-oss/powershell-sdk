# MultiHostIntegrationsConnectorAttributesMultiHostAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password. | [optional] 
**ConnectorFiles** | **String** | Connector file. | [optional] 
**AuthType** | **String** | Authentication type. | [optional] 
**User** | **String** | Username. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsConnectorAttributesMultiHostAttributes = Initialize-PSSailpoint.BetaMultiHostIntegrationsConnectorAttributesMultiHostAttributes  -Password Password `
 -ConnectorFiles mssql-jdbc-8.4.1.jre8.jar `
 -AuthType SQLAuthentication `
 -User My Username
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsConnectorAttributesMultiHostAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

