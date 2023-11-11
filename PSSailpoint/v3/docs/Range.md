# Range
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Lower** | [**Bound**](Bound.md) |  | [optional] 
**Upper** | [**Bound**](Bound.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Range = Initialize-Range  -Lower null `
 -Upper null
```

- Convert the resource to JSON
```powershell
$Range | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

