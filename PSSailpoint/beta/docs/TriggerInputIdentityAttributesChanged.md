# TriggerInputIdentityAttributesChanged
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**TriggerInputIdentityAttributesChangedIdentity**](TriggerInputIdentityAttributesChangedIdentity.md) |  | 
**Changes** | [**TriggerInputIdentityAttributesChangedChangesInner[]**](TriggerInputIdentityAttributesChangedChangesInner.md) | A list of one or more identity attributes that changed on the identity. | 

## Examples

- Prepare the resource
```powershell
$TriggerInputIdentityAttributesChanged = Initialize-PSSailpointBetaTriggerInputIdentityAttributesChanged  -Identity null `
 -Changes null
```

- Convert the resource to JSON
```powershell
$TriggerInputIdentityAttributesChanged | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

