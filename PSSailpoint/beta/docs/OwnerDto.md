# OwnerDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Owner&#39;s DTO type. | [optional] 
**Id** | **String** | Owner&#39;s identity ID. | [optional] 
**Name** | **String** | Owner&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$OwnerDto = Initialize-BetaOwnerDto  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support
```

- Convert the resource to JSON
```powershell
$OwnerDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

