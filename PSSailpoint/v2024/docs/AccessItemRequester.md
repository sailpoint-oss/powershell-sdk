# AccessItemRequester
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Access item requester&#39;s DTO type. | [optional] 
**Id** | **String** | Access item requester&#39;s identity ID. | [optional] 
**Name** | **String** | Access item owner&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemRequester = Initialize-PSSailpoint.V2024AccessItemRequester  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20648 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$AccessItemRequester | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

