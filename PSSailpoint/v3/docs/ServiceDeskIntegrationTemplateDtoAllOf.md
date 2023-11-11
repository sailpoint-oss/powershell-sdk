# ServiceDeskIntegrationTemplateDtoAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The &#39;type&#39; property specifies the type of the Service Desk integration template. | [default to "Web Service SDIM"]
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | The &#39;attributes&#39; property value is a map of attributes available for integrations using this Service Desk integration template. | 
**ProvisioningConfig** | [**ProvisioningConfig**](ProvisioningConfig.md) |  | 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationTemplateDtoAllOf = Initialize-ServiceDeskIntegrationTemplateDtoAllOf  -Type Web Service SDIM `
 -Attributes {property&#x3D;value, key&#x3D;value} `
 -ProvisioningConfig null
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationTemplateDtoAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

