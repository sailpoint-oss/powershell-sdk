# PendingApproval
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The approval id. | [optional] 
**Name** | **String** | The name of the approval. | [optional] 
**Created** | **System.DateTime** | When the approval was created. | [optional] 
**Modified** | **System.DateTime** | When the approval was modified last time. | [optional] 
**RequestCreated** | **System.DateTime** | When the access-request was created. | [optional] 
**RequestType** | [**AccessRequestType**](AccessRequestType.md) |  | [optional] 
**Requester** | [**AccessItemRequester**](AccessItemRequester.md) |  | [optional] 
**RequestedFor** | [**AccessItemRequestedFor**](AccessItemRequestedFor.md) |  | [optional] 
**Owner** | [**PendingApprovalOwner**](PendingApprovalOwner.md) |  | [optional] 
**RequestedObject** | [**RequestableObjectReference**](RequestableObjectReference.md) |  | [optional] 
**RequesterComment** | [**CommentDto**](CommentDto.md) |  | [optional] 
**PreviousReviewersComments** | [**CommentDto[]**](CommentDto.md) | The history of the previous reviewers comments. | [optional] 
**ForwardHistory** | [**ApprovalForwardHistory[]**](ApprovalForwardHistory.md) | The history of approval forward action. | [optional] 
**CommentRequiredWhenRejected** | **Boolean** | When true the rejector has to provide comments when rejecting | [optional] 
**ActionInProcess** | [**PendingApprovalAction**](PendingApprovalAction.md) |  | [optional] 
**RemoveDate** | **System.DateTime** | The date the role or access profile is no longer assigned to the specified identity. | [optional] 
**RemoveDateUpdateRequested** | **Boolean** | If true, then the request is to change the remove date or sunset date. | [optional] 
**CurrentRemoveDate** | **System.DateTime** | The remove date or sunset date that was assigned at the time of the request. | [optional] 
**SodViolationContext** | [**SodViolationContextCheckCompleted**](SodViolationContextCheckCompleted.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PendingApproval = Initialize-PendingApproval  -Id id12345 `
 -Name aName `
 -Created 2017-07-11T18:45:37.098Z `
 -Modified 2018-07-25T20:22:28.104Z `
 -RequestCreated 2017-07-11T18:45:35.098Z `
 -RequestType null `
 -Requester null `
 -RequestedFor null `
 -Owner null `
 -RequestedObject null `
 -RequesterComment null `
 -PreviousReviewersComments null `
 -ForwardHistory null `
 -CommentRequiredWhenRejected true `
 -ActionInProcess null `
 -RemoveDate 2020-07-11T00:00Z `
 -RemoveDateUpdateRequested true `
 -CurrentRemoveDate 2020-07-11T00:00Z `
 -SodViolationContext null
```

- Convert the resource to JSON
```powershell
$PendingApproval | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

