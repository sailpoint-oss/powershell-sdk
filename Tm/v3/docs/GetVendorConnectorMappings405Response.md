# GetVendorConnectorMappings405Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorName** | [**SystemCollectionsHashtable**](.md) | A message describing the error | [optional] 
**ErrorMessage** | [**SystemCollectionsHashtable**](.md) | Description of the error | [optional] 
**TrackingId** | **String** | Unique tracking id for the error. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetVendorConnectorMappings405Response = Initialize-Tm.V3GetVendorConnectorMappings405Response  -ErrorName NotSupportedException `
 -ErrorMessage Cannot consume content type `
 -TrackingId e7eab60924f64aa284175b9fa3309599
```

- Convert the resource to JSON
```powershell
$GetVendorConnectorMappings405Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

