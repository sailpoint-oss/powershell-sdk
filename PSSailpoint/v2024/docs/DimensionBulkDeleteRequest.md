# DimensionBulkDeleteRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DimensionIds** | **String[]** | List of IDs of Dimensions to be deleted. | 

## Examples

- Prepare the resource
```powershell
$DimensionBulkDeleteRequest = Initialize-PSSailpoint.V2024DimensionBulkDeleteRequest  -DimensionIds [2c9180847812e0b1017817051919ecca, 2c9180887812e0b201781e129f151816]
```

- Convert the resource to JSON
```powershell
$DimensionBulkDeleteRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

