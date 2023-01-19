# Transform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique ID of this transform | [optional] [readonly] 
**Name** | **String** | Unique name of this transform | 
**Type** | **String** | The type of transform operation | 
**Attributes** | [**TransformAttributes**](TransformAttributes.md) |  | 
**Internal** | **Boolean** | Indicates whether this is an internal SailPoint-created transform or a customer-created transform | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Transform = Initialize-PSSailpointTransform  -Id 2cd78adghjkja34jh2b1hkjhasuecd `
 -Name Timestamp To Date `
 -Type dateFormat `
 -Attributes null `
 -Internal false
```

- Convert the resource to JSON
```powershell
$Transform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

