# AccessRequestPreApproval1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approved** | **Boolean** | Whether or not to approve the access request. | 
**Comment** | **String** | A comment about the decision to approve or deny the request. | 
**Approver** | **String** | The name of the entity that approved or denied the request. | 

## Examples

- Prepare the resource
```powershell
$AccessRequestPreApproval1 = Initialize-BetaAccessRequestPreApproval1  -Approved false `
 -Comment This access should be denied, because this will cause an SOD violation. `
 -Approver AcmeCorpExternalIntegration
```

- Convert the resource to JSON
```powershell
$AccessRequestPreApproval1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

