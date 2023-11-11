# FormElementDynamicDataSourceConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AggregationBucketField** | **String** | AggregationBucketField is the aggregation bucket field name | [optional] 
**Indices** | **String[]** | Indices is a list of indices to use | [optional] 
**ObjectType** | **String** | ObjectType is a PreDefinedSelectOption value IDENTITY PreDefinedSelectOptionIdentity ACCESS_PROFILE PreDefinedSelectOptionAccessProfile SOURCES PreDefinedSelectOptionSources ROLE PreDefinedSelectOptionRole ENTITLEMENT PreDefinedSelectOptionEntitlement | [optional] 
**Query** | **String** | Query is a text | [optional] 

## Examples

- Prepare the resource
```powershell
$FormElementDynamicDataSourceConfig = Initialize-BetaFormElementDynamicDataSourceConfig  -AggregationBucketField attributes.cloudStatus.exact `
 -Indices [identities] `
 -ObjectType IDENTITY `
 -Query *
```

- Convert the resource to JSON
```powershell
$FormElementDynamicDataSourceConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

