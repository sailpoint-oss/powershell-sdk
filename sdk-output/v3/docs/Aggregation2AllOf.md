# Aggregation2AllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubAggregation** | [**Aggregations**](Aggregations.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Aggregation2AllOf = Initialize-PSSailpointAggregation2AllOf  -SubAggregation null
```

- Convert the resource to JSON
```powershell
$Aggregation2AllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

