# CancelAccessRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountActivityId** | **String** | This refers to the identityRequestId. To successfully cancel an access request, you must provide the identityRequestId. | 
**Comment** | **String** | Reason for cancelling the pending access request. | 

## Examples

- Prepare the resource
```powershell
$CancelAccessRequest = Initialize-BetaCancelAccessRequest  -AccountActivityId 2c9180835d2e5168015d32f890ca1581 `
 -Comment I requested this role by mistake.
```

- Convert the resource to JSON
```powershell
$CancelAccessRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

