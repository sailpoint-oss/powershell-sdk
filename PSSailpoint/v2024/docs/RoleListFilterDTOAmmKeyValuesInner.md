# RoleListFilterDTOAmmKeyValuesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | attribute key of a metadata. | [optional] 
**Values** | **String[]** | A list of attribute key names to filter roles. If the values is empty, will only filter by attribute key. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleListFilterDTOAmmKeyValuesInner = Initialize-PSSailpoint.V2024RoleListFilterDTOAmmKeyValuesInner  -Attribute iscFederalClassifications `
 -Values [secret]
```

- Convert the resource to JSON
```powershell
$RoleListFilterDTOAmmKeyValuesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

