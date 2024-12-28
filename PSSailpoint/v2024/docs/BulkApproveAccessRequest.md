# BulkApproveAccessRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalIds** | **String[]** | List of approval ids to approve the pending requests | 
**Comment** | **String** | Reason for approving the pending access request. | 

## Examples

- Prepare the resource
```powershell
$BulkApproveAccessRequest = Initialize-PSSailpoint.V2024BulkApproveAccessRequest  -ApprovalIds [2c9180835d2e5168015d32f890ca1581, 2c9180835d2e5168015d32f890ca1582] `
 -Comment I approve these request items
```

- Convert the resource to JSON
```powershell
$BulkApproveAccessRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

