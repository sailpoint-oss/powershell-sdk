# Aggregations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nested** | [**NestedAggregation**](NestedAggregation.md) |  | [optional] 
**Metric** | [**MetricAggregation**](MetricAggregation.md) |  | [optional] 
**VarFilter** | [**FilterAggregation**](FilterAggregation.md) |  | [optional] 
**Bucket** | [**BucketAggregation**](BucketAggregation.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Aggregations = Initialize-Aggregations  -Nested null `
 -Metric null `
 -VarFilter null `
 -Bucket null
```

- Convert the resource to JSON
```powershell
$Aggregations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

