# PasswordPolicyHoldersDtoAttributesIdentityAttrInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Attribute&#39;s name | [optional] 
**Value** | **String** | Attribute&#39;s value | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoAttributesIdentityAttrInner = Initialize-PSSailpoint.V2024PasswordPolicyHoldersDtoAttributesIdentityAttrInner  -Name Country `
 -Value Canada
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoAttributesIdentityAttrInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

