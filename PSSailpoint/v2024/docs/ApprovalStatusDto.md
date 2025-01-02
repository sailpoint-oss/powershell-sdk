# ApprovalStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalId** | **String** | Unique identifier for the approval. | [optional] 
**Forwarded** | **Boolean** | True if the request for this item was forwarded from one owner to another. | [optional] [default to $false]
**OriginalOwner** | [**ApprovalStatusDtoOriginalOwner**](ApprovalStatusDtoOriginalOwner.md) |  | [optional] 
**CurrentOwner** | [**ApprovalStatusDtoCurrentOwner**](ApprovalStatusDtoCurrentOwner.md) |  | [optional] 
**Modified** | **System.DateTime** | Time at which item was modified. | [optional] 
**Status** | [**ManualWorkItemState**](ManualWorkItemState.md) |  | [optional] 
**Scheme** | [**ApprovalScheme**](ApprovalScheme.md) |  | [optional] 
**ErrorMessages** | [**ErrorMessageDto[]**](ErrorMessageDto.md) | If the request failed, includes any error messages that were generated. | [optional] 
**Comment** | **String** | Comment, if any, provided by the approver. | [optional] 
**RemoveDate** | **System.DateTime** | The date the role or access profile or entitlement is no longer assigned to the specified identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalStatusDto = Initialize-PSSailpoint.V2024ApprovalStatusDto  -ApprovalId 2c9180877b2b6ea4017b2c545f971429 `
 -Forwarded false `
 -OriginalOwner null `
 -CurrentOwner null `
 -Modified 2019-08-23T18:52:57.398Z `
 -Status null `
 -Scheme null `
 -ErrorMessages null `
 -Comment I approve this request `
 -RemoveDate 2020-07-11T00:00Z
```

- Convert the resource to JSON
```powershell
$ApprovalStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

