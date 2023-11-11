# NonEmployeeApprovalSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approved** | **Decimal** | The number of approved non-employee approval requests. | [optional] 
**Pending** | **Decimal** | The number of pending non-employee approval requests. | [optional] 
**Rejected** | **Decimal** | The number of rejected non-employee approval requests. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeApprovalSummary = Initialize-BetaNonEmployeeApprovalSummary  -Approved null `
 -Pending null `
 -Rejected null
```

- Convert the resource to JSON
```powershell
$NonEmployeeApprovalSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

