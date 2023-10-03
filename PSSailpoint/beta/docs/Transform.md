# Transform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**TransformUpdateAttributes**](TransformUpdateAttributes.md) |  | 
**Name** | **String** | Unique name of this transform | 
**Type** | **String** | The type of transform operation | 

## Examples

- Prepare the resource
```powershell
$Transform = Initialize-PSSailpointBetaTransform  -Attributes null `
 -Name Timestamp To Date `
 -Type dateFormat
```

- Convert the resource to JSON
```powershell
$Transform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

