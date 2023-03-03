# AttributeDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the attribute. | [optional] 
**Type** | [**AttributeDefinitionType**](AttributeDefinitionType.md) |  | [optional] 
**Schema** | [**AttributeDefinitionSchema**](AttributeDefinitionSchema.md) |  | [optional] 
**Description** | **String** | A human-readable description of the attribute. | [optional] 
**IsMultiValued** | **Boolean** | Flag indicating whether or not the attribute is multi-valued. | [optional] 
**IsEntitlement** | **Boolean** | Flag indicating whether or not the attribute is an entitlement. | [optional] 
**IsGroup** | **Boolean** | Flag indicating whether or not the attribute represents a group. This can only be &#x60;true&#x60; if &#x60;isEntitlement&#x60; is also &#x60;true&#x60; **and** there is a schema defined for the attribute..  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeDefinition = Initialize-PSSailpointAttributeDefinition  -Name sAMAccountName `
 -Type null `
 -Schema null `
 -Description SAM Account Name `
 -IsMultiValued false `
 -IsEntitlement false `
 -IsGroup false
```

- Convert the resource to JSON
```powershell
$AttributeDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

