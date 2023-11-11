# Transform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Unique name of this transform | 
**Type** | **String** | The type of transform operation | 
**Attributes** | [**TransformAttributes**](TransformAttributes.md) |  | 

## Examples

- Prepare the resource
```powershell
$Transform = Initialize-Transform  -Name Timestamp To Date `
 -Type dateFormat `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$Transform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

