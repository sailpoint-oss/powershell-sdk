# TransformRead
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**TransformUpdateAttributes**](TransformUpdateAttributes.md) |  | 
**Name** | **String** | Unique name of this transform | 
**Type** | **String** | The type of transform operation | 
**Id** | **String** | Unique ID of this transform | 
**Internal** | **Boolean** | Indicates whether this is an internal SailPoint-created transform or a customer-created transform | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$TransformRead = Initialize-PSSailpointTransformRead  -Attributes null `
 -Name Timestamp To Date `
 -Type dateFormat `
 -Id 2cd78adghjkja34jh2b1hkjhasuecd `
 -Internal false
```

- Convert the resource to JSON
```powershell
$TransformRead | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

