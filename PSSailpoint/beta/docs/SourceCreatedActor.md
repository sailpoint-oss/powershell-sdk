# SourceCreatedActor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of identity who created the source. | 
**Id** | **String** | ID of identity who created the source. | 
**Name** | **String** | Display name of identity who created the source. | 

## Examples

- Prepare the resource
```powershell
$SourceCreatedActor = Initialize-BetaSourceCreatedActor  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20648 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$SourceCreatedActor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

