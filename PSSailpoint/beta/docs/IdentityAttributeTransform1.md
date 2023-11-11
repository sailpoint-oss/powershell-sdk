# IdentityAttributeTransform1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityAttributeName** | **String** | Name of the identity attribute. | [optional] 
**TransformDefinition** | [**TransformDefinition1**](TransformDefinition1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeTransform1 = Initialize-BetaIdentityAttributeTransform1  -IdentityAttributeName email `
 -TransformDefinition null
```

- Convert the resource to JSON
```powershell
$IdentityAttributeTransform1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

