# AttributeDTOList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**AttributeDTO[]**](AttributeDTO.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeDTOList = Initialize-PSSailpoint.V3AttributeDTOList  -Attributes [{key&#x3D;iscPrivacy, name&#x3D;Privacy, multiselect&#x3D;false, status&#x3D;active, type&#x3D;governance, objectTypes&#x3D;[all], description&#x3D;Specifies the level of privacy associated with an access item., values&#x3D;[{value&#x3D;public, name&#x3D;Public, status&#x3D;active}]}]
```

- Convert the resource to JSON
```powershell
$AttributeDTOList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

