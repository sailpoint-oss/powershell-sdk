# WorkflowDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Start** | **String** | The name of the starting step. | [optional] 
**Steps** | [**System.Collections.Hashtable**](AnyType.md) | One or more step objects that comprise this workflow.  Please see the Workflow documentation to see the JSON schema for each step type. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowDefinition = Initialize-BetaWorkflowDefinition  -Start Send Email Test `
 -Steps {Send Email&#x3D;{actionId&#x3D;sp:send-email, attributes&#x3D;{body&#x3D;This is a test, from&#x3D;sailpoint@sailpoint.com, recipientId.$&#x3D;$.identity.id, subject&#x3D;test}, nextStep&#x3D;success, selectResult&#x3D;null, type&#x3D;ACTION}, success&#x3D;{type&#x3D;success}}
```

- Convert the resource to JSON
```powershell
$WorkflowDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

