# TokenAuthResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | MFA Authentication status | [optional] 

## Examples

- Prepare the resource
```powershell
$TokenAuthResponse = Initialize-PSSailpointBetaTokenAuthResponse  -Status PENDING
```

- Convert the resource to JSON
```powershell
$TokenAuthResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

