# IdentityCreated
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentityCreatedIdentity**](IdentityCreatedIdentity.md) |  | 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | The attributes assigned to the identity. Attributes are determined by the identity profile. | 

## Examples

- Prepare the resource
```powershell
$IdentityCreated = Initialize-BetaIdentityCreated  -Identity null `
 -Attributes {firstname&#x3D;John}
```

- Convert the resource to JSON
```powershell
$IdentityCreated | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

