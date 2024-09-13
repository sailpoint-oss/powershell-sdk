# AttributeDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | Technical name of the Attribute. This is unique and cannot be changed after creation. | [optional] 
**Name** | **String** | The display name of the key. | [optional] 
**Multiselect** | **Boolean** | Indicates whether the attribute can have multiple values. | [optional] [default to $false]
**Status** | **String** | The status of the Attribute. | [optional] 
**Type** | **String** | The type of the Attribute. This can be either &quot;&quot;custom&quot;&quot; or &quot;&quot;governance&quot;&quot;. | [optional] 
**ObjectTypes** | **String[]** | An array of object types this attributes values can be applied to. Possible values are &quot;&quot;all&quot;&quot; or &quot;&quot;entitlement&quot;&quot;. Value &quot;&quot;all&quot;&quot; means this attribute can be used with all object types that are supported. | [optional] 
**Description** | **String** | The description of the Attribute. | [optional] 
**Values** | [**AttributeValueDTO[]**](AttributeValueDTO.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeDTO = Initialize-PSSailpoint.V2024AttributeDTO  -Key iscPrivacy `
 -Name Privacy `
 -Multiselect false `
 -Status active `
 -Type governance `
 -ObjectTypes [entitlement] `
 -Description Specifies the level of privacy associated with an access item. `
 -Values null
```

- Convert the resource to JSON
```powershell
$AttributeDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

