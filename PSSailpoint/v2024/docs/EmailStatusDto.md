# EmailStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**IsVerifiedByDomain** | **Boolean** |  | [optional] 
**VerificationStatus** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailStatusDto = Initialize-PSSailpointV2024EmailStatusDto  -Id null `
 -Email sender@example.com `
 -IsVerifiedByDomain false `
 -VerificationStatus null
```

- Convert the resource to JSON
```powershell
$EmailStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

