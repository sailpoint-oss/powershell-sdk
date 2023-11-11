# CloseAccessRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestIds** | **String[]** | Access Request IDs for the requests to be closed. Accepts 1-500 Identity Request IDs per request. | 
**Message** | **String** | Reason for closing the access request. Displayed under Warnings in IdentityNow. | [optional] [default to "The IdentityNow Administrator manually closed this request."]
**ExecutionStatus** | **String** | The request&#39;s provisioning status. Displayed as Stage in IdentityNow. | [optional] [default to "Terminated"]
**CompletionStatus** | **String** | The request&#39;s overall status. Displayed as Status in IdentityNow. | [optional] [default to "Failure"]

## Examples

- Prepare the resource
```powershell
$CloseAccessRequest = Initialize-BetaCloseAccessRequest  -AccessRequestIds [2c90ad2a70ace7d50170acf22ca90010] `
 -Message The IdentityNow Administrator manually closed this request. `
 -ExecutionStatus Terminated `
 -CompletionStatus Failure
```

- Convert the resource to JSON
```powershell
$CloseAccessRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

