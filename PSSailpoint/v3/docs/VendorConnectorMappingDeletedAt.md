# VendorConnectorMappingDeletedAt
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | **System.DateTime** | The timestamp when the mapping was deleted, represented in ISO 8601 format, if applicable. | [optional] 
**Valid** | **Boolean** | A flag indicating if the &#39;Time&#39; field is set and valid, i.e., if the mapping has been deleted. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$VendorConnectorMappingDeletedAt = Initialize-PSSailpointVendorConnectorMappingDeletedAt  -Time 0001-01-01T00:00Z `
 -Valid false
```

- Convert the resource to JSON
```powershell
$VendorConnectorMappingDeletedAt | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

