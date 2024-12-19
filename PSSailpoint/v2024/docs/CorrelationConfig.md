# CorrelationConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the correlation configuration. | [optional] 
**Name** | **String** | The name of the correlation configuration. | [optional] 
**AttributeAssignments** | [**CorrelationConfigAttributeAssignmentsInner[]**](CorrelationConfigAttributeAssignmentsInner.md) | The list of attribute assignments of the correlation configuration. | [optional] 

## Examples

- Prepare the resource
```powershell
$CorrelationConfig = Initialize-PSSailpoint.V2024CorrelationConfig  -Id 2c9180835d191a86015d28455b4a2329 `
 -Name Source [source] Account Correlation `
 -AttributeAssignments null
```

- Convert the resource to JSON
```powershell
$CorrelationConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

