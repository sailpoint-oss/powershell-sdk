# PasswordPolicyHoldersDtoInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PolicyId** | **String** | The password policy Id. | [optional] 
**PolicyName** | **String** | The name of the password policy. | [optional] 
**Selectors** | [**PasswordPolicyHoldersDtoAttributes**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoInner = Initialize-PSSailpoint.V2024PasswordPolicyHoldersDtoInner  -PolicyId 2c91808e7d976f3b017d9f5ceae440c8 `
 -PolicyName PasswordPolicy Example `
 -Selectors {identityAttr&#x3D;[{name&#x3D;displayName, value&#x3D;Robert}, {name&#x3D;lastname, value&#x3D;Juice}]}
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

