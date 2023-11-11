# IdentityDeletedIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Deleted identity&#39;s DTO type. | 
**Id** | **String** | Deleted identity ID. | 
**Name** | **String** | Deleted identity&#39;s display name. | 

## Examples

- Prepare the resource
```powershell
$IdentityDeletedIdentity = Initialize-BetaIdentityDeletedIdentity  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$IdentityDeletedIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

