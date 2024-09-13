# ServiceDeskIntegrationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier for the Service Desk integration | [optional] 
**Name** | **String** | Service Desk integration&#39;s name. The name must be unique. | 
**Created** | **System.DateTime** | The date and time the Service Desk integration was created | [optional] 
**Modified** | **System.DateTime** | The date and time the Service Desk integration was last modified | [optional] 
**Description** | **String** | Service Desk integration&#39;s description. | 
**Type** | **String** | Service Desk integration types:  - ServiceNowSDIM - ServiceNow  | [default to "ServiceNowSDIM"]
**OwnerRef** | [**OwnerDto**](OwnerDto.md) |  | [optional] 
**ClusterRef** | [**SourceClusterDto**](SourceClusterDto.md) |  | [optional] 
**Cluster** | **String** | Cluster ID for the Service Desk integration (replaced by clusterRef, retained for backward compatibility). | [optional] 
**ManagedSources** | **String[]** | Source IDs for the Service Desk integration (replaced by provisioningConfig.managedSResourceRefs, but retained here for backward compatibility). | [optional] 
**ProvisioningConfig** | [**ProvisioningConfig**](ProvisioningConfig.md) |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Service Desk integration&#39;s attributes. Validation constraints enforced by the implementation. | 
**BeforeProvisioningRule** | [**BeforeProvisioningRuleDto**](BeforeProvisioningRuleDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationDto = Initialize-PSSailpoint.V3ServiceDeskIntegrationDto  -Id 62945a496ef440189b1f03e3623411c8 `
 -Name Service Desk Integration Name `
 -Created 2024-01-17T18:45:25.994Z `
 -Modified 2024-02-18T18:45:25.994Z `
 -Description A very nice Service Desk integration `
 -Type ServiceNowSDIM `
 -OwnerRef null `
 -ClusterRef null `
 -Cluster xyzzy999 `
 -ManagedSources [2c9180835d191a86015d28455b4a2329, 2c5680835d191a85765d28455b4a9823] `
 -ProvisioningConfig null `
 -Attributes {property&#x3D;value, key&#x3D;value} `
 -BeforeProvisioningRule null
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

