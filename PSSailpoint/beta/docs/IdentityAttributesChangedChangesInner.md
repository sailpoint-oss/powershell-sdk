# IdentityAttributesChangedChangesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the identity attribute that changed. | 
**OldValue** | [**IdentityAttributesChangedChangesInnerOldValue**](IdentityAttributesChangedChangesInnerOldValue.md) |  | [optional] 
**NewValue** | [**IdentityAttributesChangedChangesInnerNewValue**](IdentityAttributesChangedChangesInnerNewValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributesChangedChangesInner = Initialize-BetaIdentityAttributesChangedChangesInner  -Attribute department `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$IdentityAttributesChangedChangesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

