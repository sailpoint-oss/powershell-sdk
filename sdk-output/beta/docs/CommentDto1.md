# CommentDto1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Content of the comment | [optional] 
**Author** | [**CommentDto1Author**](CommentDto1Author.md) |  | [optional] 
**Created** | **System.DateTime** | Date and time comment was created | [optional] 

## Examples

- Prepare the resource
```powershell
$CommentDto1 = Initialize-PSSailpointBetaCommentDto1  -Comment Et quam massa maximus vivamus nisi ut urna tincidunt metus elementum erat `
 -Author null `
 -Created 2017-07-11T18:45:37.098Z
```

- Convert the resource to JSON
```powershell
$CommentDto1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

