# DiscoveredApplicationsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier for the discovered application. | [optional] 
**Name** | **String** | Name of the discovered application. | [optional] 
**DiscoverySource** | **String** | Source from which the application was discovered. | [optional] 
**DiscoveredVendor** | **String** | The vendor associated with the discovered application. | [optional] 
**Description** | **String** | A brief description of the discovered application. | [optional] 
**RecommendedConnectors** | **String[]** | List of recommended connectors for the application. | [optional] 
**DiscoveredTimestamp** | **System.DateTime** | The timestamp when the application was discovered, in ISO 8601 format. | [optional] 

## Examples

- Prepare the resource
```powershell
$DiscoveredApplicationsInner = Initialize-PSSailpointBetaDiscoveredApplicationsInner  -Id null `
 -Name ExampleApp `
 -DiscoverySource CSV `
 -DiscoveredVendor ExampleVendor `
 -Description An application for managing examples. `
 -RecommendedConnectors [ConnectorA, ConnectorB] `
 -DiscoveredTimestamp 2023-01-01T12:00Z
```

- Convert the resource to JSON
```powershell
$DiscoveredApplicationsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

