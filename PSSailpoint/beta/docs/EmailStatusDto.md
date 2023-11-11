# EmailStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**VerificationStatus** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailStatusDto = Initialize-BetaEmailStatusDto  -Id null `
 -Email sender@example.com `
 -VerificationStatus null
```

- Convert the resource to JSON
```powershell
$EmailStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

