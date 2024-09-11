# NonEmployeeRequestSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approved** | **Int32** | The number of approved non-employee requests on all sources that *requested-for* user manages. | [optional] 
**Rejected** | **Int32** | The number of rejected non-employee requests on all sources that *requested-for* user manages. | [optional] 
**Pending** | **Int32** | The number of pending non-employee requests on all sources that *requested-for* user manages. | [optional] 
**NonEmployeeCount** | **Int32** | The number of non-employee records on all sources that *requested-for* user manages. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestSummary = Initialize-Tm.V2024NonEmployeeRequestSummary  -Approved 2 `
 -Rejected 2 `
 -Pending 2 `
 -NonEmployeeCount 2
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequestSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

