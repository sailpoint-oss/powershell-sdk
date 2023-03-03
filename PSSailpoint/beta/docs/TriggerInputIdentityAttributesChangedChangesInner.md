# TriggerInputIdentityAttributesChangedChangesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the identity attribute that changed. | 
**OldValue** | [**TriggerInputIdentityAttributesChangedChangesInnerOldValue**](TriggerInputIdentityAttributesChangedChangesInnerOldValue.md) |  | [optional] 
**NewValue** | [**TriggerInputIdentityAttributesChangedChangesInnerNewValue**](TriggerInputIdentityAttributesChangedChangesInnerNewValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TriggerInputIdentityAttributesChangedChangesInner = Initialize-PSSailpointBetaTriggerInputIdentityAttributesChangedChangesInner  -Attribute department `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$TriggerInputIdentityAttributesChangedChangesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

