# KbaAnswerResponseItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Question Id | 
**Question** | **String** | Question description | 
**HasAnswer** | **Boolean** | Denotes whether the KBA question has an answer configured for the current user | 

## Examples

- Prepare the resource
```powershell
$KbaAnswerResponseItem = Initialize-PSSailpoint.V2024KbaAnswerResponseItem  -Id c54fee53-2d63-4fc5-9259-3e93b9994135 `
 -Question [{&quot;text&quot;:&quot;Nouvelle question MFA -1 ?&quot;,&quot;locale&quot;:&quot;fr&quot;},{&quot;text&quot;:&quot;MFA new question -1 ?&quot;,&quot;locale&quot;:&quot;&quot;}] `
 -HasAnswer true
```

- Convert the resource to JSON
```powershell
$KbaAnswerResponseItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

