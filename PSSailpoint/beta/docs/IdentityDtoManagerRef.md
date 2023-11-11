# IdentityDtoManagerRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of identity&#39;s manager. | [optional] 
**Id** | **String** | ID of identity&#39;s manager. | [optional] 
**Name** | **String** | Human-readable display name of identity&#39;s manager. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDtoManagerRef = Initialize-BetaIdentityDtoManagerRef  -Type IDENTITY `
 -Id 2c4180a46faadee4016fb4e018c20626 `
 -Name Robert Robinson
```

- Convert the resource to JSON
```powershell
$IdentityDtoManagerRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

