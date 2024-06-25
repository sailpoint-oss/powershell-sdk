# CompletedApproval
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The approval id. | [optional] 
**Name** | **String** | The name of the approval. | [optional] 
**Created** | **System.DateTime** | When the approval was created. | [optional] 
**Modified** | **System.DateTime** | When the approval was modified last time. | [optional] 
**RequestCreated** | **System.DateTime** | When the access-request was created. | [optional] 
**RequestType** | [**AccessRequestType**](AccessRequestType.md) |  | [optional] 
**Requester** | [**AccessItemRequesterDto**](AccessItemRequesterDto.md) |  | [optional] 
**RequestedFor** | [**RequestedItemStatusRequestedFor**](RequestedItemStatusRequestedFor.md) |  | [optional] 
**ReviewedBy** | [**CompletedApprovalReviewedBy**](CompletedApprovalReviewedBy.md) |  | [optional] 
**Owner** | [**AccessItemOwnerDto**](AccessItemOwnerDto.md) |  | [optional] 
**RequestedObject** | [**RequestableObjectReference**](RequestableObjectReference.md) |  | [optional] 
**RequesterComment** | [**CommentDto1**](CommentDto1.md) |  | [optional] 
**ReviewerComment** | [**CompletedApprovalReviewerComment**](CompletedApprovalReviewerComment.md) |  | [optional] 
**PreviousReviewersComments** | [**CommentDto1[]**](CommentDto1.md) | The history of the previous reviewers comments. | [optional] 
**ForwardHistory** | [**ApprovalForwardHistory[]**](ApprovalForwardHistory.md) | The history of approval forward action. | [optional] 
**CommentRequiredWhenRejected** | **Boolean** | When true the rejector has to provide comments when rejecting | [optional] [default to $false]
**State** | [**CompletedApprovalState**](CompletedApprovalState.md) |  | [optional] 
**RemoveDate** | **System.DateTime** | The date the role or access profile or entitlement is no longer assigned to the specified identity. | [optional] 
**RemoveDateUpdateRequested** | **Boolean** | If true, then the request was to change the remove date or sunset date. | [optional] [default to $false]
**CurrentRemoveDate** | **System.DateTime** | The remove date or sunset date that was assigned at the time of the request. | [optional] 
**SodViolationContext** | [**SodViolationContextCheckCompleted1**](SodViolationContextCheckCompleted1.md) |  | [optional] 
**PreApprovalTriggerResult** | [**CompletedApprovalPreApprovalTriggerResult**](CompletedApprovalPreApprovalTriggerResult.md) |  | [optional] 
**ClientMetadata** | **System.Collections.Hashtable** | Arbitrary key-value pairs provided during the request. | [optional] 
**RequestedAccounts** | **String** | Information about the requested accounts | [optional] 

## Examples

- Prepare the resource
```powershell
$CompletedApproval = Initialize-PSSailpointBetaCompletedApproval  -Id 2c938083633d259901633d25c68c00fa `
 -Name Approval Name `
 -Created 2017-07-11T18:45:37.098Z `
 -Modified 2018-07-25T20:22:28.104Z `
 -RequestCreated 2017-07-11T18:45:35.098Z `
 -RequestType null `
 -Requester null `
 -RequestedFor null `
 -ReviewedBy null `
 -Owner null `
 -RequestedObject null `
 -RequesterComment null `
 -ReviewerComment null `
 -PreviousReviewersComments null `
 -ForwardHistory null `
 -CommentRequiredWhenRejected true `
 -State null `
 -RemoveDate 2020-07-11T00:00Z `
 -RemoveDateUpdateRequested true `
 -CurrentRemoveDate 2020-07-11T00:00Z `
 -SodViolationContext null `
 -PreApprovalTriggerResult null `
 -ClientMetadata {requestedAppName&#x3D;test-app, requestedAppId&#x3D;2c91808f7892918f0178b78da4a305a1} `
 -RequestedAccounts null
```

- Convert the resource to JSON
```powershell
$CompletedApproval | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

