# PasswordPolicyHoldersDtoAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityAttr** | [**PasswordPolicyHoldersDtoAttributesIdentityAttrInner[]**](PasswordPolicyHoldersDtoAttributesIdentityAttrInner.md) | Attributes of PasswordPolicyHoldersDto | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoAttributes = Initialize-PSSailpoint.V2024PasswordPolicyHoldersDtoAttributes  -IdentityAttr null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

