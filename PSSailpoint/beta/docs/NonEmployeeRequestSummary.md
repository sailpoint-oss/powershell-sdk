# NonEmployeeRequestSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approved** | **Decimal** | The number of approved non-employee requests on all sources that *requested-for* user manages. | [optional] 
**Rejected** | **Decimal** | The number of rejected non-employee requests on all sources that *requested-for* user manages. | [optional] 
**Pending** | **Decimal** | The number of pending non-employee requests on all sources that *requested-for* user manages. | [optional] 
**NonEmployeeCount** | **Decimal** | The number of non-employee records on all sources that *requested-for* user manages. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestSummary = Initialize-BetaNonEmployeeRequestSummary  -Approved null `
 -Rejected null `
 -Pending null `
 -NonEmployeeCount null
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequestSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

