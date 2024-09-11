# KbaAuthResponseItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QuestionId** | **String** | The KBA question id | [optional] 
**IsVerified** | **Boolean** | Return true if verified | [optional] 

## Examples

- Prepare the resource
```powershell
$KbaAuthResponseItem = Initialize-Tm.V3KbaAuthResponseItem  -QuestionId 089899f13a8f4da7824996191587bab9 `
 -IsVerified true
```

- Convert the resource to JSON
```powershell
$KbaAuthResponseItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

