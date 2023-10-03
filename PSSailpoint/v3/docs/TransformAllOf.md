# TransformAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Unique name of this transform | 
**Type** | **String** | The type of transform operation | 

## Examples

- Prepare the resource
```powershell
$TransformAllOf = Initialize-PSSailpointTransformAllOf  -Name Timestamp To Date `
 -Type dateFormat
```

- Convert the resource to JSON
```powershell
$TransformAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

