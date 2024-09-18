# ApprovalComment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment provided either by the approval requester or the approver. | 
**Timestamp** | **System.DateTime** | The time when this comment was provided. | 
**User** | **String** | Name of the user that provided this comment. | 
**Id** | **String** | Id of the user that provided this comment. | 
**ChangedToStatus** | **String** | Status transition of the draft. | 

## Examples

- Prepare the resource
```powershell
$ApprovalComment = Initialize-PSSailpoint.V2024ApprovalComment  -Comment Approval comment `
 -Timestamp 2021-05-11T22:23:16Z `
 -User user.name `
 -Id 549bf881-1ac4-4a64-9acf-6014e8a3a887 `
 -ChangedToStatus PENDING_APPROVAL
```

- Convert the resource to JSON
```powershell
$ApprovalComment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

