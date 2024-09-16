# WorkflowExecutionEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of event | [optional] 
**Timestamp** | **System.DateTime** | The date-time when the event occurred | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | Additional attributes associated with the event | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowExecutionEvent = Initialize-PSSailpoint.V3WorkflowExecutionEvent  -Type WorkflowTaskScheduled `
 -Timestamp 2022-02-07T20:13:31.640618296Z `
 -Attributes {}
```

- Convert the resource to JSON
```powershell
$WorkflowExecutionEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

