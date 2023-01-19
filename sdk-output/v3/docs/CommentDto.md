# CommentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Content of the comment | [optional] 
**Author** | [**CommentDtoAuthor**](CommentDtoAuthor.md) |  | [optional] 
**Created** | **System.DateTime** | Date and time comment was created | [optional] 

## Examples

- Prepare the resource
```powershell
$CommentDto = Initialize-PSSailpointCommentDto  -Comment Et quam massa maximus vivamus nisi ut urna tincidunt metus elementum erat `
 -Author null `
 -Created 2017-07-11T18:45:37.098Z
```

- Convert the resource to JSON
```powershell
$CommentDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

