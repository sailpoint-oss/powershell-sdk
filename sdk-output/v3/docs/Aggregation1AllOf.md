# Aggregation1AllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubAggregation** | [**Aggregation2**](Aggregation2.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Aggregation1AllOf = Initialize-PSSailpointAggregation1AllOf  -SubAggregation null
```

- Convert the resource to JSON
```powershell
$Aggregation1AllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

