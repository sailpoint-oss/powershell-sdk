# VendorConnectorMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier for the vendor-connector mapping. | [optional] 
**Vendor** | **String** | The name of the vendor. | [optional] 
**Connector** | **String** | The name of the connector. | [optional] 
**CreatedAt** | **System.DateTime** | The creation timestamp of the mapping. | [optional] 
**CreatedBy** | **String** | The identifier of the user who created the mapping. | [optional] 
**UpdatedAt** | [**VendorConnectorMappingUpdatedAt**](VendorConnectorMappingUpdatedAt.md) |  | [optional] 
**UpdatedBy** | [**VendorConnectorMappingUpdatedBy**](VendorConnectorMappingUpdatedBy.md) |  | [optional] 
**DeletedAt** | [**VendorConnectorMappingDeletedAt**](VendorConnectorMappingDeletedAt.md) |  | [optional] 
**DeletedBy** | [**VendorConnectorMappingDeletedBy**](VendorConnectorMappingDeletedBy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VendorConnectorMapping = Initialize-Tm.V3VendorConnectorMapping  -Id 78733556-9ea3-4f59-bf69-e5cd92b011b4 `
 -Vendor Example vendor `
 -Connector Example connector `
 -CreatedAt 2024-03-13T12:56:19.391294Z `
 -CreatedBy admin `
 -UpdatedAt null `
 -UpdatedBy null `
 -DeletedAt null `
 -DeletedBy null
```

- Convert the resource to JSON
```powershell
$VendorConnectorMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

