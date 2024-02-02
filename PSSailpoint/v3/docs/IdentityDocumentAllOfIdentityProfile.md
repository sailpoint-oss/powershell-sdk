# IdentityDocumentAllOfIdentityProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity profile&#39;s ID. | [optional] 
**Name** | **String** | Identity profile&#39;s name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDocumentAllOfIdentityProfile = Initialize-PSSailpointIdentityDocumentAllOfIdentityProfile  -Id 3bc8ad26b8664945866b31339d1ff7d2 `
 -Name HR Employees
```

- Convert the resource to JSON
```powershell
$IdentityDocumentAllOfIdentityProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

