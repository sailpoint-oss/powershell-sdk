# TransformRead
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Unique name of this transform | 
**Type** | **String** | The type of transform operation | 
**Attributes** | [**TransformAttributes**](TransformAttributes.md) |  | 
**Id** | **String** | Unique ID of this transform | 
**Internal** | **Boolean** | Indicates whether this is an internal SailPoint-created transform or a customer-created transform | [default to $false]

## Examples

- Prepare the resource
```powershell
$TransformRead = Initialize-TransformRead  -Name Timestamp To Date `
 -Type dateFormat `
 -Attributes null `
 -Id 2cd78adghjkja34jh2b1hkjhasuecd `
 -Internal false
```

- Convert the resource to JSON
```powershell
$TransformRead | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

