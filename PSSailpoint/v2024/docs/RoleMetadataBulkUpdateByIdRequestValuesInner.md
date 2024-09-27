# RoleMetadataBulkUpdateByIdRequestValuesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | the key of metadata attribute | 
**Values** | **String[]** | the values of attribute to be updated | 

## Examples

- Prepare the resource
```powershell
$RoleMetadataBulkUpdateByIdRequestValuesInner = Initialize-PSSailpoint.V2024RoleMetadataBulkUpdateByIdRequestValuesInner  -Attribute iscFederalClassifications `
 -Values [secret]
```

- Convert the resource to JSON
```powershell
$RoleMetadataBulkUpdateByIdRequestValuesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

