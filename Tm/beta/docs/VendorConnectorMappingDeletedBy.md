# VendorConnectorMappingDeletedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**String** | **String** | The identifier of the user who deleted the mapping, if applicable. | [optional] 
**Valid** | **Boolean** | A flag indicating if the &#39;String&#39; field is set and valid, i.e., if the mapping has been deleted. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$VendorConnectorMappingDeletedBy = Initialize-Tm.BetaVendorConnectorMappingDeletedBy  -String  `
 -Valid false
```

- Convert the resource to JSON
```powershell
$VendorConnectorMappingDeletedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

