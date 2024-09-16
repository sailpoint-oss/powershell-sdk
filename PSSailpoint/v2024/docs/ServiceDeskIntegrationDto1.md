# ServiceDeskIntegrationDto1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Service Desk integration&#39;s name. The name must be unique. | 
**Description** | **String** | Service Desk integration&#39;s description. | 
**Type** | **String** | Service Desk integration types:  - ServiceNowSDIM - ServiceNow  | [default to "ServiceNowSDIM"]
**OwnerRef** | [**OwnerDto**](OwnerDto.md) |  | [optional] 
**ClusterRef** | [**SourceClusterDto**](SourceClusterDto.md) |  | [optional] 
**Cluster** | **String** | Cluster ID for the Service Desk integration (replaced by clusterRef, retained for backward compatibility). | [optional] 
**ManagedSources** | **String[]** | Source IDs for the Service Desk integration (replaced by provisioningConfig.managedSResourceRefs, but retained here for backward compatibility). | [optional] 
**ProvisioningConfig** | [**ProvisioningConfig1**](ProvisioningConfig1.md) |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Service Desk integration&#39;s attributes. Validation constraints enforced by the implementation. | 
**BeforeProvisioningRule** | [**BeforeProvisioningRuleDto**](BeforeProvisioningRuleDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationDto1 = Initialize-PSSailpoint.V2024ServiceDeskIntegrationDto1  -Name Service Desk Integration Name `
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
$ServiceDeskIntegrationDto1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

