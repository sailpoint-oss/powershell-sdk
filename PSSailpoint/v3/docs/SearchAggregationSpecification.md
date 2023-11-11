# SearchAggregationSpecification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nested** | [**NestedAggregation**](NestedAggregation.md) |  | [optional] 
**Metric** | [**MetricAggregation**](MetricAggregation.md) |  | [optional] 
**VarFilter** | [**FilterAggregation**](FilterAggregation.md) |  | [optional] 
**Bucket** | [**BucketAggregation**](BucketAggregation.md) |  | [optional] 
**SubAggregation** | [**SubSearchAggregationSpecification**](SubSearchAggregationSpecification.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchAggregationSpecification = Initialize-SearchAggregationSpecification  -Nested null `
 -Metric null `
 -VarFilter null `
 -Bucket null `
 -SubAggregation null
```

- Convert the resource to JSON
```powershell
$SearchAggregationSpecification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

