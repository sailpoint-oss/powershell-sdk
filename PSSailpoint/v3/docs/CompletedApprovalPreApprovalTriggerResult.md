# CompletedApprovalPreApprovalTriggerResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | The comment from the trigger | [optional] 
**Decision** | [**CompletedApprovalState**](CompletedApprovalState.md) |  | [optional] 
**Reviewer** | **String** | The name of the approver | [optional] 
**Date** | **System.DateTime** | The date and time the trigger decided on the request | [optional] 

## Examples

- Prepare the resource
```powershell
$CompletedApprovalPreApprovalTriggerResult = Initialize-PSSailpointCompletedApprovalPreApprovalTriggerResult  -Comment This request was autoapproved by our automated ETS subscriber `
 -Decision null `
 -Reviewer Automated AR Approval `
 -Date 2022-06-07T19:18:40.748Z
```

- Convert the resource to JSON
```powershell
$CompletedApprovalPreApprovalTriggerResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

