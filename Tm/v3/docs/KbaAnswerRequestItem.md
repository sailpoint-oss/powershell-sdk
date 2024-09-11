# KbaAnswerRequestItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Question Id | 
**Answer** | **String** | An answer for the KBA question | 

## Examples

- Prepare the resource
```powershell
$KbaAnswerRequestItem = Initialize-Tm.V3KbaAnswerRequestItem  -Id c54fee53-2d63-4fc5-9259-3e93b9994135 `
 -Answer Your answer
```

- Convert the resource to JSON
```powershell
$KbaAnswerRequestItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

