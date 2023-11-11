# IdentityAttributeConfig1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | The backend will only promote values if the profile/mapping is enabled. | [optional] [default to $false]
**AttributeTransforms** | [**IdentityAttributeTransform1[]**](IdentityAttributeTransform1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeConfig1 = Initialize-BetaIdentityAttributeConfig1  -Enabled true `
 -AttributeTransforms null
```

- Convert the resource to JSON
```powershell
$IdentityAttributeConfig1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

