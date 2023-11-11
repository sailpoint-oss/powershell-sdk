# AccountAttributesChangedChangesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the attribute. | 
**OldValue** | [**AccountAttributesChangedChangesInnerOldValue**](AccountAttributesChangedChangesInnerOldValue.md) |  | 
**NewValue** | [**AccountAttributesChangedChangesInnerNewValue**](AccountAttributesChangedChangesInnerNewValue.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccountAttributesChangedChangesInner = Initialize-BetaAccountAttributesChangedChangesInner  -Attribute sn `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$AccountAttributesChangedChangesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

