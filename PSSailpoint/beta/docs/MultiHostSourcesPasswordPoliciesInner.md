# MultiHostSourcesPasswordPoliciesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Policy ID. | [optional] 
**Name** | **String** | Policy&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostSourcesPasswordPoliciesInner = Initialize-PSSailpoint.BetaMultiHostSourcesPasswordPoliciesInner  -Type PASSWORD_POLICY `
 -Id 2c91808568c529c60168cca6f90c1777 `
 -Name My Password Policy
```

- Convert the resource to JSON
```powershell
$MultiHostSourcesPasswordPoliciesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

