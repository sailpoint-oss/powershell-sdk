# IdentityPreviewResponseIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Identity&#39;s DTO type. | [optional] 
**Id** | **String** | Identity ID. | [optional] 
**Name** | **String** | Identity&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityPreviewResponseIdentity = Initialize-PSSailpoint.V2024IdentityPreviewResponseIdentity  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$IdentityPreviewResponseIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

