# SedApprovalStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FailedReason** | **String** | failed reason will be display if status is failed | [optional] 
**Id** | **String** | Sed id | [optional] 
**Status** | **String** | SUCCESS | FAILED | [optional] 

## Examples

- Prepare the resource
```powershell
$SedApprovalStatus = Initialize-Tm.V2024SedApprovalStatus  -FailedReason invalid status `
 -Id 016629d1-1d25-463f-97f3-0c6686846650 `
 -Status SUCCESS
```

- Convert the resource to JSON
```powershell
$SedApprovalStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

