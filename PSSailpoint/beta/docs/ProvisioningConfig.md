# ProvisioningConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UniversalManager** | **Boolean** | Specifies whether this configuration is used to manage provisioning requests for all sources from the org.  If true, no managedResourceRefs are allowed. | [optional] [readonly] 
**ManagedResourceRefs** | [**ProvisioningConfigManagedResourceRefsInner[]**](ProvisioningConfigManagedResourceRefsInner.md) | References to sources for the Service Desk integration template.  May only be specified if universalManager is false. | [optional] 
**PlanInitializerScript** | [**ProvisioningConfigPlanInitializerScript**](ProvisioningConfigPlanInitializerScript.md) |  | [optional] 
**NoProvisioningRequests** | **Boolean** | Name of an attribute that when true disables the saving of ProvisioningRequest objects whenever plans are sent through this integration. | [optional] 
**ProvisioningRequestExpiration** | **Int32** | When saving pending requests is enabled, this defines the number of hours the request is allowed to live before it is considered expired and no longer affects plan compilation. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConfig = Initialize-BetaProvisioningConfig  -UniversalManager true `
 -ManagedResourceRefs [{type&#x3D;SOURCE, id&#x3D;2c9180855d191c59015d291ceb051111, name&#x3D;My Source 1}, {type&#x3D;SOURCE, id&#x3D;2c9180855d191c59015d291ceb052222, name&#x3D;My Source 2}] `
 -PlanInitializerScript null `
 -NoProvisioningRequests true `
 -ProvisioningRequestExpiration 7
```

- Convert the resource to JSON
```powershell
$ProvisioningConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

