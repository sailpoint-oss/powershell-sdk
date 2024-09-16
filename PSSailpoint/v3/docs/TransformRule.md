# TransformRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | This is the name of the Transform rule that needs to be invoked by the transform | 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$TransformRule = Initialize-PSSailpoint.V3TransformRule  -Name Transform Calculation Rule `
 -RequiresPeriodicRefresh false
```

- Convert the resource to JSON
```powershell
$TransformRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

