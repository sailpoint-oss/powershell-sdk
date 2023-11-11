# SodRecipient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | SOD policy recipient DTO type. | [optional] 
**Id** | **String** | SOD policy recipient&#39;s identity ID. | [optional] 
**Name** | **String** | SOD policy recipient&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SodRecipient = Initialize-BetaSodRecipient  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$SodRecipient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

