# WorkflowLibraryFormFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HelpText** | **String** | Describes the form field in the UI | [optional] 
**Label** | **String** | A human readable name for this form field in the UI | [optional] 
**Name** | **String** | The name of the input attribute | [optional] 
**Required** | **Boolean** | Denotes if this field is a required attribute | [optional] 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of the form field | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowLibraryFormFields = Initialize-BetaWorkflowLibraryFormFields  -HelpText The name to give to this certification campaign. `
 -Label Campaign Name `
 -Name name `
 -Required false `
 -Type text
```

- Convert the resource to JSON
```powershell
$WorkflowLibraryFormFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

