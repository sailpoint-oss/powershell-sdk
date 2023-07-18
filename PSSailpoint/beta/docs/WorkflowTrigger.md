# WorkflowTrigger
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The trigger type | 
**Attributes** | [**SystemCollectionsHashtable**](.md) | Workflow Trigger Attributes. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTrigger = Initialize-PSSailpointBetaWorkflowTrigger  -Type EVENT `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$WorkflowTrigger | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

