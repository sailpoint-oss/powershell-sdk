# CommentDtoAuthor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object | [optional] 
**Id** | **String** | The unique ID of the object | [optional] 
**Name** | **String** | The display name of the object | [optional] 

## Examples

- Prepare the resource
```powershell
$CommentDtoAuthor = Initialize-PSSailpoint.V2024CommentDtoAuthor  -Type IDENTITY `
 -Id 2c9180847e25f377017e2ae8cae4650b `
 -Name john.doe
```

- Convert the resource to JSON
```powershell
$CommentDtoAuthor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

