# Approval
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalId** | **String** | The Approval ID | [optional] 
**Approvers** | [**ApprovalIdentity[]**](ApprovalIdentity.md) | Object representation of an approver of an approval | [optional] 
**CreatedDate** | **String** | Date the approval was created | [optional] 
**Type** | **String** | Type of approval | [optional] 
**Name** | [**ApprovalName[]**](ApprovalName.md) | The name of the approval for a given locale | [optional] 
**BatchRequest** | [**ApprovalBatch**](.md) | The name of the approval for a given locale | [optional] 
**Description** | [**ApprovalDescription[]**](ApprovalDescription.md) | The description of the approval for a given locale | [optional] 
**Priority** | **String** | The priority of the approval | [optional] 
**Requester** | [**ApprovalIdentity**](.md) | Object representation of the requester of the approval | [optional] 
**Comments** | [**ApprovalComment[]**](ApprovalComment.md) | Object representation of a comment on the approval | [optional] 
**ApprovedBy** | [**ApprovalIdentity[]**](ApprovalIdentity.md) | Array of approvers who have approved the approval | [optional] 
**RejectedBy** | [**ApprovalIdentity[]**](ApprovalIdentity.md) | Array of approvers who have rejected the approval | [optional] 
**CompletedDate** | **String** | Date the approval was completed | [optional] 
**ApprovalCriteria** | **String** | Criteria that needs to be met for an approval to be marked as approved | [optional] 
**Status** | **String** | The current status of the approval | [optional] 
**AdditionalAttributes** | **String** | Json string representing additional attributes known about the object to be approved. | [optional] 
**ReferenceData** | [**ApprovalReference[]**](ApprovalReference.md) | Reference data related to the approval | [optional] 

## Examples

- Prepare the resource
```powershell
$Approval = Initialize-Tm.V2024Approval  -ApprovalId 38453251-6be2-5f8f-df93-5ce19e295837 `
 -Approvers null `
 -CreatedDate 2023-04-12T23:20:50.52Z `
 -Type ENTITLEMENT_DESCRIPTIONS `
 -Name null `
 -BatchRequest {batchId&#x3D;38453251-6be2-5f8f-df93-5ce19e295837, batchSize&#x3D;100} `
 -Description null `
 -Priority HIGH `
 -Requester {id&#x3D;85d173e7d57e496569df763231d6deb6a, type&#x3D;IDENTITY, name&#x3D;John Doe} `
 -Comments null `
 -ApprovedBy null `
 -RejectedBy null `
 -CompletedDate 2023-04-12T23:20:50.52Z `
 -ApprovalCriteria SINGLE `
 -Status PENDING `
 -AdditionalAttributes { &quot;llm_description&quot;: &quot;generated description&quot; } `
 -ReferenceData null
```

- Convert the resource to JSON
```powershell
$Approval | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

