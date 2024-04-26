# ApprovalBatch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BatchId** | **String** | ID of the batch | [optional] 
**BatchSize** | **Int64** | How many approvals are going to be in this batch. Defaults to 1 if not provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalBatch = Initialize-PSSailpointBetaApprovalBatch  -BatchId 38453251-6be2-5f8f-df93-5ce19e295837 `
 -BatchSize 100
```

- Convert the resource to JSON
```powershell
$ApprovalBatch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

