# AccountAttributesChanged
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**AccountAttributesChangedIdentity**](AccountAttributesChangedIdentity.md) |  | 
**Source** | [**AccountAttributesChangedSource**](AccountAttributesChangedSource.md) |  | 
**Account** | [**AccountAttributesChangedAccount**](AccountAttributesChangedAccount.md) |  | 
**Changes** | [**AccountAttributesChangedChangesInner[]**](AccountAttributesChangedChangesInner.md) | A list of attributes that changed. | 

## Examples

- Prepare the resource
```powershell
$AccountAttributesChanged = Initialize-BetaAccountAttributesChanged  -Identity null `
 -Source null `
 -Account null `
 -Changes null
```

- Convert the resource to JSON
```powershell
$AccountAttributesChanged | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

