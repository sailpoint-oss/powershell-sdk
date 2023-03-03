# TriggerInputAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalComment** | **String** | A comment left by the approver. | [optional] 
**ApprovalDecision** | [**SystemCollectionsHashtable**](.md) | The final decision of the approver. | 
**ApproverName** | **String** | The name of the approver | 
**Approver** | [**TriggerInputAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInnerApprover**](TriggerInputAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInnerApprover.md) |  | 

## Examples

- Prepare the resource
```powershell
$TriggerInputAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner = Initialize-PSSailpointBetaTriggerInputAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner  -ApprovalComment This access looks good.  Approved. `
 -ApprovalDecision APPROVED `
 -ApproverName Stephen.Austin `
 -Approver null
```

- Convert the resource to JSON
```powershell
$TriggerInputAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

