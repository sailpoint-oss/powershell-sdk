# IdentityAttributesChanged
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentityAttributesChangedIdentity**](IdentityAttributesChangedIdentity.md) |  | 
**Changes** | [**IdentityAttributesChangedChangesInner[]**](IdentityAttributesChangedChangesInner.md) | A list of one or more identity attributes that changed on the identity. | 

## Examples

- Prepare the resource
```powershell
$IdentityAttributesChanged = Initialize-BetaIdentityAttributesChanged  -Identity null `
 -Changes null
```

- Convert the resource to JSON
```powershell
$IdentityAttributesChanged | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

