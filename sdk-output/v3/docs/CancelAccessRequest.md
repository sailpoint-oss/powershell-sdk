# CancelAccessRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountActivityId** | **String** | ID of the account activity object corresponding to the access request. | 
**Comment** | **String** | Reason for cancelling the pending access request. | 

## Examples

- Prepare the resource
```powershell
$CancelAccessRequest = Initialize-PSSailpointCancelAccessRequest  -AccountActivityId 2c9180835d2e5168015d32f890ca1581 `
 -Comment I requested this role by mistake.
```

- Convert the resource to JSON
```powershell
$CancelAccessRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

