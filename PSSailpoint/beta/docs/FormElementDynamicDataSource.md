# FormElementDynamicDataSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**FormElementDynamicDataSourceConfig**](FormElementDynamicDataSourceConfig.md) |  | [optional] 
**DataSourceType** | **String** | DataSourceType is a FormElementDataSourceType value STATIC FormElementDataSourceTypeStatic INTERNAL FormElementDataSourceTypeInternal SEARCH FormElementDataSourceTypeSearch FORM_INPUT FormElementDataSourceTypeFormInput | [optional] 

## Examples

- Prepare the resource
```powershell
$FormElementDynamicDataSource = Initialize-PSSailpointBetaFormElementDynamicDataSource  -Config null `
 -DataSourceType STATIC
```

- Convert the resource to JSON
```powershell
$FormElementDynamicDataSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

