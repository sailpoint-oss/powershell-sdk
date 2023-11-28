# KbaAnswerRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Answers** | [**KbaAnswerRequestItem[]**](KbaAnswerRequestItem.md) | Kba answers | 

## Examples

- Prepare the resource
```powershell
$KbaAnswerRequest = Initialize-PSSailpointBetaKbaAnswerRequest  -Answers [{questionId&#x3D;089899f13a8f4da7824996191587bab9, answer&#x3D;Your answer}, {questionId&#x3D;067899f13a8f4da7824996191587bab9, answer&#x3D;Your answer1}]
```

- Convert the resource to JSON
```powershell
$KbaAnswerRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

