# ApprovalForwardHistory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OldApproverName** | **String** | Display name of approver that forwarded the approval. | [optional] 
**NewApproverName** | **String** | Display name of approver to whom the approval was forwarded. | [optional] 
**Comment** | **String** | Comment made by old approver when forwarding. | [optional] 
**Modified** | **System.DateTime** | Time at which approval was forwarded. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalForwardHistory = Initialize-PSSailpointApprovalForwardHistory  -OldApproverName frank.mir `
 -NewApproverName al.volta `
 -Comment Fusce id orci vel consectetur amet ipsum quam. `
 -Modified 2019-08-23T18:52:57.398Z
```

- Convert the resource to JSON
```powershell
$ApprovalForwardHistory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

