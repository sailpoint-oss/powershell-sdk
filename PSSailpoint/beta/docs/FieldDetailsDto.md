# FieldDetailsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the attribute. | [optional] 
**Transform** | [**SystemCollectionsHashtable**](.md) | The transform to apply to the field | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | Attributes required for the transform | [optional] 
**IsRequired** | **Boolean** | Flag indicating whether or not the attribute is required. | [optional] [readonly] [default to $false]
**Type** | **String** | The type of the attribute. | [optional] 
**IsMultiValued** | **Boolean** | Flag indicating whether or not the attribute is multi-valued. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$FieldDetailsDto = Initialize-BetaFieldDetailsDto  -Name userName `
 -Transform {type&#x3D;rule, attributes&#x3D;{name&#x3D;Create Unique LDAP Attribute}} `
 -Attributes {template&#x3D;${firstname}.${lastname}${uniqueCounter}, cloudMaxUniqueChecks&#x3D;50, cloudMaxSize&#x3D;20, cloudRequired&#x3D;true} `
 -IsRequired false `
 -Type string `
 -IsMultiValued false
```

- Convert the resource to JSON
```powershell
$FieldDetailsDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

