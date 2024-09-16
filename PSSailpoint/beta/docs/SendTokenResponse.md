# SendTokenResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **String** | The token request ID | [optional] 
**Status** | **String** | Status of sending token | [optional] 
**ErrorMessage** | **String** | Error messages from token send request | [optional] 

## Examples

- Prepare the resource
```powershell
$SendTokenResponse = Initialize-PSSailpoint.BetaSendTokenResponse  -RequestId 089899f13a8f4da7824996191587bab9 `
 -Status SUCCESS `
 -ErrorMessage Unable to sent text message
```

- Convert the resource to JSON
```powershell
$SendTokenResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

