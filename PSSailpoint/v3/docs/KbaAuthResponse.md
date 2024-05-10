# KbaAuthResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**KbaAuthResponseItems** | [**KbaAuthResponseItem[]**](KbaAuthResponseItem.md) |  | [optional] 
**Status** | **String** | MFA Authentication status | [optional] 

## Examples

- Prepare the resource
```powershell
$KbaAuthResponse = Initialize-PSSailpointKbaAuthResponse  -KbaAuthResponseItems [{questionId&#x3D;089899f13a8f4da7824996191587bab9, isVerified&#x3D;false}] `
 -Status PENDING
```

- Convert the resource to JSON
```powershell
$KbaAuthResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

