# AccountAttributesChanged
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**TriggerInputAccountAttributesChangedIdentity**](TriggerInputAccountAttributesChangedIdentity.md) |  | 
**Source** | [**TriggerInputAccountAttributesChangedSource**](TriggerInputAccountAttributesChangedSource.md) |  | 
**Account** | [**TriggerInputAccountAttributesChangedAccount**](TriggerInputAccountAttributesChangedAccount.md) |  | 
**Changes** | [**TriggerInputAccountAttributesChangedChangesInner[]**](TriggerInputAccountAttributesChangedChangesInner.md) | A list of attributes that changed. | 

## Examples

- Prepare the resource
```powershell
$AccountAttributesChanged = Initialize-PSSailpointBetaAccountAttributesChanged  -Identity null `
 -Source null `
 -Account null `
 -Changes null
```

- Convert the resource to JSON
```powershell
$AccountAttributesChanged | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

