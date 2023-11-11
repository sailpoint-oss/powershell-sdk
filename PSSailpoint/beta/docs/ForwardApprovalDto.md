# ForwardApprovalDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewOwnerId** | **String** | The Id of the new owner | 
**Comment** | **String** | The comment provided by the forwarder | 

## Examples

- Prepare the resource
```powershell
$ForwardApprovalDto = Initialize-BetaForwardApprovalDto  -NewOwnerId null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$ForwardApprovalDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

