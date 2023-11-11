# AccountAttributesChangedIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of the identity whose account attributes were updated. | 
**Id** | **String** | ID of the identity whose account attributes were updated. | 
**Name** | **String** | Display name of the identity whose account attributes were updated. | 

## Examples

- Prepare the resource
```powershell
$AccountAttributesChangedIdentity = Initialize-BetaAccountAttributesChangedIdentity  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$AccountAttributesChangedIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

