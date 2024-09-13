# BulkRemoveTaggedObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectRefs** | [**TaggedObjectDto[]**](TaggedObjectDto.md) |  | [optional] 
**Tags** | **String[]** | Label to be applied to an Object | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkRemoveTaggedObject = Initialize-PSSailpoint.V3BulkRemoveTaggedObject  -ObjectRefs null `
 -Tags [BU_FINANCE, PCI]
```

- Convert the resource to JSON
```powershell
$BulkRemoveTaggedObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

