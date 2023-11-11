# AccessRequestDynamicApprover1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the identity to add to the approver list for the access request. | 
**Name** | **String** | The name of the identity to add to the approver list for the access request. | 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object being referenced. | 

## Examples

- Prepare the resource
```powershell
$AccessRequestDynamicApprover1 = Initialize-BetaAccessRequestDynamicApprover1  -Id 2c91808b6ef1d43e016efba0ce470906 `
 -Name Adam Adams `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$AccessRequestDynamicApprover1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

