# SectionDetailsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Label of the section | [optional] 
**FormItems** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | List of FormItems. FormItems can be SectionDetails and/or FieldDetails | [optional] 

## Examples

- Prepare the resource
```powershell
$SectionDetailsAllOf = Initialize-SectionDetailsAllOf  -Label Section 1 `
 -FormItems []
```

- Convert the resource to JSON
```powershell
$SectionDetailsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

