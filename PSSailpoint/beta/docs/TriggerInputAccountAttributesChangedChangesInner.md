# TriggerInputAccountAttributesChangedChangesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the attribute. | 
**OldValue** | [**TriggerInputAccountAttributesChangedChangesInnerOldValue**](TriggerInputAccountAttributesChangedChangesInnerOldValue.md) |  | 
**NewValue** | [**TriggerInputAccountAttributesChangedChangesInnerNewValue**](TriggerInputAccountAttributesChangedChangesInnerNewValue.md) |  | 

## Examples

- Prepare the resource
```powershell
$TriggerInputAccountAttributesChangedChangesInner = Initialize-PSSailpointBetaTriggerInputAccountAttributesChangedChangesInner  -Attribute sn `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$TriggerInputAccountAttributesChangedChangesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

