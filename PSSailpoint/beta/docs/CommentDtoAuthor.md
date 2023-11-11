# CommentDtoAuthor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of the commenting identity. | [optional] 
**Id** | **String** | ID of the commenting identity. | [optional] 
**Name** | **String** | Display name of the commenting identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$CommentDtoAuthor = Initialize-BetaCommentDtoAuthor  -Type IDENTITY `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Adam Kennedy
```

- Convert the resource to JSON
```powershell
$CommentDtoAuthor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

