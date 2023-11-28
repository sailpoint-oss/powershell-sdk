# KbaAnswerRequestItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QuestionId** | **String** | Question Id | 
**Answer** | **String** | An answer for the KBA question | 

## Examples

- Prepare the resource
```powershell
$KbaAnswerRequestItem = Initialize-PSSailpointBetaKbaAnswerRequestItem  -QuestionId 089899f13a8f4da7824996191587bab9 `
 -Answer Your answer
```

- Convert the resource to JSON
```powershell
$KbaAnswerRequestItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

