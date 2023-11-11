# BucketAggregation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the bucket aggregate to be included in the result. | 
**Type** | [**BucketType**](BucketType.md) |  | [optional] 
**Field** | **String** | The field to bucket on. Prefix the field name with &#39;@&#39; to reference a nested object. | 
**Size** | **Int32** | Maximum number of buckets to include. | [optional] 
**MinDocCount** | **Int32** | Minimum number of documents a bucket should have. | [optional] 

## Examples

- Prepare the resource
```powershell
$BucketAggregation = Initialize-BucketAggregation  -Name Identity Locations `
 -Type null `
 -Field attributes.city `
 -Size 100 `
 -MinDocCount 2
```

- Convert the resource to JSON
```powershell
$BucketAggregation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

