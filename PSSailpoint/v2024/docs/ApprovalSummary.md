# ApprovalSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Pending** | **Int32** | The number of pending access requests approvals. | [optional] 
**Approved** | **Int32** | The number of approved access requests approvals. | [optional] 
**Rejected** | **Int32** | The number of rejected access requests approvals. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalSummary = Initialize-PSSailpoint.V2024ApprovalSummary  -Pending 0 `
 -Approved 0 `
 -Rejected 0
```

- Convert the resource to JSON
```powershell
$ApprovalSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

