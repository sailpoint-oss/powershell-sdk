# BulkTaggedObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectRefs** | [**TaggedObjectDto[]**](TaggedObjectDto.md) |  | [optional] 
**Tags** | **String[]** | Label to be applied to an Object | [optional] 
**Operation** | **String** | If APPEND, tags are appended to the list of tags for the object. A 400 error is returned if this would add duplicate tags to the object.  If MERGE, tags are merged with the existing tags. Duplicate tags are silently ignored. | [optional] [default to "APPEND"]

## Examples

- Prepare the resource
```powershell
$BulkTaggedObject = Initialize-BulkTaggedObject  -ObjectRefs null `
 -Tags [BU_FINANCE, PCI] `
 -Operation MERGE
```

- Convert the resource to JSON
```powershell
$BulkTaggedObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

