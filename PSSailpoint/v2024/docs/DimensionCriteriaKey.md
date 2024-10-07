# DimensionCriteriaKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DimensionCriteriaKeyType**](DimensionCriteriaKeyType.md) |  | 
**Property** | **String** | The name of the identity attribute to which the associated criteria applies. | 

## Examples

- Prepare the resource
```powershell
$DimensionCriteriaKey = Initialize-PSSailpoint.V2024DimensionCriteriaKey  -Type null `
 -Property attribute.email
```

- Convert the resource to JSON
```powershell
$DimensionCriteriaKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

