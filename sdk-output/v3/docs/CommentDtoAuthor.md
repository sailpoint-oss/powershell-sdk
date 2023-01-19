# CommentDtoAuthor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Id** | **String** | ID of the author | [optional] 
**Name** | **String** | Human-readable display name of the identity making the comment | [optional] 

## Examples

- Prepare the resource
```powershell
$CommentDtoAuthor = Initialize-PSSailpointCommentDtoAuthor  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Adam Kennedy
```

- Convert the resource to JSON
```powershell
$CommentDtoAuthor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

