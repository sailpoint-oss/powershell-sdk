# CommentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment content. | [optional] 
**Author** | [**CommentDtoAuthor**](CommentDtoAuthor.md) |  | [optional] 
**Created** | **System.DateTime** | Date and time comment was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$CommentDto = Initialize-CommentDto  -Comment This is a comment. `
 -Author null `
 -Created 2017-07-11T18:45:37.098Z
```

- Convert the resource to JSON
```powershell
$CommentDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

