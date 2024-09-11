# ServiceDeskIntegrationTemplateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Type** | **String** | The &#39;type&#39; property specifies the type of the Service Desk integration template. | [default to "Web Service SDIM"]
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | The &#39;attributes&#39; property value is a map of attributes available for integrations using this Service Desk integration template. | 
**ProvisioningConfig** | [**ProvisioningConfig**](ProvisioningConfig.md) |  | 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationTemplateDto = Initialize-Tm.V2024ServiceDeskIntegrationTemplateDto  -Id id12345 `
 -Name aName `
 -Created 2015-05-28T14:07:17Z `
 -Modified 2015-05-28T14:07:17Z `
 -Type Web Service SDIM `
 -Attributes {property&#x3D;value, key&#x3D;value} `
 -ProvisioningConfig null
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationTemplateDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

