# MultiHostIntegrationsConnectorAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxAllowedSources** | **Int32** | Maximum sources allowed count of a Multi-Host Integration | [optional] 
**LastSourceUploadCount** | **Int32** | Last upload sources count of a Multi-Host Integration | [optional] 
**ConnectorFileUploadHistory** | [**MultiHostIntegrationsConnectorAttributesConnectorFileUploadHistory**](MultiHostIntegrationsConnectorAttributesConnectorFileUploadHistory.md) |  | [optional] 
**MultihostStatus** | **String** | Multi-Host integration status. | [optional] 
**ShowAccountSchema** | **Boolean** | Show account schema | [optional] [default to $true]
**ShowEntitlementSchema** | **Boolean** | Show entitlement schema | [optional] [default to $true]
**MultiHostAttributes** | [**MultiHostIntegrationsConnectorAttributesMultiHostAttributes**](MultiHostIntegrationsConnectorAttributesMultiHostAttributes.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsConnectorAttributes = Initialize-PSSailpoint.BetaMultiHostIntegrationsConnectorAttributes  -MaxAllowedSources 250 `
 -LastSourceUploadCount 40 `
 -ConnectorFileUploadHistory null `
 -MultihostStatus ready `
 -ShowAccountSchema true `
 -ShowEntitlementSchema true `
 -MultiHostAttributes null
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsConnectorAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

