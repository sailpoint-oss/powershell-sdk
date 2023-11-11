# WorkflowExecution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The workflow execution ID | [optional] 
**WorkflowId** | **String** | The workflow ID | [optional] 
**RequestId** | **String** | This backend ID tracks a workflow request in the system. You can provide this ID in a customer support ticket for debugging purposes. | [optional] 
**StartTime** | **System.DateTime** | The date/time the workflow started | [optional] 
**CloseTime** | **System.DateTime** | The date/time the workflow ended | [optional] 
**Status** | **String** | The workflow execution status | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowExecution = Initialize-BetaWorkflowExecution  -Id b393f4e2-4785-4d7f-ab27-3a6b8ded4c81 `
 -WorkflowId d201c5d9-d37b-4a2f-af14-66414f39d568 `
 -RequestId 41e12a74fa7b4a6a98ae47887b64acdb `
 -StartTime 2022-02-07T20:13:29.356648026Z `
 -CloseTime 2022-02-07T20:13:31.682410165Z `
 -Status Completed
```

- Convert the resource to JSON
```powershell
$WorkflowExecution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

