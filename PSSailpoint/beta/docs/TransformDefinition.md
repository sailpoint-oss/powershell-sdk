# TransformDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the transform definition. | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Arbitrary key-value pairs to store any metadata for the object | [optional] 

## Examples

- Prepare the resource
```powershell
$TransformDefinition = Initialize-BetaTransformDefinition  -Type accountAttribute `
 -Attributes {attributeName&#x3D;e-mail, sourceName&#x3D;MySource, sourceId&#x3D;2c9180877a826e68017a8c0b03da1a53}
```

- Convert the resource to JSON
```powershell
$TransformDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

