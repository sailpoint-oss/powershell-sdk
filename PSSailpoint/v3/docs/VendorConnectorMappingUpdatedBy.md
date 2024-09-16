# VendorConnectorMappingUpdatedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**String** | **String** | The identifier of the user who last updated the mapping, if available. | [optional] 
**Valid** | **Boolean** | A flag indicating if the &#39;String&#39; field is set and valid. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$VendorConnectorMappingUpdatedBy = Initialize-PSSailpoint.V3VendorConnectorMappingUpdatedBy  -String user-67891 `
 -Valid true
```

- Convert the resource to JSON
```powershell
$VendorConnectorMappingUpdatedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

