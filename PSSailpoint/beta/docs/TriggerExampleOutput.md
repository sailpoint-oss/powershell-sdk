# TriggerExampleOutput
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the identity to add to the approver list for the access request. | 
**Name** | **String** | The name of the identity to add to the approver list for the access request. | 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object being referenced. | 
**Approved** | **Boolean** | Whether or not to approve the access request. | 
**Comment** | **String** | A comment about the decision to approve or deny the request. | 
**Approver** | **String** | The name of the entity that approved or denied the request. | 

## Examples

- Prepare the resource
```powershell
$TriggerExampleOutput = Initialize-BetaTriggerExampleOutput  -Id 2c91808b6ef1d43e016efba0ce470906 `
 -Name Adam Adams `
 -Type IDENTITY `
 -Approved false `
 -Comment This access should be denied, because this will cause an SOD violation. `
 -Approver AcmeCorpExternalIntegration
```

- Convert the resource to JSON
```powershell
$TriggerExampleOutput | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

