# IdentityAttributesChangedIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of identity whose attributes changed. | 
**Id** | **String** | ID of identity whose attributes changed. | 
**Name** | **String** | Display name of identity whose attributes changed. | 

## Examples

- Prepare the resource
```powershell
$IdentityAttributesChangedIdentity = Initialize-BetaIdentityAttributesChangedIdentity  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$IdentityAttributesChangedIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

