# TriggerInputIdentityDeleted
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**TriggerInputIdentityDeletedIdentity**](TriggerInputIdentityDeletedIdentity.md) |  | 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | The attributes assigned to the identity.  Attributes are determined by the identity profile. | 

## Examples

- Prepare the resource
```powershell
$TriggerInputIdentityDeleted = Initialize-PSSailpointBetaTriggerInputIdentityDeleted  -Identity null `
 -Attributes {firstname&#x3D;John}
```

- Convert the resource to JSON
```powershell
$TriggerInputIdentityDeleted | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

