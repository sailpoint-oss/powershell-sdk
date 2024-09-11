# SlimDiscoveredApplications
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier for the discovered application. | [optional] 
**Name** | **String** | Name of the discovered application. | [optional] 
**DiscoverySource** | **String** | Source from which the application was discovered. | [optional] 
**DiscoveredVendor** | **String** | The vendor associated with the discovered application. | [optional] 
**Description** | **String** | A brief description of the discovered application. | [optional] 
**RecommendedConnectors** | **String[]** | List of recommended connectors for the application. | [optional] 
**DiscoveredAt** | **System.DateTime** | The timestamp when the application was last received via an entitlement aggregation invocation  or a manual csv upload, in ISO 8601 format. | [optional] 
**CreatedAt** | **System.DateTime** | The timestamp when the application was first discovered, in ISO 8601 format. | [optional] 
**Status** | **String** | The status of an application within the discovery source.  By default this field is set to &quot;&quot;ACTIVE&quot;&quot; when the application is discovered.  If an application has been deleted from within the discovery source, the status will be set to &quot;&quot;INACTIVE&quot;&quot;. | [optional] 

## Examples

- Prepare the resource
```powershell
$SlimDiscoveredApplications = Initialize-Tm.BetaSlimDiscoveredApplications  -Id null `
 -Name ExampleApp `
 -DiscoverySource csv `
 -DiscoveredVendor ExampleVendor `
 -Description An application for managing examples. `
 -RecommendedConnectors [ConnectorA, ConnectorB] `
 -DiscoveredAt 2023-01-01T12:00Z `
 -CreatedAt 2023-01-01T12:00Z `
 -Status ACTIVE
```

- Convert the resource to JSON
```powershell
$SlimDiscoveredApplications | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

