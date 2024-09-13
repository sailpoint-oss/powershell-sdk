# LoadAccountsTaskTaskReturnsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayLabel** | **String** | The display label of the return value | [optional] 
**AttributeName** | **String** | The attribute name of the return value | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadAccountsTaskTaskReturnsInner = Initialize-PSSailpoint.BetaLoadAccountsTaskTaskReturnsInner  -DisplayLabel TASK_OUT_ACCOUNT_AGGREGATION_APPLICATIONS `
 -AttributeName applications
```

- Convert the resource to JSON
```powershell
$LoadAccountsTaskTaskReturnsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

