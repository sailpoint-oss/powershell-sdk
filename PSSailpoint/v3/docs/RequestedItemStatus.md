# RequestedItemStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Human-readable display name of the item being requested. | [optional] 
**Type** | **String** | Type of requested object. | [optional] 
**CancelledRequestDetails** | [**CancelledRequestDetails**](CancelledRequestDetails.md) |  | [optional] 
**ErrorMessages** | [**Array[]**](Array.md) | List of list of localized error messages, if any, encountered during the approval/provisioning process. | [optional] 
**State** | [**RequestedItemStatusRequestState**](RequestedItemStatusRequestState.md) |  | [optional] 
**ApprovalDetails** | [**ApprovalStatusDto[]**](ApprovalStatusDto.md) | Approval details for each item. | [optional] 
**ManualWorkItemDetails** | [**ManualWorkItemDetails[]**](ManualWorkItemDetails.md) | Manual work items created for provisioning the item. | [optional] 
**AccountActivityItemId** | **String** | Id of associated account activity item. | [optional] 
**RequestType** | [**AccessRequestType**](AccessRequestType.md) |  | [optional] 
**Modified** | **System.DateTime** | When the request was last modified. | [optional] 
**Created** | **System.DateTime** | When the request was created. | [optional] 
**Requester** | [**AccessItemRequester**](AccessItemRequester.md) |  | [optional] 
**RequestedFor** | [**AccessItemRequestedFor**](AccessItemRequestedFor.md) |  | [optional] 
**RequesterComment** | [**CommentDto**](CommentDto.md) |  | [optional] 
**SodViolationContext** | [**SodViolationContextCheckCompleted**](SodViolationContextCheckCompleted.md) |  | [optional] 
**ProvisioningDetails** | [**ProvisioningDetails**](ProvisioningDetails.md) |  | [optional] 
**PreApprovalTriggerDetails** | [**PreApprovalTriggerDetails**](PreApprovalTriggerDetails.md) |  | [optional] 
**AccessRequestPhases** | [**AccessRequestPhases[]**](AccessRequestPhases.md) | A list of Phases that the Access Request has gone through in order, to help determine the status of the request. | [optional] 
**Description** | **String** | Description associated to the requested object. | [optional] 
**RemoveDate** | **System.DateTime** | When the role access is scheduled for removal. | [optional] 
**Cancelable** | **Boolean** | True if the request can be canceled. | [optional] 
**AccessRequestId** | **String** | This is the account activity id. | [optional] 
**ClientMetadata** | **System.Collections.Hashtable** | Arbitrary key-value pairs, if any were included in the corresponding access request | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestedItemStatus = Initialize-RequestedItemStatus  -Name AccessProfile1 `
 -Type ACCESS_PROFILE `
 -CancelledRequestDetails null `
 -ErrorMessages null `
 -State null `
 -ApprovalDetails null `
 -ManualWorkItemDetails null `
 -AccountActivityItemId 2c9180926cbfbddd016cbfc7c3b10010 `
 -RequestType null `
 -Modified 2019-08-23T18:52:59.162Z `
 -Created 2019-08-23T18:40:35.772Z `
 -Requester null `
 -RequestedFor null `
 -RequesterComment null `
 -SodViolationContext null `
 -ProvisioningDetails null `
 -PreApprovalTriggerDetails null `
 -AccessRequestPhases null `
 -Description This is the Engineering role that engineers are granted. `
 -RemoveDate 2019-10-23T00:00Z `
 -Cancelable true `
 -AccessRequestId 2b838de9-db9b-abcf-e646-d4f274ad4238 `
 -ClientMetadata {key1&#x3D;value1, key2&#x3D;value2}
```

- Convert the resource to JSON
```powershell
$RequestedItemStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

