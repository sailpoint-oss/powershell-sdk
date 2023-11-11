# SourceDeletedActor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of identity who deleted the source. | 
**Id** | **String** | ID of identity who deleted the source. | 
**Name** | **String** | Display name of identity who deleted the source. | 

## Examples

- Prepare the resource
```powershell
$SourceDeletedActor = Initialize-BetaSourceDeletedActor  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20648 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$SourceDeletedActor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

