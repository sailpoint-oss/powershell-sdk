# VendorConnectorMappingUpdatedAt
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | **System.DateTime** | The timestamp when the mapping was last updated, represented in ISO 8601 format. | [optional] 
**Valid** | **Boolean** | A flag indicating if the &#39;Time&#39; field is set and valid. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$VendorConnectorMappingUpdatedAt = Initialize-Tm.V2024VendorConnectorMappingUpdatedAt  -Time 2024-03-14T12:56:19.391294Z `
 -Valid true
```

- Convert the resource to JSON
```powershell
$VendorConnectorMappingUpdatedAt | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

